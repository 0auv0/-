`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/29 20:21:46
// Design Name: 
// Module Name: MAV
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


module MAV(
    input  clk,     //时钟
    input  rstn,    //复位信号
    input  en,      //有效信号
    input  [15:0]  d,   //输入数据
    output [15:0] m    //输出数据

);
parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
parameter S5 = 3'b101;
parameter S6 = 3'b110;
parameter S7 = 3'b111;


reg [2:0] current_state = S0;
reg [2:0] next_state = S0;
reg [63:0] index = 64'b0;
wire [31:0] out,out1,out2,out3;
wire [31:0] two = 32'b0000_0000_0000_0000_0000_0000_0000_0010;
reg [15:0] m0;
wire [2:0] t1,t2,t3,t4;
wire rstn_clear,en1,en_clear;

ALU #(32) alu_add1(.a({16'b0,index[63:48]}),.b({16'b0,index[47:32]}),.f(3'b001),.y(out1),.t(t1));
ALU #(32) alu_add2(.a({16'b0,index[31:16]}),.b({16'b0,index[15:0]}),.f(3'b001),.y(out2),.t(t2));
ALU #(32) alu_add3(.a(out1),.b(out2),.f(3'b001),.y(out3),.t(t3));
ALU #(32) alu_div(.a(out3),.b(two),.f(3'b101),.y(out),.t(t4));

filter clear1(.clk(clk),.button(rstn),.button_clean(rstn_clear));
// single_edge btn1(.clk(clk),.btn(rstn1),.btn_edge(rstn_edge));     //控制信号只进行激活一次
filter clear2(.clk(clk),.button(en),.button_clean(en1));    //去除按钮毛刺
single_edge btn2(.clk(clk),.btn(en1),.btn_edge(en_clear));

always @(posedge clk,posedge rstn_clear) begin
   if(!rstn_clear) begin
       current_state <= S0;
   end
   else begin
       current_state <= next_state;
   end
end

always@(*) begin
     next_state = current_state;
     if(!rstn_clear) begin
        index = 64'b0;
        m0 = 16'b0;
        next_state = S0;
    end
    else 
    case (current_state)
        S0:begin    //复位设置数值
            if(en_clear) begin
                m0 = d;
                index[63:48] = d;
                next_state = S1;
           end
           else begin
                m0 = 16'b0;
                next_state = S0;
            end
        end 
        S1:begin    //第一次输入成功
            if(en_clear)begin
                m0 = d;
                index[47:32] = d;
                next_state = S2;
            end
            else begin
                m0 = index[63:48];
                index = index;
                next_state = S1;
            end
        end
        S2:begin    //第二次输入成功
            // next_state = current_state;
            // index = {index[63:32],32'b0};
            if(en_clear)begin
                m0 = d;
               index[31:16] = d;
               next_state = S3;
            end
           else begin
                m0 = index[47:32];
                index = index;
                next_state = S2;
            end
        end
        S3:begin
            // next_state = current_state;
            // index = {index[63:16],16'b0};
            if(en_clear) begin
                m0 = d;
                index[15:0] = d;
                next_state = S4;
            end
            else begin    
                m0 = index[31:16];
                index = index; 
                next_state = S3;
            end
        end
        S4:begin  
            if(en_clear) begin
                index[63:48] = d;
                m0 = out[15:0];
                next_state = S5;
            end
            else begin
                m0 = out[15:0]; 
                index = index;
                next_state = S4;
            end
        end 
        S5: begin
            if(en_clear) begin
                index[47:32] = d;
                m0 = out[15:0];
                next_state = S6;   
            end
            else begin    
                m0 = out[15:0];
                index = index;
                next_state = S5;
            end 

        end 
        S6: begin
            if(en_clear) begin
                index[31:16] = d;
                m0 = out[15:0];
                next_state = S7;
            end 
             else begin    
                next_state = S6;
                index = index;
                m0 = out[15:0];
            end 
        end
        S7: begin
            if(en_clear) begin
                index[15:0] = d;
                m0 = out[15:0];
                next_state = S4;
            end 
             else begin    
                m0 = out[15:0];
                index = index;
                next_state = S7;
            end 
        end
   endcase
end
assign m = {m0[15:0]};
endmodule
