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


module Forward_Unit(
    input [31:0] ir_w,
    input [31:0] ir_m,
    input [31:0] ir_e,
    input we_w,
    input we_m,
    output reg [1:0] rf_choice_1,
    output reg [1:0] rf_choice_2
);
// wire [6:0] op_w;
// wire [6:0] op_m;
wire [6:0] op_e = ir_e[6:0];
wire [4:0] rd_w = ir_w[11:7];
wire [4:0] rd_m = ir_m[11:7];
// wire [4:0] rs1_m = ir_m[19:15];
// wire [4:0] rs2_m = ir_m[24:20];
wire [4:0] rs1_e = ir_e[19:15];
wire [4:0] rs2_e = ir_e[24:20];
always@(*)
begin
    rf_choice_1 = 2'b0;
    rf_choice_2 = 2'b0;
    case(op_e)
        7'b0010011:begin    //addi
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;
        end
        7'b1100111:begin    //jalr
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;          
        end
        7'b0000011:begin    //lw
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;
        end
        7'b1100011:begin    //beq
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_w == rs2_e && we_w != 0)   rf_choice_2 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;
            if(rd_m == rs2_e && we_m != 0)   rf_choice_2 = 2'b01;
        end

        7'b0110011:begin    //add
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_w == rs2_e && we_w != 0)   rf_choice_2 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;
            if(rd_m == rs2_e && we_m != 0)   rf_choice_2 = 2'b01;
        end

        7'b0100011:  begin  //sw
            if(rd_w == rs1_e && we_w != 0)   rf_choice_1 = 2'b10;
            if(rd_w == rs2_e && we_w != 0)   rf_choice_2 = 2'b10;
            if(rd_m == rs1_e && we_m != 0)   rf_choice_1 = 2'b01;
            if(rd_m == rs2_e && we_m != 0)   rf_choice_2 = 2'b01;
        end
    endcase
end
endmodule
