`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/02 18:52:14
// Design Name: 
// Module Name: cpu_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cpu_top(
    input clk,
    input rstn,
    input [31:0] addr,
    input [31:0] din,
    input we_dm,
    input we_im,
    input clk_ld,
    input debug,

    output [31:0] npc,
    output [31:0] pc,
    // output [31:0] pc_chk,
    output [31:0] IR,
    output [31:0] CTL,
    output [31:0] A,
    output [31:0] B,
    output [31:0] IMM,
    output [31:0] Y,
    output [31:0] MDR,

    output [31:0] dout_rf,
    output [31:0] dout_dm,
    output [31:0] dout_im
    // output [15:0] times,
    // output signal
);

reg clk_work;   //起作用的时钟
reg din_work;   //起作用的输入
// reg we_im_work; //起作用的im写入信号
reg we_dm_work; //起作用的dm写入信号
reg [31:0] rf_add1_work;
reg [31:0] dm_add1_work;

reg [31:0] PC = 32'h0000_0000;
wire [31:0] NPC;
wire [31:0] PC_c;
wire [31:0] ori_npc;
wire [31:0] new_npc;
wire [31:0] Instruction;
wire [31:0] rf_data1;
wire [31:0] rf_data2;
wire [31:0] immediate;
wire [31:0] alu_data1;
wire [31:0] alu_data2;
wire [31:0] alu_out;
wire [31:0] dm_out;
reg [31:0] data_wb;
reg [31:0] data_mmio;
reg [15:0] cycles = 16'b0;
wire singal;

wire Branch;
wire MemRead;
wire [1:0] ToReg;
wire [2:0] ALUOp;
wire MemWrite;
wire ALUSrc1;
wire ALUSrc2;
wire PCSrc;
wire RegWrite;
wire [2:0] index_zero;
reg zero;

//传参区
// assign times = cycles;
assign pc = PC;
assign npc = NPC;
assign IR = Instruction;
assign CTL = {Branch,MemRead,ToReg[1:0],ALUOp[2:0],MemWrite,PCSrc,ALUSrc1,ALUSrc2,RegWrite};
assign A = alu_data1;
assign B = alu_data2;
assign IMM = immediate;
assign Y = alu_out;
assign MDR =  ((alu_out == 32'h0000_3f20 && Instruction[6:0] == 7'b0000011) || ( alu_out == 32'h0000_3f00 && Instruction[6:0] == 7'b0100011))?data_mmio:dm_out;
assign dout_rf = rf_data1;
// assign signal = (PC <= 32'h0000_01d4 && PC >= 32'h0000_01c0)?1:0;
assign signal = (PC == NPC);
//PC
always@(posedge clk_work)
begin
    PC <= NPC;
    if(rstn == 1)
    begin
        if(!signal)
            cycles <= cycles + 1;
        else    
            cycles <= cycles;
    end
    else
    begin
        cycles <= 0;
    end
end
//PC_Mux1
Mux pc_mux1(
    .choice(PCSrc),
    .in0(PC),
    .in1(rf_data1&32'hffff_fffe),
    .out(PC_c)
);
//PC自增
ALU pc_adder1(
    .a(PC),
    .b(32'h4),
    .f(3'b001),
    .y(ori_npc),
    .t(t0)
);
//跳转与分支
ALU pc_adder2(
    .a(PC_c),
    .b(immediate),
    .f(3'b001),
    .y(new_npc),
    .t(t1)
);
//PC_Mux2
Mux pc_mux2(
    .choice(Branch & zero),
    .in0(ori_npc),
    .in1(new_npc),
    .out(NPC)
);
//ImmGen
ImmGen immgen(
    .instruction(Instruction),
    .imm(immediate)
);
//指令存储器
text_memory IM(
    .a(addr),
    .d(din),
    .dpra(PC[11:2]),
    .clk(clk_work),
    .we(we_im),
    .spo(dout_im),
    .dpo(Instruction)
);
//数据存储器
data_memory DM(
    .a(dm_add1_work),
    .d(rf_data2),
    .dpra((MemRead==1)?((alu_out[13:0] >= 14'h2200 || alu_out[13:0] <14'h2000)?10'b0:((alu_out[13:0] - 14'h2000) >> 2)):10'b0),
    .clk(clk_work),
    .we(we_dm_work),
    .spo(dout_dm),
    .dpo(dm_out)
);
//寄存器堆
register_file rf(
    .clk(clk_work),
    .ra1(rf_add1_work),
    .ra2(Instruction[24:20]),
    .rd1(rf_data1),
    .rd2(rf_data2),
    .wa(Instruction[11:7]),
    .wd(data_wb),
    .we(RegWrite)
);
//控制信号
Control ctrl(
    .instruction(Instruction),
    .signal({Branch,MemRead,ToReg[1:0],ALUOp[2:0],MemWrite,PCSrc,ALUSrc1,ALUSrc2,RegWrite})
);
//ALU_Mux1
Mux alu_mux1(
    .choice(ALUSrc1),
    .in0(rf_data1),
    .in1(PC),
    .out(alu_data1)
);
//ALU_Mux2
Mux alu_mux2(
    .choice(ALUSrc2),
    .in0(rf_data2),
    .in1(immediate),
    .out(alu_data2)
);
//ALU
ALU alu(
    .a(alu_data1),
    .b(alu_data2),
    .f(ALUOp),
    .y(alu_out),
    .t(index_zero)
);
//Data_Mux
// Mux data_mux(
//     .choice(MemtoReg),
//     .in0(alu_out),
//     .in1(dm_out),
//     .out(data_wb)
// );
always@(*)
begin
    case(ToReg)
    2'b00:  data_wb = alu_out;
    2'b01:  data_wb = (alu_out == 32'h0000_3f20 && Instruction[6:0] == 7'b0000011)?data_mmio:dm_out;
    2'b10:  data_wb = immediate;
    2'b11:  data_wb = ori_npc;
    endcase
end


always @(*)
begin
    if(debug == 0)
    begin
        clk_work = clk;
        we_dm_work = MemWrite;
        rf_add1_work = Instruction[19:15];
        dm_add1_work = (MemRead==1 || MemWrite==1)?((alu_out[13:0] - 14'h2000) >> 2):10'b0;
    end
    else
    begin
        clk_work = clk_ld;
        we_dm_work = we_dm;
        rf_add1_work = addr;
        dm_add1_work = (addr - 14'h2000);
    end

end

// assign zero = (index_zero == 3'b000)?0:1;
always@(*)
begin
    if( Instruction[6:0] == 7'b1101111 ||
        Instruction[6:0] == 7'b1100111 ||
        Instruction[6:0] == 7'b1100011 && Instruction[14:12] == 3'b000 && index_zero == 3'b001 ||
        Instruction[6:0] == 7'b1100011 && Instruction[14:12] == 3'b100 && index_zero[1] == 1 ||
        Instruction[6:0] == 7'b1100011 && Instruction[14:12] == 3'b110 && index_zero[2] == 1 
        )
        zero = 1;
    else
        zero = 0;
end

always@(*)
begin
    if(alu_out == 32'h0000_3f20 && Instruction[6:0] == 7'b0000011)
        data_mmio = cycles;
    else if(alu_out == 32'h0000_3f00 && Instruction[6:0] == 7'b0100011)
        data_mmio = rf_data2;
    else 
        data_mmio = 32'b0;
end
endmodule
