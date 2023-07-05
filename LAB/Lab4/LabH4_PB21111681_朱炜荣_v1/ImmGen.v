`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/03 19:58:53
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input [31:0] instruction,
    output reg [31:0] imm
);
wire [6:0] op;
wire [2:0] funct3;
// wire [31:25] funct7;
assign op = instruction[6:0];
assign funct3 = instruction[14:12];
always@(*)
begin
    if(op == 7'b0010011 || op == 7'b0000011 || op == 7'b1100111)//addi jalr lw
        imm = (instruction[31] == 0)?{20'b0,instruction[31:20]}:
                                    {20'b1111_1111_1111_1111_1111,instruction[31:20]};
    else if(op == 7'b0110111 || op == 7'b0010111)               //lui auipc
        imm = {instruction[31:12],12'b0};
    else if(op == 7'b0110011)                                   //slli srli srai
        imm = {27'b0,instruction[24:20]};
    else if(op == 7'b1101111)                                   //jal
        imm = (instruction[31] == 0)?{11'b0,instruction[31],instruction[19:12],instruction[20],instruction[30:21],1'b0}:
                                    {11'b1111_1111_111,instruction[31],instruction[19:12],instruction[20],instruction[30:21],1'b0};
    else if(op == 7'b0100011)                                   //sw
        imm = (instruction[31] == 0)?{20'b0,instruction[31:25],instruction[11:7]}:
                                    {20'b1111_1111_1111_1111_1111,instruction[31:25],instruction[11:7]};
    else if(op == 7'b1100011)                                   //beq blt bltu
        imm = (instruction[31] == 0)?{19'b0,instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0}:
                                    {19'b1111_1111_1111_1111_111,instruction[31],instruction[7],instruction[30:25],instruction[11:8],1'b0};
    else
        imm = instruction;
end
endmodule
