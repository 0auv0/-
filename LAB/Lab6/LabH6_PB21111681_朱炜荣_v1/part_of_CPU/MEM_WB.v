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


module MEM_WB(
    input [2:0] signal_m,
    input [31:0] npc_m,
    input [31:0] dm_data_m,
    // input [31:0] rf_data2_m,
    input [31:0] alu_out_m,
    input [31:0] ir_m,
    input clk,
    input en,
    input rstn,
    output [2:0] signal_w,
    output [31:0] npc_w,
    output [31:0] dm_data_w,
    // output [31:0] rf_data2_w,
    output [31:0] alu_out_w,
    output [31:0] ir_w
);
reg [2:0] SIGNAL_M = 3'b0;
reg [31:0] NPC_M = 32'b0;
reg [31:0] DM_DATA_M = 32'b0;
reg [31:0] ALU_OUT_M = 32'b0;
reg [31:0] IR_M = 32'b0;
always@(posedge clk)begin
if(!rstn)
    begin
        NPC_M <= 32'b0;
        IR_M <= 32'b0;
        DM_DATA_M <= 32'b0;
        ALU_OUT_M <= 32'b0;
        SIGNAL_M <= 3'b0;
    end
    else if(!en)begin

    end
    else begin
        NPC_M <= npc_m;
        IR_M <= ir_m;
        DM_DATA_M <= dm_data_m;
        ALU_OUT_M <= alu_out_m;
        SIGNAL_M <= signal_m;
    end
end
assign npc_w = NPC_M;
assign ir_w = IR_M;
assign alu_out_w = ALU_OUT_M;
assign dm_data_w = DM_DATA_M;
assign signal_w = SIGNAL_M;

endmodule
