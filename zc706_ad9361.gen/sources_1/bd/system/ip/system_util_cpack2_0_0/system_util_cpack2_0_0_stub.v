// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Oct 14 11:38:10 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_util_cpack2_0_0 -prefix
//               system_util_cpack2_0_0_ system_util_cpack2_0_0_stub.v
// Design      : system_util_cpack2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_cpack2,Vivado 2021.2" *)
module system_util_cpack2_0_0(clk, reset, enable_0, enable_1, enable_2, enable_3, 
  fifo_wr_en, fifo_wr_overflow, fifo_wr_data_0, fifo_wr_data_1, fifo_wr_data_2, 
  fifo_wr_data_3, packed_fifo_wr_en, packed_fifo_wr_overflow, packed_fifo_wr_sync, 
  packed_fifo_wr_data)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,enable_0,enable_1,enable_2,enable_3,fifo_wr_en,fifo_wr_overflow,fifo_wr_data_0[15:0],fifo_wr_data_1[15:0],fifo_wr_data_2[15:0],fifo_wr_data_3[15:0],packed_fifo_wr_en,packed_fifo_wr_overflow,packed_fifo_wr_sync,packed_fifo_wr_data[63:0]" */;
  input clk;
  input reset;
  input enable_0;
  input enable_1;
  input enable_2;
  input enable_3;
  input fifo_wr_en;
  output fifo_wr_overflow;
  input [15:0]fifo_wr_data_0;
  input [15:0]fifo_wr_data_1;
  input [15:0]fifo_wr_data_2;
  input [15:0]fifo_wr_data_3;
  output packed_fifo_wr_en;
  input packed_fifo_wr_overflow;
  output packed_fifo_wr_sync;
  output [63:0]packed_fifo_wr_data;
endmodule
