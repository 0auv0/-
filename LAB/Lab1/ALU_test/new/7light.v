`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/05 18:45:14
// Design Name: 
// Module Name: 7light
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


module light7(
    input [15:0] in,
    output reg [7:0] out
    );
always@(*)begin
     case (in)
    4'h0 : out = 8'hc0; //显示"
    4'h1 : out = 8'hf9; //显示"1"
     4'h2 : out = 8'ha4; //显示"2"
     4'h3 : out = 8'hb0; //显示"3"
     4'h4 : out = 8'h99; //显示"4"
     4'h5 : out = 8'h92; //显示"5"
     4'h6 : out = 8'h82; //显示"6"
     4'h7 : out = 8'hf8; //显示"7"
     4'h8 : out = 8'h80; //显示"8"
     4'h9 : out = 8'h90; //显示"9"
     4'ha : out = 8'h88; //显示"a"
     4'hb : out = 8'h83; //显示"b"
     4'hc : out = 8'hc6; //显示"c"
     4'hd : out = 8'ha1; //显示"d"
     4'he : out = 8'h86; //显示"e"
     4'hf : out = 8'h8e; //显示"f"
    endcase
end
endmodule
