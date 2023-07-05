`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/18 17:36:24
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
    output [13:0] signal
);
wire [6:0] op = instruction[6:0];
wire [2:0] funct3 = instruction[14:12];
wire [6:0] funct7 = instruction[31:25];

reg RegWrite;
reg [1:0] WbSrc;
reg MemWrite;
reg MemRead;
// reg [3:0] Mem;
reg DoJmp;
reg DoBranch;
reg ALUSrc1;
reg ALUSrc2;
reg [2:0] ALUOp;
reg [1:0] Branch; 

assign signal = {RegWrite,WbSrc[1:0],MemWrite,MemRead,DoJmp,DoBranch,ALUSrc1,ALUSrc2,ALUOp[2:0],Branch[1:0]};
// assign signal = {Branch,MemRead,WbSrc[1:0],ALUOp[2:0],MemWrite,//PCSrc,ALUSrc1,ALUSrc2,RegWrite};

always@(*)
begin
    case (op)
        7'b0010011:begin
            case(funct3)
            3'b000:begin    //addi
                Branch = 2'b00;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b001;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 1;
                RegWrite = 1;
            end
            3'b001:begin    //slli
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b110;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 1;
                RegWrite = 1;
            end
            3'b101:begin    //srli srai
                if(funct7 == 7'b000_0000)begin  //srli
                    Branch = 0;
                    MemRead = 0;
                    WbSrc[1:0] = 2'b00;
                    ALUOp = 3'b101;
                    MemWrite = 0;
                    //PCSrc = 0;
                    DoJmp = 0;
                    DoBranch = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 1;
                    RegWrite = 1;
                end
                else begin                      //srai
                    Branch = 0;
                    MemRead = 0;
                    WbSrc[1:0] = 2'b00;
                    ALUOp = 3'b111;
                    MemWrite = 0;
                    //PCSrc = 0;
                    DoJmp = 0;
                    DoBranch = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 1;
                    RegWrite = 1;
                end
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
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
                    WbSrc[1:0] = 2'b00;
                    ALUOp = 3'b001;
                    MemWrite = 0;
                    //PCSrc = 0;
                    DoJmp = 0;
                    DoBranch = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 0;
                    RegWrite = 1;
                end
                else begin                      //sub
                    Branch = 0;
                    MemRead = 0;
                    WbSrc[1:0] = 2'b00;
                    ALUOp = 3'b000;
                    MemWrite = 0;
                    //PCSrc = 0;
                    DoJmp = 0;
                    DoBranch = 0;
                    ALUSrc1 = 0;
                    ALUSrc2 = 0;
                    RegWrite = 1;
                end
            end
            3'b100:begin    //xor
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b100;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            3'b110:begin    //or
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b011;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            3'b111:begin    //and
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b010;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 1;
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            endcase
        end
        7'b0110111:begin    //lui
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b00;
            ALUOp = 3'b001;
            MemWrite = 0;
            //PCSrc = 0;
            DoJmp = 0;
            DoBranch = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b0010111:begin    //auipc
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b00;
            ALUOp = 3'b001;
            MemWrite = 0;
            //PCSrc = 0;
            DoJmp = 0;
            DoBranch = 0;
            ALUSrc1 = 1;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1101111:begin    //jal
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b10;
            ALUOp = 3'b001;
            MemWrite = 0;
            //PCSrc = 0;
            DoJmp = 1;
            DoBranch = 0;
            ALUSrc1 = 1;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1100111:begin    //jalr
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b10;
            ALUOp = 3'b001;
            MemWrite = 0;
            //PCSrc = 1;
            DoJmp = 1;
            DoBranch = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        7'b1100011:begin    
            case(funct3)
            3'b000:begin    //beq
                Branch = 2'b01;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b001;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 1;
                ALUSrc1 = 1;
                ALUSrc2 = 1;
                RegWrite = 0;
            end
            3'b100:begin    //blt
                Branch = 2'b10;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b001;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 1;
                ALUSrc1 = 1;
                ALUSrc2 = 1;
                RegWrite = 0;
            end
            3'b110:begin    //bltu
                Branch = 2'b11;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b001;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 1;
                ALUSrc1 = 1;
                ALUSrc2 = 1;
                RegWrite = 0;
            end
            default:begin
                Branch = 0;
                MemRead = 0;
                WbSrc[1:0] = 2'b00;
                ALUOp = 3'b000;
                MemWrite = 0;
                //PCSrc = 0;
                DoJmp = 0;
                DoBranch = 0;
                ALUSrc1 = 0;
                ALUSrc2 = 0;
                RegWrite = 0;
            end
            endcase
        end
        7'b0100011:begin    //sw
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b00;
            ALUOp = 3'b001;
            MemWrite = 1;
            //PCSrc = 0;
            DoJmp = 0;
            DoBranch = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 0;
        end
        7'b0000011:begin    //lw
            Branch = 0;
            MemRead = 1;
            WbSrc[1:0] = 2'b01;
            ALUOp = 3'b001;
            MemWrite = 0;
            //PCSrc = 0;
            DoJmp = 0;
            DoBranch = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 1;
            RegWrite = 1;
        end
        default:begin
            Branch = 0;
            MemRead = 0;
            WbSrc[1:0] = 2'b00;
            ALUOp = 3'b000;
            MemWrite = 0;
            //PCSrc = 0;
            DoJmp = 0;
            DoBranch = 0;
            ALUSrc1 = 0;
            ALUSrc2 = 0;
            RegWrite = 0;
        end 
    endcase

    

end

endmodule
