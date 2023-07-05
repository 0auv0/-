`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/20 10:59:33
// Design Name: 
// Module Name: Branch
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


module Branch(
    input [31:0] num1,
    input [31:0] num2,
    input [1:0] op,
    output reg out
);
// wire [31:0] num1_s = $signed (num1);
// wire [31:0] num2_s = $signed (num2);
always@(*)
begin
    out = 0;
    case(op)
        2'b01:
            if(num1 == num2)   out = 1;
        2'b10:
            // if(num1_s < num2_s)     out = 1;
            if(num1[31] == num2[31])
                if(num1 < num2)     out = 1;
                else out = 0;
            else if(num1[31] > num2[31])
                out = 1;
        2'b11:
            if(num1 < num2)     out = 1;
    endcase
end
endmodule
