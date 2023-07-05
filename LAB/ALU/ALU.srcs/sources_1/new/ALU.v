`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/31 18:12:23
// Design Name: 
// Module Name: 123
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


module ALU #(
parameter WIDTH = 32     //数据宽度
)(
input signed [WIDTH-1:0] a, b,       //两操作数
input [2:0] f,                      //功能选择
output reg [WIDTH-1:0] y,     //运算结果
output reg [2:0] t                     //比较标志
);

always@(*)begin
    case (f)
        3'b000: begin
            y = a - b;
            if(a[WIDTH-1] == b[WIDTH - 1])begin
                if(a == b) 
                    t = 3'b001;
                else
                    t = (a>b)?3'b000:3'b110;
            end
            else 
                t = (a[WIDTH-1] > b[WIDTH-1])?3'b010:3'b100;
        end
        3'b001: begin
            y = a + b;
            t = 3'b000;
        end
        3'b010: begin
            y = a & b;
            t = 3'b000;
        end
        3'b011: begin
            y = a | b;
            t = 3'b000;
        end
        3'b100: begin
            y = a ^ b;
            t = 3'b000;
        end
        3'b101: begin
            y = a >> b[4:0];
            t = 3'b000;
        end
        3'b110: begin
            y = a << b[4:0];
            t = 3'b000;
        end
        3'b111: begin
            y = a >>> b[4:0];
            t = 3'b000;
        end 
    endcase

end

endmodule