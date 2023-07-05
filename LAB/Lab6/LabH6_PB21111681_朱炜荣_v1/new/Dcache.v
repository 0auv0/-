`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/04 17:10:49
// Design Name: 
// Module Name: Dcache
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

//直接相联Cache 8行 一块4字 共1KB
module Dcache(
    output [63:0] debug_data,
    input clk,
    input rstn,
    input we_r,         //外部读信号
    input we_w,         //外部写信号
    input [31:0] addr,      //外部尝试地址
    input [31:0] din,       //外部输入
    // input [31:0] addr_exchange_in,      //用于交换的输入值地址
    input [31:0] data_exchange_in,      //用于交换的输入值
    input ready_DM,         //Mem的ready信号
    input valid_DM,         //Mem的valid信号
    output reg[31:0] dout,     //外部输出
    output reg [31:0] addr_exchange_out,    //用于交换的输出值
    output reg [31:0] data_exchange_out,    //用于交换的输出值地址
    output valid_DC,        //Cache的valid信号
    output ready_DC,        //Cache的ready信号
    output signal,          //控制流水线的信号
    output reg [1:0] state
);
reg [7:0] valid = 8'b0;
reg [24:0] tag [0:7];      //32 - 3 - 2 - 2 = 25
reg [127:0] cache_data [0:7];
reg [31:0] miss_time = 32'b0;
reg [31:0] ls_time = 32'b0;

wire [1:0] offset = addr[3:2];
wire [2:0] mark = addr[6:4];
wire hit =(valid[mark] != 0) && (tag[mark] == addr[31:7]) && (we_r || we_w) && (addr < 32'h7f00) && (addr >= 32'h2000);
// wire [7:0] part = (offset == 2'b00)?0:(offset == 2'b01)?32:(offset == 2'b10)?64:96;

parameter Work = 3'b000;
parameter Read_for_valid = 3'b001;
parameter Read_for_ready = 3'b010;
parameter Read = 3'b011;
parameter Write_for_valid = 3'b100;
parameter Write_for_ready = 3'b101;
parameter Write = 3'b110;

reg [2:0] current_state = Work;  
reg [2:0] next_state = Work;
reg my_ready = 0;
reg my_valid = 0;
reg done = 1;
reg [2:0] count = 3'b0;

assign signal = done;
assign valid_DC = my_valid;
assign ready_DC = my_ready;

always @(posedge clk,negedge rstn)
begin
    if(!rstn)begin
        current_state <= Work;
    end
    else begin
        current_state <= next_state;
    end
end

always @(*)
begin
    if(!rstn)begin
        next_state = Work;
        addr_exchange_out = 32'b0;
        data_exchange_out = 32'b0;
        dout = 32'b0;
        state = 2'b00;
        done = 1;
    end
    else begin
        addr_exchange_out = 32'b0;
        data_exchange_out = 32'b0;
        dout = 32'b0;
        case (current_state)
            Work: begin
                state = 2'b00;
                if(hit == 1)begin
                    next_state = Work;
                    done = 1;
                    if(we_r == 1)begin
                    case(offset)
                        2'b00: begin
                            dout = cache_data[mark][31:0];
                        end
                        2'b01:
                         begin
                            dout = cache_data[mark][63:32];
                        end
                        2'b10:
                         begin
                            dout = cache_data[mark][95:64];
                        end
                        2'b11:
                         begin
                            dout = cache_data[mark][127:96];
                        end
                    endcase
                end
                end
                else begin
                    if((we_r == 1 || we_w == 1) &&  (addr < 32'h7f00) && (addr >= 32'h2000))begin
                        done = 0;
                        if(valid[mark] == 1)
                            next_state = Write_for_ready;
                        else 
                            next_state = Read_for_ready;
                    end
                    else begin
                        next_state = Work;
                        done = 1;
                    end
                end
            end 
            Read_for_ready:begin
                state = 2'b10;
                done = 0;
                if(valid_DM == 1)
                    next_state = Read_for_valid;
                else
                    next_state = Read_for_ready;
            end
            Read_for_valid:begin
                state = 2'b10;
                done = 0;
                if(my_ready == 1)
                    next_state = Read;
                else
                    next_state = Read_for_valid;
            end
            Read:begin
                addr_exchange_out = addr;
                state = 2'b10;
                done = 0;
                if(count == 3'b100)
                    next_state = Work;
                else
                    next_state = Read;
            end
            Write_for_ready:begin
                state = 2'b01;
                done = 0;
                if(my_valid == 1)
                    next_state = Write_for_valid;
                else
                    next_state = Write_for_ready;
            end
            Write_for_valid:begin
                state = 2'b01;
                done = 0;
                if(ready_DM == 1)
                    next_state = Write;
                else
                    next_state = Write_for_valid;
            end
            Write:begin
                state = 2'b01;
                done = 0;
                case(count)
                3'b000:begin
                    data_exchange_out = cache_data[mark][31:0];
                    addr_exchange_out = {tag[mark],mark[2:0],2'b00,2'b00};
                end
                3'b001:begin
                    data_exchange_out = cache_data[mark][63:32];
                    addr_exchange_out = {tag[mark],mark[2:0],2'b01,2'b00};
                end
                3'b010:begin
                    data_exchange_out = cache_data[mark][95:64];
                    addr_exchange_out = {tag[mark],mark[2:0],2'b10,2'b00};
                end
                3'b011:begin
                    data_exchange_out = cache_data[mark][127:96] ;
                    addr_exchange_out = {tag[mark],mark[2:0],2'b11,2'b00};
                    state = 2'b11;
                end
                endcase
                if(count == 3'b100)
                    next_state = Read_for_ready;
                else
                    next_state = Write;
            end
            default:begin
                next_state = Work; 
                state = 2'b00;
                done = 1;
            end
        endcase

    end
end


always@(posedge clk,negedge rstn)
begin
    if(!rstn)begin
        my_valid <= 0;
        my_ready <= 0;
        count <= 3'b000;
        miss_time <= 32'b0;
        ls_time <= 32'b0;
    end
    else begin
    case (current_state)
        Work:begin
            if(hit == 1) begin    
                ls_time <= ls_time + 1'b1;
                if(we_w == 1)begin
                    case(offset)
                        2'b00: begin
                            cache_data[mark][31:0] <= din;
                        end
                        2'b01:
                         begin
                            cache_data[mark][63:32] <= din;
                        end
                        2'b10:
                         begin
                            cache_data[mark][95:64] <= din;
                        end
                        2'b11:
                         begin
                            cache_data[mark][127:96] <= din;
                        end
                    endcase
                end
            end
            else begin
            if((we_r == 1 || we_w == 1) &&  (addr < 32'h7f00) && (addr >= 32'h2000))begin
                miss_time <= miss_time + 1;
                if(valid[mark] == 1)begin
                    my_valid <= 1;
                end
                else begin
                    ;
                end
            end
            else begin

            end

            end
        end
        Read_for_ready:begin
            if(valid_DM == 1)
                my_ready <= 1;
        end
        Read_for_valid:begin    
            if(my_ready == 1)begin
                count <= 3'b0;
                // addr_exchange_out <= addr;
            end
        end
        Read:begin
            case(count)
                3'b001:begin
                    cache_data[mark][31:0] <= data_exchange_in;
                end
                3'b010:begin
                    cache_data[mark][63:32] <= data_exchange_in;
                end
                3'b011:begin
                    cache_data[mark][95:64] <= data_exchange_in;
                end
                3'b100:begin
                    cache_data[mark][127:96] <= data_exchange_in;
                    tag[mark][24:0] <= addr[31:7];
                    valid[mark] <= 1;
                end
                default:begin

                end     
            endcase
            if(count == 3'b100) begin
                my_ready <= 0;
                my_valid <= 0;
                count <= 0;
            end
            else begin
                count <= count + 3'b1;
            end
        end
        Write_for_ready:begin
            if(my_valid == 1)begin

            end
        end
        Write_for_valid:begin
            if(ready_DM == 1)begin
                count <= 3'b0;
            end
        end
        Write:begin
            if(count == 3'b100) begin
                // valid[mark] <= 1;
                my_ready <= 0;
                my_valid <= 0;
                count <= 0;
            end
            else begin
                count <= count + 2'b1;
            end
        end
        default: begin

        end
    endcase
    end

end


assign debug_data = {miss_time,ls_time};
endmodule
