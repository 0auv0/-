`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/18 10:58:32
// Design Name: 
// Module Name: PC
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


module PC(
    input [31:0] ori_npc,
    input clk,
    input en,   //bubble
    input rstn,
    output [31:0] pc
);
reg [31:0] PC = 32'b0;
always @(posedge clk) begin
    if(!rstn)
        PC <= 32'b0;
    else if(en)
        PC <= ori_npc;
    else
        PC <= PC;
end
assign pc = PC;
endmodule
