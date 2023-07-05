`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/04 20:13:21
// Design Name: 
// Module Name: ALU32_test
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


module ALU32_test(
input [15:0] num,
input clk,
input  rstn,    //复位信号
input  en,      //有效信号
output [5:0]t,
output reg [7:0] m,
output [7:0] AN
    );
parameter In1_H = 3'b000;
parameter In1_L = 3'b001;
parameter In2_H = 3'b010;
parameter In2_L = 3'b011;
parameter Func = 3'b100;
parameter Print = 3'b101;

reg [2:0] current_state = In1_H;
reg [2:0] next_state = In1_H;
reg [31:0] num1 = 32'b0;
reg [31:0] num2 = 32'b0;
reg [2:0] func = 3'b001;
wire [31:0] final = 32'b0;
wire [7:0] m1,m2;
reg [7:0] index = 8'b1111_1110;
reg [15:0] count = 16'b0;

ALU #(32) alu32(.a(num1),.b(num2),.f(func),.y(final),.t(t[2:0]));
filter clear1(.clk(clk),.button(rstn),.button_clean(rstn_clear));
// single_edge btn1(.clk(clk),.btn(rstn1),.btn_edge(rstn_edge));     //控制信号只进行激活一�?
filter clear2(.clk(clk),.button(en),.button_clean(en1));    //去除按钮毛刺
single_edge btn2(.clk(clk),.btn(en1),.btn_edge(en_clear));
light7 light1(.in(final[15:0]),.out(m1));
light7 light2(.in(final[31:16]),.out(m2));


always @(posedge clk,posedge rstn_clear) begin
   if(!rstn_clear) begin
       current_state <= In1_H;
       num1 <= 32'b0;
       num2 <= 32'b0;
   end
   else begin
       current_state <= next_state;
       case (current_state)
        In1_H:begin  
            if(en_clear) begin 
            num1[31:16] <= num;
            func <= 3'b001;
            end
            m <= index[0]==0?m1:m2;
        end 
        In1_L:begin    
            if(en_clear)begin
               num1[15:0] <= num;
            end  
            m <= 8'hc0;          
        end
        In2_H:begin   
            if(en_clear)begin
               num2[31:16] <= num;
            end
            m <= 8'hc0; 
        end
        In2_L:begin 
            if(en_clear) begin
               num2[15:0] <= num;
           end
           m <= 8'hc0; 
        end
        Func:begin  
            m = 8'hc0; 
            if(en_clear)
                func <= num[2:0];
        end 
        default: begin
            num1 <= 32'b0;
            num2 <= 32'b0;
            func <= 3'b001;
            m <= 8'hc0; 
        end
        endcase
   end
end

always@(*) begin
    next_state = current_state;
    if(!rstn_clear) begin

        next_state = In1_H;
    end
    else 
    case (current_state)
        In1_H:begin    //复位设置数�??
            if(en_clear) begin
               next_state = In1_L;
           end
        end 
        In1_L:begin    //第一次输入成�?
            if(en_clear)begin
               next_state = In2_H;
            end
        
            
        end
        In2_H:begin    //第二次输入成�?
            if(en_clear)begin
               next_state = In2_L;
            end
          
        end
        In2_L:begin
            if(en_clear) begin
               next_state = Func;
           end
           
        end
        Func:begin  
            if(en_clear) begin
                next_state = In1_H;
            end
            
        end 
        default: begin
            next_state = In1_H;
        end      
   endcase
end

always@(posedge clk)begin
    if(count <= 32'b1000_0000_0000_0000)begin
        count <= count + 1;   
    end
    else begin
        count <= 32'b0;
        index[0] <= ~index[0];
        index[1] <= ~index[1];
    end
end

assign AN = index;
assign t[5:3] = current_state;
endmodule
