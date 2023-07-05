`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/03 11:29:43
// Design Name: 
// Module Name: Control
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


module Control(
    input [31:0] instruction,
    output [11:0] signal
);
wire [6:0] op = instruction[6:0];
wire [2:0] funct3 = instruction[14:12];
wire [6:0] funct7 = instruction[31:25];

reg Branch;
reg MemRead;
reg [1:0] ToReg;
reg [2:0] ALUOp;
reg MemWrite;
reg PCSrc;
reg ALUSrc1;
reg ALUSrc2;
reg RegWrite;

assign signal = {Branch,MemRead,ToReg[1:0],ALUOp[2:0],MemWrite,PCSrc,ALUSrc1,ALUSrc2,RegWrite};

always@(*)
begin
    case (op)
        7'b0010011:begin
            case(funct3)
            3'b000:begin    //addi
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b001;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 1;
                RegWrite = 1;
            end
            3'b001:begin    //slli
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b110;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 1;
                RegWrite = 1;
            end
            3'b101:begin    //srli srai
                if(funct7 == 7'b000_0000)begin  //srli
                    Branch = 0;
                    MemRead = 0;
                    ToReg[1:0] = 2'b00;
                    ALUOp = 3'b101;
                    MemWrite = 0;
                    PCSrc = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 1;
                    RegWrite = 1;
                end
                else begin                      //srai
                    Branch = 0;
                    MemRead = 0;
                    ToReg[1:0] = 2'b00;
                    ALUOp = 3'b111;
                    MemWrite = 0;
                    PCSrc = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 1;
                    RegWrite = 1;
                end
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            endcase
        end 
        7'b0110011:begin
            case(funct3)
            3'b000:begin    //add sub
                if(funct7 == 7'b000_0000)begin  //add
                    Branch = 0;
                    MemRead = 0;
                    ToReg[1:0] = 2'b00;
                    ALUOp = 3'b001;
                    MemWrite = 0;
                    PCSrc = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 0;
                    RegWrite = 1;
                end
                else begin                      //sub
                    Branch = 0;
                    MemRead = 0;
                    ToReg[1:0] = 2'b00;
                    ALUOp = 3'b000;
                    MemWrite = 0;
                    PCSrc = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 0;
                    RegWrite = 1;
                end
            end
            3'b100:begin    //xor
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b100;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            3'b110:begin    //or
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b011;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            3'b111:begin    //and
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b010;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            endcase
        end
        7'b0110111:begin    //lui
            Branch = 0;
            MemRead = 0;
            ToReg[1:0] = 2'b10;
            ALUOp = 3'b000;
            MemWrite = 0;
            PCSrc = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b0010111:begin    //auipc
            Branch = 0;
            MemRead = 0;
            ToReg[1:0] = 2'b00;
            ALUOp = 3'b001;
            MemWrite = 0;
            PCSrc = 0;
            ALUSrc1 = 1;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1101111:begin    //jal
            Branch = 1;
            MemRead = 0;
            ToReg[1:0] = 2'b11;
            ALUOp = 3'b000;
            MemWrite = 0;
            PCSrc = 0;
            ALUSrc1 = 1;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1100111:begin    //jalr
            Branch = 1;
            MemRead = 0;
            ToReg[1:0] = 2'b11;
            ALUOp = 3'b000;
            MemWrite = 0;
            PCSrc = 1;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1100011:begin    
            case(funct3)
            3'b000:begin    //beq
                Branch = 1;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            3'b100:begin    //blt
                Branch = 1;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            3'b110:begin    //bltu
                Branch = 1;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                ToReg[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                PCSrc = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            endcase
        end
        7'b0100011:begin    //sw
            Branch = 0;
            MemRead = 0;
            ToReg[1:0] = 2'b00;
            ALUOp = 3'b001;
            MemWrite = 1;
            PCSrc = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 0;
        end
        7'b0000011:begin    //lw
            Branch = 0;
            MemRead = 1;
            ToReg[1:0] = 2'b01;
            ALUOp = 3'b001;
            MemWrite = 0;
            PCSrc = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        default:begin
            Branch = 0;
            MemRead = 0;
            ToReg[1:0] = 2'b00;
            ALUOp = 3'b000;
            MemWrite = 0;
            PCSrc = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 0;
            RegWrite = 0;
        end 
    endcase
end

endmodule
