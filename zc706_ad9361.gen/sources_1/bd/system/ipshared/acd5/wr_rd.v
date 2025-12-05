`timescale 1ns / 1ps
module wr_rd(
    input wr_clk,
    input wr_rst,
    input rd_clk,
    input rd_rst,
output valid_in,
    input wire [15:0] wr_data_0,
    input wire [15:0] wr_data_1,
    input wire [15:0] wr_data_2,
    input wire [15:0] wr_data_3,
output wire [31:0] dac_q_i_0,
output wire [31:0] dac_q_i_1,
    output wire [15:0] rd_data_0,
    output wire [15:0] rd_data_1,
    output wire [15:0] rd_data_2,
    output wire [15:0] rd_data_3
);

reg rd_en;
reg dac_valid_reg;
wire empty0, empty1, empty2, empty3;

// 写时钟域写使能
always @(posedge wr_clk) begin
    if (wr_rst)
        dac_valid_reg <= 1'b0;
    else
        dac_valid_reg <= 1'b1;
end

// 组合信号：四个 FIFO 只要任意一个非空就读
wire rd_en_comb = ~(empty0 | empty1 | empty2 | empty3);

// 读时钟域
always @(posedge rd_clk) begin
        rd_en <= rd_en_comb;
end

// FIFO 实例
dac_ila_fifo dac_i0 (
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .din(wr_data_0),
    .wr_en(dac_valid_reg),
    .rd_en(rd_en),
    .dout(rd_data_0),
    .full(),
    .empty(empty0)
);
dac_ila_fifo dac_q0 (
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .din(wr_data_1),
    .wr_en(dac_valid_reg),
    .rd_en(rd_en),
    .dout(rd_data_1),
    .full(),
    .empty(empty1)
);
dac_ila_fifo dac_i1 (
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .din(wr_data_2),
    .wr_en(dac_valid_reg),
    .rd_en(rd_en),
    .dout(rd_data_2),
    .full(),
    .empty(empty2)
);
dac_ila_fifo dac_q2 (
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .din(wr_data_3),
    .wr_en(dac_valid_reg),
    .rd_en(rd_en),
    .dout(rd_data_3),
    .full(),
    .empty(empty3)
);
assign dac_q_i_0 = {rd_data_0, rd_data_1};
assign dac_q_i_1 = {rd_data_2, rd_data_3};
assign valid_in = rd_en; // q_i_0 有效
endmodule
