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


module Hazard_Unit(
    input we_w,
    input we_m,
    input done,
    input [31:0] ir_e,
    input [31:0] ir_d,
    input judge,
    output reg [3:0] bubbles,
    output reg [2:0] clear
);
wire [6:0] op_e = ir_e[6:0];
wire [6:0] op_d = ir_d[6:0];
wire [4:0] rd_e = ir_e[11:7];
wire [4:0] rs1_d = ir_d[19:15];
wire [4:0] rs2_d = ir_d[24:20];


always@(*)begin
    bubbles = 4'b1111;
    clear = 3'b111;
    if(op_e == 7'b0000011)begin     //lw
        if(op_d == 7'b0010011 || op_d == 7'b000011)begin    //addi lw
            if(rd_e == rs1_d)begin
                bubbles = 4'b1001;
                clear = 3'b101;
            end
        end
        else if(op_d == 7'b1100011 || op_d == 7'b0110011 || op_d == 0100011)begin    //beq sw add 
            if(rd_e == rs1_d || rd_e == rs2_d)begin
                bubbles = 4'b1001;
                clear = 3'b101;
            end
        end
    end
    if(op_e == 7'b1100011)begin     //beq
        if(judge)begin
            bubbles = 4'b1111;
            clear = 3'b001;
        end
    end
    if(op_e == 7'b1100111 || op_e == 7'b1101111)begin
        if(judge)begin
            bubbles = 4'b1111;
            clear = 3'b001;
        end
    end
    if(!done)begin
        bubbles = 4'b0000;
        clear = 3'b111;
    end
end


endmodule
