`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/18 10:42:54
// Design Name: 
// Module Name: MEM_WB
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


module ID_EX(
    input [13:0] signal,   
    input [31:0] pc_d,
    input [31:0] npc_d,
    input [31:0] rf_data1,
    input [31:0] rf_data2,
    input [31:0] ir_d,
    input [31:0] imm_d,
    input clk,
    input en,
    input rstn,
    output [13:0] signal_e,
    output [31:0] pc_e,
    output [31:0] npc_e,
    output [31:0] rf_data1_e,
    output [31:0] rf_data2_e,
    output [31:0] imm_e,
    output [31:0] ir_e
);
reg [31:0] PC_D = 32'b0;
reg [31:0] NPC_D = 32'b0;
reg [31:0] IR_D = 32'b0;
reg [31:0] RF_D1 = 32'b0;
reg [31:0] RF_D2 = 32'b0;
reg [31:0] IMM_D = 32'b0;
reg [13:0] SIGNAL = 14'b0;  //初始定义有待修改
//还未定义有关signal

always@(posedge clk) begin
    if(!rstn)
    begin
        PC_D <= 32'b0;
        NPC_D <= 32'b0;
        IR_D <= 32'b0;
        RF_D1 <= 32'b0;
        RF_D2 <= 32'b0;
        IMM_D <= 32'b0;
        SIGNAL <= 14'b0;
    end
    else if(!en)
    begin
        // IR_D <= 32'b0;
    end
    else
    begin
        PC_D <= pc_d;
        NPC_D <= npc_d;
        IR_D <= ir_d;
        RF_D1 <= rf_data1;
        RF_D2 <= rf_data2;
        IMM_D <= imm_d;
        SIGNAL <= signal;
    end
end
assign pc_e = PC_D;
assign npc_e = NPC_D;
assign ir_e = IR_D;
assign rf_data1_e = RF_D1;
assign rf_data2_e = RF_D2;
assign imm_e = IMM_D;
assign signal_e = SIGNAL;
endmodule
