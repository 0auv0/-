`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/10 21:08:30
// Design Name: 
// Module Name: top_module
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


module top_module(
    input clk,		//时钟
    input rstn,		//复位
    input rxd,		//串行输入数据，FPGA C4引脚
    output txd,		//串行输出数据，FPGA D4引脚  
    input run,		//启动排序
    output done,		//排序结束标志
    output [15:0]  cycles	//排序耗费时钟周期数
);
wire [31:0] addr,dout,din;
wire we,clk_ld;

filter clear1(
    .clk(clk),
    .button(rstn),
    .button_clean(rstn_clear)
);
filter clear2(
    .clk(clk),
    .button(run),
    .button_clean(run1));    //去除按钮毛刺
single_edge btn2(
    .clk(clk),
    .btn(run1),
    .btn_edge(run_clear)
);

SRT sort(
    .clk(clk), 		//时钟
    .rstn(rstn_clear), 		//复位
    .run(run_clear),		//启动排序
    .done(done),		//排序结束标志
    .cycles(cycles),	//排序耗费时钟周期数
    // SDU_DM接口
    .addr(addr),	//读/写地址
    .dout(dout),	//读取数据
    .din(din),	//写入数据
    .we(we),		//写使能
    .clk_ld(clk_ld)		//写时钟
);

sdu_dm SDU(
    .clk(clk),		//时钟
    .rstn(rstn_clear),		//复位
    .rxd(rxd),		//串行输入数据，FPGA C4引脚
    .txd(txd),		//串行输出数据，FPGA D4引脚
    .addr(addr),	//读/写地址
    .dout(dout),	//读取数据
    .din(din),	//写入数据
    .we(we),		//写使能
    .clk_ld(clk_ld)	//写时钟
);


endmodule
