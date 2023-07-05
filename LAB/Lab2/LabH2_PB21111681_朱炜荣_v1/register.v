`timescale 1ns / 1ps

module  register_file (
    input  clk,		//时钟
    input [4:0]  ra1, ra2,	//读地址
    input [4:0] ra_debug,
    output [31:0]  rd1, rd2,	//读数据
    output [31:0] rd_debug,
    input [4:0]  wa,		//写地址
    input [31:0]  wd,	//写数据
    input we		//写使能

);
reg [31:0] rf [0: 31]; 	//寄存器堆

assign rd1 = (wa == ra1)?(wa == 0)?32'b0:wd:rf[ra1]; 	//读操作
assign rd2 = (wa == ra2)?(wa == 0)?32'b0:wd:rf[ra2];
assign rd_debug = rf[ra_debug];

always  @(posedge  clk)
begin
    if (we) begin
        if(wa != 0)  
            rf[wa]  <=  wd;   //写操作
        else
            rf[0] <= 32'b0;
    end
    else
        rf[0] <= 32'b0;
end
endmodule
