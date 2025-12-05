// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 17 15:00:34 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.gen/sources_1/ip/adc_ila_fifo_wr/adc_ila_fifo_wr_stub.v
// Design      : adc_ila_fifo_wr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *)
module adc_ila_fifo_wr(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,rd_clk,din[15:0],wr_en,rd_en,dout[15:0],full,empty" */;
  input wr_clk;
  input rd_clk;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output empty;
endmodule
