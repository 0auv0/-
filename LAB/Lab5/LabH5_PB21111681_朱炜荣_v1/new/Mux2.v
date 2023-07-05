`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/17 21:45:39
// Design Name: 
// Module Name: Mux2
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


module Mux2 #(
    parameter WIDTH = 32
)(
    input choice,
    input [WIDTH-1:0] in0,
    input [WIDTH-1:0] in1,
    output [WIDTH-1:0] out
);

assign out = (choice == 0)?in0:in1;
endmodule
