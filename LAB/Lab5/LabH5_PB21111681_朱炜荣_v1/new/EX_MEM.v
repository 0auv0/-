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


module EX_MEM(
    input [4:0] signal_e,
    input [31:0] npc_e,
    input [31:0] alu_out_e,
    input [31:0] rf_data2_e,
    input [31:0] ir_e,
    input clk,
    input rstn,
    output [4:0] signal_m,
    output [31:0] npc_m,
    output [31:0] alu_out_m,
    output [31:0] rf_data2_m,
    output [31:0] ir_m
);
reg [31:0] NPC_E = 32'b0;
reg [31:0] IR_E = 32'b0;
reg [31:0] ALU_OUT_E = 32'b0;
reg [31:0] RF_D2_E = 32'b0;
reg [4:0] SIGNAL_E = 5'b0;  //初始定义有待修改
//还未定义有关signal

always@(posedge clk) begin
    if(!rstn)
    begin
        NPC_E <= 32'b0;
        IR_E <= 32'b0;
        ALU_OUT_E <= 32'b0;
        RF_D2_E <= 32'b0;
        SIGNAL_E <= 5'b0;
    end
    else
    begin
        NPC_E <= npc_e;
        IR_E <= ir_e;
        ALU_OUT_E <= alu_out_e;
        RF_D2_E <= rf_data2_e;
        SIGNAL_E <= signal_e;
    end
end
assign npc_m = NPC_E;
assign ir_m = IR_E;
assign rf_data2_m = RF_D2_E;
assign alu_out_m = ALU_OUT_E;
assign signal_m = SIGNAL_E;

endmodule
