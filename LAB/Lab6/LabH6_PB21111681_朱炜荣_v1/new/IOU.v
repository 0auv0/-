`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/04 20:17:04
// Design Name: 
// Module Name: IOU
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


module IOU(
    input clk,
    input clk0,
    input rstn,
    // input we_r,
    // input we_w,
    // input [31:0] addr,
    // input [31:0] out_data,
    // output reg [31:0] back_data,

    //io_bus
    input [31:0] io_addr,
    output reg [31:0] io_din,
    input [31:0] io_dout,
    input io_we,
    input io_rd,
    // output signal,

    //mmio
    input ok,
    input ready,
    input del,
    input [15:0] x,
    
    output [15:0] led,
    output [7:0] an,
    output [6:0] seg,
    output [2:0] seg_sel
);

reg [31:0] data_index = 32'b0;
reg [31:0] data_final = 32'b0;
reg [31:0] data_clk = 32'b0;
// reg [1:0] current_state = Wait;
// reg [1:0] next_state = Wait;
wire ok_c,ready_c,del_c;
wire ok_s,ready_s,del_s;
reg [15:0] data_led = 16'b0;
reg seg_rdy = 1;
reg swx_vld = 0;
reg [31:0] seg_data = 32'h12345678;


filter f1(
    .clk(clk0),
    .button(ok),
    .button_clean(ok_c)
);
single_edge s1(
    .clk(clk0),
    .btn(ok_c),
    .btn_edge(ok_s)
);
filter f2(
    .clk(clk0),
    .button(ready),
    .button_clean(ready_c)
);
single_edge s2(
    .clk(clk0),
    .btn(ready_c),
    .btn_edge(ready_s)
);
filter f3(
    .clk(clk0),
    .button(del),
    .button_clean(del_c)
);
single_edge s3(
    .clk(clk0),
    .btn(del_c),
    .btn_edge(del_s)
);




always@(*)begin
    if(!rstn)begin
        io_din = 32'b0;
    end
    else begin            
        io_din = 32'b0;
            case(io_addr)
            32'h7f00:begin
                
            end
            32'h7f04:begin
                if(io_rd == 1)
                    io_din = {13'b0,ready_s,ok_s,del_s ,x[15:0]};
            end
            32'h7f08:begin
                if(io_rd == 1)
                    io_din = {31'b0,seg_rdy};
            end
            32'h7f0c:begin
                
            end
            32'h7f10:begin
                if(io_rd == 1)
                    io_din = {31'b0,swx_vld};
            end
            32'h7f14:begin
                if(io_rd == 1)begin
                    io_din = data_final;
                end
            end
            32'h7f18:begin
                if(io_rd == 1)
                    io_din = data_clk;

            end
            default:begin
               
            end
            endcase
    end
end

always@(posedge clk,negedge rstn)begin
    if(!rstn)begin
        data_clk <= 32'b0;
    end
    else begin
        data_clk <= data_clk + 1;
            case(io_addr)
            32'h7f00:begin
                if(io_we == 1)
                    data_led <= io_dout[15:0];
            end
            32'h7f04:begin
                
            end
            32'h7f08:begin
                if(io_rd == 1)begin
                
                end
            end
            32'h7f0c:begin
                if(io_we == 1)begin
                    seg_data <= io_dout;
                end
            end
            32'h7f10:begin

            end
            32'h7f14:begin
                if(io_rd)   begin
                    // swx_vld <= 0;
                end
            end
            32'h7f18:begin
                if(io_we == 1)
                    data_clk <= io_dout;
            end
            default:begin

            end
            endcase
    end
end



always@(posedge clk0,negedge rstn)begin
    if(!rstn)begin
        seg_rdy <= 1;
        swx_vld <= 0;
        data_index <= 32'b0;
        data_final <= 32'b0;
    end
    else begin

        
        if(ok_s) begin
            data_index <= 32'b0;
            data_final <= data_index;
        end
        else if(del_s)begin
            data_index <= data_index >> 4;
        end
        else if(ready_s)begin
            data_index <= {data_index[27:0],x[3:0]};
        end

        if(io_addr == 32'h7f0c && io_we == 1 && clk)begin
            seg_rdy <= 0;
        end
        else if(ready_s || del_s)begin
            seg_rdy <= 1;
        end
        if(ok_s)begin
            swx_vld <= 1;
        end
        else if(io_addr == 32'h7f14 && io_rd == 1 && clk)begin
            swx_vld <= 0;
        end

    end
end


//以下为pdu仿制版本

reg [19:0] cnt_clk_r = 20'h0;

///////////////////////////////////////////////
//时钟分频
///////////////////////////////////////////////
always @(posedge clk0, negedge rstn) begin
    if (!rstn)
        cnt_clk_r <= 20'h0;
    else
        cnt_clk_r <= cnt_clk_r + 20'h1;
end

reg [7:0] an_t = 8'b1111_1111;
reg [3:0] hd_t = 4'b0000;
reg [31:0] disp_data_t ;



reg [6:0] seg_t;

always@(*)begin
    case (seg_rdy)
        0:  disp_data_t = seg_data; 
        1:  disp_data_t = data_index;
    endcase
end


always @(*)begin
    an_t <= 8'b1111_1111;
    hd_t <= disp_data_t[3:0];
    if (&cnt_clk_r[16:15])    //降低亮度
    case (cnt_clk_r[19:17])   //刷新频率约为95Hz
            3'b000: begin
                an_t <= 8'b1111_1110;
                hd_t <= disp_data_t[3:0];
            end
            3'b001: begin
                an_t <= 8'b1111_1101;
                hd_t <= disp_data_t[7:4];
            end
            3'b010: begin
                an_t <= 8'b1111_1011;
                hd_t <= disp_data_t[11:8];
            end
            3'b011: begin
                an_t <= 8'b1111_0111;
                hd_t <= disp_data_t[15:12];
            end
            3'b100: begin
                an_t <= 8'b1110_1111;
                hd_t <= disp_data_t[19:16];
            end
            3'b101: begin
                an_t <= 8'b1101_1111;
                hd_t <= disp_data_t[23:20];
            end
            3'b110: begin
                an_t <= 8'b1011_1111;
                hd_t <= disp_data_t[27:24];
            end
            3'b111: begin
                an_t <= 8'b0111_1111;
                hd_t <= disp_data_t[31:28];
            end
            default:
                ;
        endcase
end

always @ (*) begin    //7段译码
        case(hd_t)
            4'b1111:
                seg_t = 7'b0111000;
            4'b1110:
                seg_t = 7'b0110000;
            4'b1101:
                seg_t = 7'b1000010;
            4'b1100:
                seg_t = 7'b0110001;
            4'b1011:
                seg_t = 7'b1100000;
            4'b1010:
                seg_t = 7'b0001000;
            4'b1001:
                seg_t = 7'b0001100;
            4'b1000:
                seg_t = 7'b0000000;
            4'b0111:
                seg_t = 7'b0001111;
            4'b0110:
                seg_t = 7'b0100000;
            4'b0101:
                seg_t = 7'b0100100;
            4'b0100:
                seg_t = 7'b1001100;
            4'b0011:
                seg_t = 7'b0000110;
            4'b0010:
                seg_t = 7'b0010010;
            4'b0001:
                seg_t = 7'b1001111;
            4'b0000:
                seg_t = 7'b0000001;
            default:
                seg_t = 7'b1111111;
        endcase
    end

assign seg = seg_t;
assign led = data_led;
assign an = an_t;
assign seg_sel = cnt_clk_r[19:17];

endmodule
