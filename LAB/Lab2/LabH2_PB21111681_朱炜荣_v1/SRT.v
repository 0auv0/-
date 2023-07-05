`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/09 21:03:25
// Design Name: 
// Module Name: SRT
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

module  SRT(
    input  clk, 		//时钟
    input  rstn, 		//复位
    input run,		//启动排序
    output reg done,		//排序结束标志
    output [15:0]  cycles,	//排序耗费时钟周期�?

    // SDU_DM接口
    input [31:0]  addr,	//�?/写地�?
    output reg [31:0]  dout,	//读取数据
    input [31:0]  din,	//写入数据
    input we,		//写使�?
    input clk_ld		//写时�?
);


parameter S0 = 4'h0;    //允许修改数据的未排序阶段
parameter S1 = 4'h1;    //循环�?用的初始�?
parameter S2 = 4'h2;    //比较读取数据的大小关�?
parameter S3 = 4'h3;    //写入阶段1
parameter S4 = 4'h4;    //写入阶段2
parameter S5 = 4'h5;    //更新j
parameter S6 = 4'h6;    //更新i
parameter S7 = 4'h7;    //end

reg [3:0] current_state = S0;
reg [3:0] next_state = S0;
reg [15:0] count = 16'b0;
reg [31:0] addr1,addr2,addr1_s,addr2_s;
reg [31:0] w_value,w_value_s;
reg we_rf,we_s;
wire clk_rf;
wire [31:0] r_value1,r_value2;
reg [4:0] sum;
reg [4:0] i,j;
reg [31:0] num;
reg flag = 0;

rf_32_32 rf(
    .a(addr1[4:0]),
    .d(w_value),
    .dpra(addr2[4:0]),
    .clk(clk_rf),
    .we(we_rf),
    .spo(r_value1),
    .dpo(r_value2)
);


always@(posedge clk,negedge rstn) begin
    if(!rstn) begin
        current_state <= S0;
    end    
    else begin
        current_state <= next_state;
    end
end

always@(*) begin
    if(!rstn) begin
        addr1_s = 5'b0;
        addr2_s = 5'b0;
        next_state = S0;
        flag = 0;
        done = 0;
    end
    else begin
        next_state = current_state;
    case (current_state)
        S0:begin
            done = 1 ; 
            addr1_s = 5'b0;
            addr2_s = 5'b0;
            if(run) begin
                next_state = S1;
                flag = 1;
            end
            else begin
                flag = 0;
            end
        end 
        S1: begin
            done = 0;
            addr1_s = 5'b0;
            addr2_s = 5'b0;
            flag = 1;
            if(r_value1 <= 1)
                next_state = S7;
            else
                next_state = S2;
        end
        S2: begin
            done = 0;
            addr1_s = i;
            addr2_s = j;
            flag = 1;
            if(r_value1 > r_value2)
                next_state = S3;
            else
                next_state = S5;
        end
        S3:begin
            done = 0;
            addr1_s = i;
            addr2_s = 5'b0;
            next_state = S4;
            flag = 1;
        end
        S4:begin
            done = 0;
            addr1_s = j;
            addr2_s = 5'b0;
            next_state = S5;
            flag = 1;
        end
        S5:begin
            done = 0;
            flag = 1;
            addr1_s = 5'b0;
            addr2_s = 5'b0;
            if(j >= sum)
                next_state = S6;
            else
                next_state = S2; 
        end
        S6: begin
            done = 0;
            flag = 1;
            addr1_s = 5'b0;
            addr2_s = 5'b0;
            if(i >= sum - 1)
                next_state = S7;
            else
                next_state = S2;
        end
        S7:begin
            done = 1;
            next_state = S0;
            addr1_s = 5'b0;
            addr2_s = 5'b0;
            flag = 1;
        end
        default:begin
            done = 0;
            flag = 1;
            addr1_s = 5'b0;
            addr2_s = 5'b0;
        end 
    endcase
    end
end


always@(posedge clk) begin
    case (current_state)
        S0: begin
            if(run) begin
                count <= 16'b0;
                we_s <= 0; 
                i <= 5'h1;
                j <= 5'h2;
                sum <= r_value1;
            end
            
        end 
        S1: begin
            count <= count + 1;
        end
        S2: begin
            count <= count + 1;
            num <= r_value1;
//            num2 <= r_value2;
            if(r_value1 > r_value2) begin
                we_s <= 1;
                w_value_s <= r_value2;
            end
        end
        S3: begin
            count <= count + 1;
            we_s <= 1;
            w_value_s <= num;
        end
        S4: begin
            count <= count + 1;
            we_s <= 0;
        end
        S5: begin
            count <= count + 1;
            j <= j + 1;
        end
        S6: begin
            count <= count + 1;
            i <= i + 1;
            j <= i + 2;
        end
        S7: begin
            count <= count + 1;
        end
        default: begin
            count <= count;
        end
    endcase
end


always@(*) begin    //MUX
    if(current_state == S0 && flag == 0) begin
        addr1 = addr;
        addr2 = 0;
        w_value = din;
        dout = r_value1;
        we_rf = we;
    end
    else begin
        addr1 = addr1_s;
        addr2 = addr2_s;
        dout = 32'b0;
        we_rf = we_s;
        w_value = w_value_s;
    end
end

assign cycles = (current_state == S0)?count:0;
assign clk_rf = (current_state == S0 && flag == 0)?clk_ld:clk;
endmodule
