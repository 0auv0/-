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


module IF_ID(
    input [31:0] pc,
    input [31:0] npc,
    input [31:0] ir,
    input clk,
    input en,
    input rstn,
    output [31:0] pc_d,
    output [31:0] npc_d,
    output [31:0] ir_d
);
reg [31:0] PC = 32'b0;
reg [31:0] NPC = 32'b0;
reg [31:0] IR = 32'b0;

always@(posedge clk) begin
    if(!rstn)
    begin
        PC <= 32'b0;
        NPC <= 32'b0;
        IR <= 32'b0;
    end
    else if(!en)
    begin
        // IR <= 32'b0;
    end
    else
    begin
        PC <= pc;
        NPC <= npc;
        IR <= ir;
    end
end
assign pc_d = PC;
assign npc_d = NPC;
assign ir_d = IR;
endmodule
