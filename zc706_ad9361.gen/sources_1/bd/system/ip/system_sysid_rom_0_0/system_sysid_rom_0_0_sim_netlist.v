// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Dec  5 17:20:38 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/zc706_ad9361/zc706_ad9361.gen/sources_1/bd/system/ip/system_sysid_rom_0_0/system_sysid_rom_0_0_sim_netlist.v
// Design      : system_sysid_rom_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_sysid_rom_0_0,sysid_rom,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "sysid_rom,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module system_sysid_rom_0_0
   (clk,
    rom_addr,
    rom_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [8:0]rom_addr;
  output [31:0]rom_data;

  wire \<const0> ;

  assign rom_data[31] = \<const0> ;
  assign rom_data[30] = \<const0> ;
  assign rom_data[29] = \<const0> ;
  assign rom_data[28] = \<const0> ;
  assign rom_data[27] = \<const0> ;
  assign rom_data[26] = \<const0> ;
  assign rom_data[25] = \<const0> ;
  assign rom_data[24] = \<const0> ;
  assign rom_data[23] = \<const0> ;
  assign rom_data[22] = \<const0> ;
  assign rom_data[21] = \<const0> ;
  assign rom_data[20] = \<const0> ;
  assign rom_data[19] = \<const0> ;
  assign rom_data[18] = \<const0> ;
  assign rom_data[17] = \<const0> ;
  assign rom_data[16] = \<const0> ;
  assign rom_data[15] = \<const0> ;
  assign rom_data[14] = \<const0> ;
  assign rom_data[13] = \<const0> ;
  assign rom_data[12] = \<const0> ;
  assign rom_data[11] = \<const0> ;
  assign rom_data[10] = \<const0> ;
  assign rom_data[9] = \<const0> ;
  assign rom_data[8] = \<const0> ;
  assign rom_data[7] = \<const0> ;
  assign rom_data[6] = \<const0> ;
  assign rom_data[5] = \<const0> ;
  assign rom_data[4] = \<const0> ;
  assign rom_data[3] = \<const0> ;
  assign rom_data[2] = \<const0> ;
  assign rom_data[1] = \<const0> ;
  assign rom_data[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
