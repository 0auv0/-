`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/04 17:43:18
// Design Name: 
// Module Name: DMem
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


module DMem2(
    input clk,
    input rstn,
    input valid_DC,
    input ready_DC,
    input [31:0] din,
    input [31:0] addr,
    input [1:0] state,
    output [31:0] dout,
    output valid_DM,
    output ready_DM
);

parameter Wait = 3'b000;
parameter Write_for_ready = 3'b001;
parameter Write_for_valid = 3'b010;
parameter Write = 3'b011;
parameter Read_for_ready = 3'b100;
parameter Read_for_valid = 3'b101;
parameter Read = 3'b110;




reg [2:0] current_state = Wait;
reg [2:0] next_state = Wait;
reg my_ready = 0;
reg my_valid = 0;
reg my_we = 0;
reg [2:0] count = 3'b000;
reg done = 1;
reg [9:0] addr_dm;
assign valid_DM = my_valid;
assign ready_DM = my_ready;



bram #(32,10,"") DM(
    .clk(clk),
    .we(my_we),
    .din(din),
    .addr(addr_dm),
    .dout(dout)
);

always @(posedge clk,negedge rstn) begin
    if(!rstn)begin
        current_state <= Wait;
    end
    else begin
        current_state <= next_state;
    end
end

always@(*) begin
    if(!rstn)begin
        next_state = Wait;
        done = 1;
        addr_dm = 32'b0;
    end
    else begin
    next_state = current_state;
    addr_dm = 32'b0;
    case (current_state)
        Wait:begin
            next_state = Wait;
            done = 1;
            if(state == 2'b01)begin
                next_state = Read_for_ready;
                done = 0;
            end
            if(state == 2'b10)begin
                next_state = Write_for_ready;
                // my_valid <= 1;
                done = 0;
            end
        end 
        Read_for_ready:begin
            if(valid_DC == 1) 
                next_state = Read_for_valid;
        end
        Read_for_valid:begin
            if(my_ready == 1)
                next_state = Read;
        end
        Read:begin
            if(count == 3'b110)
                next_state = Wait;
            case(count)
                3'b000:begin
                    addr_dm = {(addr-32'h2000) >> 3,1'b0};
                end
                3'b001:begin
                    addr_dm = {(addr-32'h2000) >> 3,1'b1};
                end
                // 3'b010:begin
                //     addr_dm = {(addr-32'h2000) >> 4,2'b10};
                // end
                // 3'b011:begin
                //     addr_dm = {(addr-32'h2000) >> 4,2'b11};
                // end
            endcase
        end
        Write_for_ready:begin
            if(my_valid == 1)
                next_state = Write_for_valid;
        end
        Write_for_valid:begin
            if(ready_DC == 1)
                next_state = Write;
        end
        Write:begin
             case(count)
                3'b000:begin
                    addr_dm = {(addr-32'h2000) >> 3,2'b00};
                end
                3'b001:begin
                    addr_dm = {(addr-32'h2000) >> 3,2'b01};
                end
                // 3'b010:begin
                //     addr_dm = {(addr-32'h2000) >> 4,2'b10};
                // end
                // 3'b011:begin
                //     addr_dm = {(addr-32'h2000) >> 4,2'b11};
                // end
            endcase


            if(count == 3'b110)
                next_state = Wait;
        end
        default:
            next_state = Wait; 
    endcase
    end
end


always@(posedge clk,negedge rstn) begin
    if(!rstn)begin
        my_ready <= 0;
        my_valid <= 0;
        my_we <= 0;
        count <= 3'b00;
    end
    else
    case (current_state)
        Wait:begin
            if(state == 2'b01)begin
                // my_ready <= 1;
                // done = 0;
            end
            else if(state == 2'b10)begin
                my_valid <= 1;
                // done = 0;
            end
            else begin
                // done = 1;
            end
        end 
        Read_for_ready:begin
            if(valid_DC == 1)begin
                my_ready <= 1;
            end
        end
        Read_for_valid:begin
            if(my_ready == 1)begin
                count <= 3'b0;    
                my_we <= 1;
            end
        end
        Read:begin
            if(state == 2'b11)begin
                my_we <= 0;
            end
            if(count == 3'b111)begin
                // done = 1;
                count <= 0;
            end
            else begin
                count <= count + 3'b01;
            end
        end
        Write_for_ready:begin
            if(my_valid == 1)begin

            end
        end
        Write_for_valid:begin
            if(ready_DC == 1)
                count <= 3'b0;
        end
        Write:begin
            if(count == 3'b110)begin
                // done = 1;
                count <= 0;
                my_valid <= 0;
            end
            else begin
                count <= count + 2'b01;
            end
        end
        default:begin
        
        end
    endcase

end


endmodule
