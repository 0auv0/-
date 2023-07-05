`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/01 10:11:21
// Design Name: 
// Module Name: single_edge
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

module single_edge(
    input clk,
    input btn,
    output btn_edge
);
reg btn1 = 1'b0;
reg btn2 = 1'b0;
always@(posedge clk)
begin
    btn1 <= btn;
end
always@(posedge clk)
begin
    btn2 <= btn1;
end
assign btn_edge = btn1 & (~btn2);
endmodule