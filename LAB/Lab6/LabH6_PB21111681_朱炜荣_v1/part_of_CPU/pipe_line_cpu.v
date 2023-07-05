`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 19:48:30
// Design Name: 
// Module Name: pipe_line_cpu
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


module pipe_line_cpu(
    // input clk,      //正常时钟
    // input rstn,     //复位信号
    // output [31:0] npc,     //IF阶段pc_reg中的npc
    // output [31:0] pc,      //IF阶段pc_reg中的pc
    // output [31:0] ir,      //ID阶段的ins_D
    // output [31:0] pcd,     //ID阶段的pc
    // output [31:0] ire,     //ID阶段的ir
    // output [31:0] imm,     //ID阶段的imm
    // output [31:0] a,       //EX阶段ALU的a
    // output [31:0] b,       //EX阶段ALU的b
    // output [31:0] y,       //EX阶段的ALU_out
    // output [31:0] pce,     //EX阶段的pc
    // output [31:0] ctre,    //EX阶段的ctre(控制信号总线)
    // output [31:0] irm,     //MEM阶段的ir
    // output [31:0] mdw,     //EX向MEM阶段传入的Rs2_data(mem_data_write)
    // output [31:0] ctrm,    //MEM阶段的ctrm(控制信号总线)
    // output [31:0] irw,     //WB阶段的ir
    // output [31:0] yw,      //WB阶段的y
    // output [31:0] mdr,     //WB阶段的mem_data_read
    // output [31:0] ctrw,    //WB阶段的ctrm(控制信号总线)
    // //ins_dbg
    // input [31:0] addr_dbg, //debug指令用的地址 
    // input [31:0] ins_dbg,  //debug输入的指令数据
    // input we_dbg,   //debug指令寄存器写使能
    // output [31:0] ins_dbg_out,     //debug指令寄存器addr处的数据 
    // //reg_dbg
    // input [31:0] reg_dbg_addr,     //debug寄存器堆用的地址
    // output [31:0] reg_dbg_out,     //debug寄存器堆addr处的数据
    // //data_dbg
    // input dbg_en,   //debug使能信号  

    // input [31:0] data_dbg_addr,    //debug数据寄存器用的地址
    // output [31:0] data_dbg_out,    //debug数据寄存器addr处的数据
    // input [31:0] data_dbg_data,    //debug写入的数据
    // input data_dbg_we,      //debug数据寄存器的写使能
    // //dbg_clk
    // input clk_ld    //debug时钟
    input clk,
    input cpu_clk,      // 控制CPU运行的时钟
    input cpu_rstn,    // 控制CPU复位的信号
    /* ***以下根据需要修改*** */
    // 用于D与R指令的调试接口
    input [31:0] dra0,            // 数据存储器的输入地址
    output [31:0] drd0,            // 数据存储器的输出
    input [4:0] rra0,            // 寄存器堆的输入地址，唯一的五位位宽
    output [31:0] rrd0,            // 寄存器堆的输出数据
    // 自由定义部分
    output [31:0] ctr_debug1,
    output [31:0] ctr_debug2,
    output [31:0] ctr_debug3,
    // IF段
    output [31:0] npc,              // 下一个pc值
    output [31:0] pc,                // IF段前pc
    output [31:0] ir,                // IF段取出的指令码
    // IF/ID段间
    output [31:0] pc_id,          // IF段递给ID段的pc
    output [31:0] ir_id,          // IF段递给ID段的ir
    // ID/EX段间
    output [31:0] pc_ex,          // ID段递给EX段的pc
    output [31:0] ir_ex,          // ID段递给EX段的ir
    output [31:0] rrd1,            // 寄存器堆输出端1
    output [31:0] rrd2,            // 寄存器堆输出端2
    output [31:0] imm,              //立即数
    // EX/MEM段间
    output [31:0] ir_mem,        // EX段递给MEM段的ir
    output [31:0] res,              // ALU output
    output [31:0] dwd,              // 要写入数据存储器的数据
    // MEM/WB段间
    output [31:0] ir_wb,          // MEM段递给WB段的ir
    output [31:0] drd,              // 数据存储器读出的数据
    output [31:0] res_wb,        // ALU的计算结果继续传递
    // WB段写回
    output [31:0] rwd,               // 需要写回到寄存器堆的数据

    // //io_bus
    // output [7:0] io_addr,
    // input [31:0] io_din,
    // output [31:0] io_dout,
    // output io_we,
    // output io_rd

    input       ok,
    input       ready,
    input       del,
    input       [15:0] x,
    output      [15:0] led,
    output      [7:0] an,
    output      [6:0] seg,
    output      [2:0] seg_sel
);

wire [31:0] ORI_NPC;
wire [31:0] four = 32'h4;
wire [31:0] PC;
wire [31:0] NPC;
wire [31:0] IR;
wire [31:0] PC_D;
wire [31:0] NPC_D;
wire [31:0] IR_D;
wire [31:0] RF_DATA1;
wire [31:0] RF_DATA2;
wire [31:0] IMM_D;
wire [13:0] signal;
wire [31:0] PC_E;
wire [31:0] NPC_E;
wire [31:0] IR_E;
wire [31:0] RF_DATA1_E;
wire [31:0] RF_DATA2_E;
wire [31:0] ALU_OUT_E;
wire [31:0] IMM_E;
wire [13:0] signal_e;
wire [4:0] signal_m;
wire [31:0] NPC_M;
wire [31:0] ALU_OUT_M;
wire [31:0] RF_DATA2_M;
wire [31:0] IR_M;
wire [2:0] signal_w;
wire [31:0] NPC_W;
// wire [31:0] RF_DATA2_W;
wire [31:0] ALU_OUT_W;
wire [31:0] DM_DATA_W;
wire [31:0] IR_W;
wire [31:0] RF_DATA1_T;
wire [31:0] RF_DATA2_T;
wire [31:0] WB;
wire [31:0] ALU_A;
wire [31:0] ALU_B;
wire [31:0] DM_DATA_M;
wire [1:0] rf_choice_1;
wire [1:0] rf_choice_2;
wire Branch_out;
wire [3:0] bubbles;
wire [2:0] clear;


wire RegWrite;
wire [1:0] WbSrc;
wire MemWrite;
wire MemRead;
wire DoJmp;
wire DoBranch;
wire ALUSrc1;
wire ALUSrc2;
wire [2:0] ALUOp;
wire [1:0] Branch; 
wire RegWrite_m;
wire [1:0] WbSrc_m;
wire MemWrite_m;
wire MemRead_m;
wire MemWrite_w;
wire [1:0] WbSrc_w;
wire ready_DM,ready_DC,valid_DC,valid_DM;
wire [1:0] state;
wire [31:0] data_exchange_in;
wire [31:0] data_exchange_out;
wire [31:0] addr_exchange_out;
wire done0;
wire [31:0] MMIO_DATA_M;
reg [31:0] DM_DATA_T;


assign signal_e = {RegWrite,WbSrc[1:0],MemWrite,MemRead,DoJmp,DoBranch,ALUSrc1,ALUSrc2,ALUOp[2:0],Branch[1:0]};


assign signal_m = {RegWrite_m, WbSrc_m[1:0], MemWrite_m, MemRead_m};
assign signal_w = {RegWrite_w, WbSrc_w[1:0]};

//PC
PC Pc(
    .ori_npc(ORI_NPC),
    .clk(cpu_clk),
    .en(bubbles[2]),
    .rstn(cpu_rstn),
    .pc(PC)
);
//数据存储器
// DM data_memory(
//     .a((MemRead_m || MemWrite_m)?((ALU_OUT_M[13:0] - 14'h2000) >> 2):32'b0),
//     .d(RF_DATA2_M),
//     .dpra(dra0),
//     .clk(cpu_clk),
//     .we(MemWrite_m),
//     .spo(DM_DATA_M),
//     .dpo(drd0)
// );
DMem2 data_memory(
    .clk(cpu_clk),
    .rstn(cpu_rstn),
    .valid_DC(valid_DC),
    .ready_DC(ready_DC),
    .din(data_exchange_out),
    .addr(addr_exchange_out),
    .state(state),
    .dout(data_exchange_in),
    .valid_DM(valid_DM),
    .ready_DM(ready_DM)
);
//数据缓存
Dcache2 data_cache(
    .clk(cpu_clk),
    .rstn(cpu_rstn),
    .we_r(MemRead_m),
    .we_w(MemWrite_m),
    .addr(ALU_OUT_M),
    .din(RF_DATA2_M),
    // .addr_exchange_in(),
    .data_exchange_in(data_exchange_in),
    .ready_DM(ready_DM),
    .valid_DM(valid_DM),
    .dout(DM_DATA_M),
    .addr_exchange_out(addr_exchange_out),
    .data_exchange_out(data_exchange_out),
    .valid_DC(valid_DC),
    .ready_DC(ready_DC),
    .signal(done0),
    .state(state),
    .debug_data({ctr_debug1,ctr_debug2})
);
//Mux_MMIO
// Mux2 mux_mmio(
//     .in0(DM_DATA_M),
//     .in1(MMIO_DATA_M),
//     .choice((ALU_OUT_M >= 32'h7f00)?1:0),
//     .out(DM_DATA_T)
// );
always @(*)begin
    if(ALU_OUT_M >= 32'h7f00 && MemRead_m)begin
        DM_DATA_T = MMIO_DATA_M;
    end
    else if(MemRead_m)begin
        DM_DATA_T = DM_DATA_M;
    end
    else 
        DM_DATA_T = 32'h12345678;

end
//IOU BUS
IOU iou(
    .clk(cpu_clk),
    .rstn(cpu_rstn),
    .clk0(clk),
    // .we_r(MemRead_m),
    // .we_w(MemWrite_m),
    // .addr(ALU_OUT_M),
    // .out_data(RF_DATA2_M),
    // .back_data(MMIO_DATA_M),

    .io_addr(ALU_OUT_M),
    .io_din(MMIO_DATA_M),
    .io_dout(RF_DATA2_M),
    .io_we(MemWrite_m),
    .io_rd(MemRead_m),

    .ok(ok),
    .ready(ready),
    .del(del),
    .x(x),
    .led(led),
    .an(an),
    .seg(seg),
    .seg_sel(seg_sel)

);


//指令存储器
IM ins_memory(
    .a(5'b0),
    .d(5'b0),
    .dpra(PC>>2),
    .clk(cpu_clk),
    .we(0),
    .spo(uesless),
    .dpo(IR)
);
//寄存器堆
register_file Rf(
    .clk(cpu_clk),
    .ra1((IR_D[6:0] == 7'b0110111)?5'b0:IR_D[19:15]),
    .ra2(IR_D[24:20]),
    .ra_debug(rra0),
    .rd1(RF_DATA1),
    .rd2(RF_DATA2),
    .rd_debug(rrd0),
    .wa(IR_W[11:7]),
    .wd(WB),
    .we(RegWrite_w)
);
//立即数生成
ImmGen Imm(
    .instruction(IR_D),
    .imm(IMM_D)
);
//控制信号生成
Control ctrl(
    .instruction(IR_D),
    .signal(signal)
);
//ALU
ALU alu(
    .a(ALU_A),
    .b(ALU_B),
    .f(ALUOp),
    .y(ALU_OUT_E),
    .t(t1)
);
//Branch
Branch branch(
    .num1(RF_DATA1_T),
    .num2(RF_DATA2_T),
    .op(Branch),
    .out(Branch_out)
);
//PC_Adder
ALU pc_adder(
    .a(PC),
    .b(four),
    .f(3'b001),
    .y(NPC),
    .t(t0)
);
//IF_ID
IF_ID if_id(
    .pc(PC),
    .npc(NPC),
    .ir(IR),
    .clk(cpu_clk),
    .en(bubbles[1]),
    .rstn(cpu_rstn & clear[2]),
    .pc_d(PC_D),
    .npc_d(NPC_D),
    .ir_d(IR_D)
);
//ID_EX
ID_EX id_ex(
    .signal(signal),
    .pc_d(PC_D),
    .npc_d(NPC_D),
    .rf_data1(RF_DATA1),
    .rf_data2(RF_DATA2),
    .ir_d(IR_D),
    .imm_d(IMM_D),
    .clk(cpu_clk),
    .en(bubbles[0]),
    .rstn(cpu_rstn & clear[1]),
    .signal_e({RegWrite,WbSrc[1:0],MemWrite,MemRead,DoJmp,DoBranch,ALUSrc1,ALUSrc2,ALUOp[2:0],Branch[1:0]}),
    .pc_e(PC_E),
    .npc_e(NPC_E),
    .rf_data1_e(RF_DATA1_E),
    .rf_data2_e(RF_DATA2_E),
    .ir_e(IR_E),
    .imm_e(IMM_E)
);
//EX_MEM
EX_MEM ex_mem(
    .signal_e({RegWrite, WbSrc[1:0], MemWrite,MemRead}),
    .npc_e(NPC_E),
    .alu_out_e(ALU_OUT_E),
    .rf_data2_e(RF_DATA2_T),
    .ir_e(IR_E),
    .clk(cpu_clk),
    .en(bubbles[3]),
    .rstn(cpu_rstn & clear[0]),
    .signal_m({RegWrite_m, WbSrc_m[1:0], MemWrite_m, MemRead_m}),
    .npc_m(NPC_M),
    .alu_out_m(ALU_OUT_M),
    .rf_data2_m(RF_DATA2_M),
    .ir_m(IR_M)
);
//MEM_WB
MEM_WB mem_wb(
    .signal_m({RegWrite_m, WbSrc_m[1:0]}),
    .npc_m(NPC_M),
    .dm_data_m(DM_DATA_T),
    // .rf_data2_m(RF_DATA2_M),
    .alu_out_m(ALU_OUT_M),
    .ir_m(IR_M),
    .clk(cpu_clk),
    .en(bubbles[3]),
    .rstn(cpu_rstn),
    .signal_w({RegWrite_w, WbSrc_w[1:0]}),
    .npc_w(NPC_W),
    .dm_data_w(DM_DATA_W),
    // .rf_data2_w(RF_DATA2_W),
    .alu_out_w(ALU_OUT_W),
    .ir_w(IR_W)
);
//Mux_pc
Mux2 mux_pc(
    .choice((Branch_out & DoBranch) | DoJmp),
    .in0(NPC),
    .in1(ALU_OUT_E),
    .out(ORI_NPC)
);
//Mux_rf1
Mux4 mux_rf1(
    .choice(rf_choice_1),
    .in0(RF_DATA1_E),
    .in1(ALU_OUT_M),
    .in2(WB),
    .in3(32'b0),
    .out(RF_DATA1_T)
);
//Mux_rf2
Mux4 mux_rf2(
    .choice(rf_choice_2),
    .in0(RF_DATA2_E),
    .in1(ALU_OUT_M),
    .in2(WB),
    .in3(32'b0),
    .out(RF_DATA2_T)
);
//Mux_a
Mux2 mux_a(
    .choice(ALUSrc1),
    .in0(RF_DATA1_T),
    .in1(PC_E),
    .out(ALU_A)
);
//Mux_b
Mux2 mux_b(
    .choice(ALUSrc2),
    .in0(RF_DATA2_T),
    .in1(IMM_E),
    .out(ALU_B)
);
//Mux_wb
Mux4 mux_wb(
    .choice(WbSrc_w),
    .in0(ALU_OUT_W),
    .in1(DM_DATA_W),
    .in2(NPC_W),
    .in3(32'b0),
    .out(WB)
);
//Forwarding_Unit
Forward_Unit fu(
    .ir_w(IR_W),
    .ir_m(IR_M),
    .ir_e(IR_E),
    .we_w(RegWrite_w),
    .we_m(RegWrite_m),
    .rf_choice_1(rf_choice_1),
    .rf_choice_2(rf_choice_2)
);
//Hazard_Unit
Hazard_Unit hu(
    .we_w(RegWrite_w),
    .we_m(RegWrite_m),
    .ir_e(IR_E),
    .ir_d(IR_D),
    .done(done0),
    .judge((Branch_out & DoBranch) | DoJmp),
    .bubbles(bubbles),
    .clear(clear)
);

    // 自由定义部分
// assign ctr_debug1 = {DM_DATA_M};
// assign ctr_debug2 = {ALU_OUT_W};
assign ctr_debug3 = DM_DATA_M;
    // IF段
assign npc = NPC;              // 下一个pc值
assign pc = PC;                // IF段前pc
assign ir = IR;                // IF段取出的指令码
    // IF/ID段间
assign pc_id = PC_D;          // IF段递给ID段的pc
assign ir_id = IR_D;          // IF段递给ID段的ir
    // ID/EX段间
assign pc_ex = PC_E;          // ID段递给EX段的pc
assign ir_ex = IR_E;          // ID段递给EX段的ir
assign rrd1 = RF_DATA1_T;            // 寄存器堆输出端1
assign rrd2 = RF_DATA2_T;            // 寄存器堆输出端2
assign imm = IMM_D;              //立即数
    // EX/MEM段间
assign ir_mem = IR_M;        // EX段递给MEM段的ir
assign res = ALU_OUT_E;              // ALU output
assign dwd = RF_DATA2_M;             // 要写入数据存储器的数据
    // MEM/WB段间
assign ir_wb = IR_W;          // MEM段递给WB段的ir
assign drd = DM_DATA_T;              // 数据存储器读出的数据
assign res_wb = ALU_OUT_M;        // ALU的计算结果继续传递
    // WB段写回
assign rwd = WB;               // 需要写回到寄存器堆的数据




endmodule
