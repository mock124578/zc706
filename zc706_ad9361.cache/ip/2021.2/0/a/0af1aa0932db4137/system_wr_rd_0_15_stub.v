// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec  5 17:21:14 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_wr_rd_0_15_stub.v
// Design      : system_wr_rd_0_15
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "wr_rd,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(wr_clk, wr_rst, rd_clk, rd_rst, valid_in, 
  wr_data_0, wr_data_1, wr_data_2, wr_data_3, dac_q_i_0, dac_q_i_1, rd_data_0, rd_data_1, 
  rd_data_2, rd_data_3)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,wr_rst,rd_clk,rd_rst,valid_in,wr_data_0[15:0],wr_data_1[15:0],wr_data_2[15:0],wr_data_3[15:0],dac_q_i_0[31:0],dac_q_i_1[31:0],rd_data_0[15:0],rd_data_1[15:0],rd_data_2[15:0],rd_data_3[15:0]" */;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  output valid_in;
  input [15:0]wr_data_0;
  input [15:0]wr_data_1;
  input [15:0]wr_data_2;
  input [15:0]wr_data_3;
  output [31:0]dac_q_i_0;
  output [31:0]dac_q_i_1;
  output [15:0]rd_data_0;
  output [15:0]rd_data_1;
  output [15:0]rd_data_2;
  output [15:0]rd_data_3;
endmodule
