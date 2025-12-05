// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:wr_rd:1.0
// IP Revision: 15

(* X_CORE_INFO = "wr_rd,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "system_wr_rd_0_15,wr_rd,{}" *)
(* CORE_GENERATION_INFO = "system_wr_rd_0_15,wr_rd,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=wr_rd,x_ipVersion=1.0,x_ipCoreRevision=15,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_wr_rd_0_15 (
  wr_clk,
  wr_rst,
  rd_clk,
  rd_rst,
  valid_in,
  wr_data_0,
  wr_data_1,
  wr_data_2,
  wr_data_3,
  dac_q_i_0,
  dac_q_i_1,
  rd_data_0,
  rd_data_1,
  rd_data_2,
  rd_data_3
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, ASSOCIATED_RESET wr_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_ad9361_0_0_l_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *)
input wire wr_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 wr_rst RST" *)
input wire wr_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rd_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *)
input wire rd_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rd_rst RST" *)
input wire rd_rst;
output wire valid_in;
input wire [15 : 0] wr_data_0;
input wire [15 : 0] wr_data_1;
input wire [15 : 0] wr_data_2;
input wire [15 : 0] wr_data_3;
output wire [31 : 0] dac_q_i_0;
output wire [31 : 0] dac_q_i_1;
output wire [15 : 0] rd_data_0;
output wire [15 : 0] rd_data_1;
output wire [15 : 0] rd_data_2;
output wire [15 : 0] rd_data_3;

  wr_rd inst (
    .wr_clk(wr_clk),
    .wr_rst(wr_rst),
    .rd_clk(rd_clk),
    .rd_rst(rd_rst),
    .valid_in(valid_in),
    .wr_data_0(wr_data_0),
    .wr_data_1(wr_data_1),
    .wr_data_2(wr_data_2),
    .wr_data_3(wr_data_3),
    .dac_q_i_0(dac_q_i_0),
    .dac_q_i_1(dac_q_i_1),
    .rd_data_0(rd_data_0),
    .rd_data_1(rd_data_1),
    .rd_data_2(rd_data_2),
    .rd_data_3(rd_data_3)
  );
endmodule
