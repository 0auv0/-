`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 21:46:52
// Design Name: 
// Module Name: Mux4
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


module Mux4 #(
    parameter WIDTH = 32
)(
    input [1:0] choice,
    input [WIDTH-1:0] in0,
    input [WIDTH-1:0] in1,
    input [WIDTH-1:0] in2,
    input [WIDTH-1:0] in3,
    output reg [WIDTH-1:0] out
);
always@(*)
    case(choice)
        2'b00:  out <= in0;
        2'b01:  out <= in1;
        2'b10:  out <= in2;
        2'b11:  out <= in3;
    endcase
endmodule
