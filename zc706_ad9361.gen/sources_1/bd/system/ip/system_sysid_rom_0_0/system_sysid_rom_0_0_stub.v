// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec  5 17:20:38 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zc706_ad9361/zc706_ad9361.gen/sources_1/bd/system/ip/system_sysid_rom_0_0/system_sysid_rom_0_0_stub.v
// Design      : system_sysid_rom_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sysid_rom,Vivado 2021.2" *)
module system_sysid_rom_0_0(clk, rom_addr, rom_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rom_addr[8:0],rom_data[31:0]" */;
  input clk;
  input [8:0]rom_addr;
  output [31:0]rom_data;
endmodule
