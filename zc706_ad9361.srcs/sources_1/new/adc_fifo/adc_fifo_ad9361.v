`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/17 15:57:57
// Design Name: 
// Module Name: adc_fifo_ad9361
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


module adc_fifo_ad9361(

    input adc_wr_clk,
    input adc_wr_rst,
    input adc_rd_clk,
    input adc_rd_rst,

    input wire [15:0] adc_data_0,
    input wire [15:0] adc_data_1,
    input wire [15:0] adc_data_2,
    input wire [15:0] adc_data_3,
    
    output wire [31:0] q_i_0,
    output wire [31:0] q_i_1,
    output wire valid_in,
    
    
    output wire [15:0] ila_data_0,
    output wire [15:0] ila_data_1,
    output wire [15:0] ila_data_2,
    output wire [15:0] ila_data_3
);

reg adc_rd_en;
reg adc_valid_reg;
wire empty0, empty1, empty2, empty3;

// 写时钟域写使能
always @(posedge adc_wr_clk) begin
    if (adc_wr_rst)
        adc_valid_reg <= 1'b0;
    else
        adc_valid_reg <= 1'b1;
end

// 组合信号：四个 FIFO 只要任意一个非空就读
wire rd_en_comb = ~(empty0 | empty1 | empty2 | empty3);

// 读时钟域
always @(posedge adc_rd_clk) begin
        adc_rd_en <= rd_en_comb;
end

// FIFO 实例
adc_fifo_ilaad adc_i0 (
    .wr_clk(adc_wr_clk),
    .rd_clk(adc_rd_clk),
    .din(adc_data_0),
    .wr_en(adc_valid_reg),
    .rd_en(adc_rd_en),
    .dout(ila_data_0),
    .full(),
    .empty(empty0)
);
adc_fifo_ilaad adc_q0 (
    .wr_clk(adc_wr_clk),
    .rd_clk(adc_rd_clk),
    .din(adc_data_1),
    .wr_en(adc_valid_reg),
    .rd_en(adc_rd_en),
    .dout(ila_data_1),
    .full(),
    .empty(empty1)
);
adc_fifo_ilaad adc_i1 (
    .wr_clk(adc_wr_clk),
    .rd_clk(adc_rd_clk),
    .din(adc_data_2),
    .wr_en(adc_valid_reg),
    .rd_en(adc_rd_en),
    .dout(ila_data_2),
    .full(),
    .empty(empty2)
);
adc_fifo_ilaad adc_q2 (
    .wr_clk(adc_wr_clk),
    .rd_clk(adc_rd_clk),
    .din(adc_data_3),
    .wr_en(adc_valid_reg),
    .rd_en(adc_rd_en),
    .dout(ila_data_3),
    .full(),
    .empty(empty3)
);
assign q_i_0 = {ila_data_0, ila_data_1};
assign q_i_1 = {ila_data_2, ila_data_3};
assign valid_in = adc_rd_en; // q_i_0 有效

endmodule
