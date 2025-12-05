// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Oct 27 18:06:19 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/zc706_ad9361/zc706_ad9361.gen/sources_1/bd/system/ip/system_adc_fifo_ad9361_0_0/system_adc_fifo_ad9361_0_0_stub.v
// Design      : system_adc_fifo_ad9361_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_fifo_ad9361,Vivado 2021.2" *)
module system_adc_fifo_ad9361_0_0(adc_wr_clk, adc_wr_rst, adc_rd_clk, adc_rd_rst, 
  adc_data_0, adc_data_1, adc_data_2, adc_data_3, q_i_0, q_i_1, valid_in, ila_data_0, ila_data_1, 
  ila_data_2, ila_data_3)
/* synthesis syn_black_box black_box_pad_pin="adc_wr_clk,adc_wr_rst,adc_rd_clk,adc_rd_rst,adc_data_0[15:0],adc_data_1[15:0],adc_data_2[15:0],adc_data_3[15:0],q_i_0[31:0],q_i_1[31:0],valid_in,ila_data_0[15:0],ila_data_1[15:0],ila_data_2[15:0],ila_data_3[15:0]" */;
  input adc_wr_clk;
  input adc_wr_rst;
  input adc_rd_clk;
  input adc_rd_rst;
  input [15:0]adc_data_0;
  input [15:0]adc_data_1;
  input [15:0]adc_data_2;
  input [15:0]adc_data_3;
  output [31:0]q_i_0;
  output [31:0]q_i_1;
  output valid_in;
  output [15:0]ila_data_0;
  output [15:0]ila_data_1;
  output [15:0]ila_data_2;
  output [15:0]ila_data_3;
endmodule
