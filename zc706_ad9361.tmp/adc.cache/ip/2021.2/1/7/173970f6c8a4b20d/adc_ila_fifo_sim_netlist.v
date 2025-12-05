// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 17 16:09:23 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adc_ila_fifo_sim_netlist.v
// Design      : adc_ila_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_ila_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63808)
`pragma protect data_block
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
HAHo0f0Yv7D2EkVviMgjRWUsE22xbc2q3A633zi/jOgDwR2lq66tGv4ZjLUXk66Stz75WcX5NPFG
Jw6CZQr1P/4YXJkM8T7EUiiJxRjWTTO94rK76FbxV3VDrImO1rwz7CYomoeJGajry+KLDhqG/WhZ
oCgZCn/0oS7DaAKbgi9UsuJh+yKlVSSuODdWkP4P0Pblgq0RrR097Heo9lwPMXn0wcBvGQUTeYBL
XAIphofgxeqPdGyUFZtSsARkPl7WRZBvI9ZThZPZYIEXa4rPHE1Uq/XvyFgqkvdXrpYQVCvUcMm1
+IjHBnLimpZqvQHZecgIO4M7sSA3SegdgzHntsSa/BLeHElO+g1rNe1lD2l7ErkTQA4PSOxozpTv
1dFcZKv6vu4QPQWUOzzw/7xpPH+mJHamnwzTbDWBMLQUgwKG9/bDx2htEgQZAeBZ4/3ZYlMHG3sS
TCnJL714hjjV5xf4QAJvMtoNU2jmXRgkOp/oc1teUX7ST049EE7+W3zRbzhcZhH7aEFPLcHGrz2w
L16W0k/KlYBltWfaYH3qoT/JtNeH1mtg/y2dLOxwg/R5PfcozHFRmC/kSXmhjrR26ONjW19gj2Oq
BbK6Xa/YFw/s94bg2K8AhEbya+fKSaXIeXcMwEIgB9lbUM+ryCtAOXdVD5hbnIQN3jdZDPqgPkNa
xFs4xId/cZS5Fxa9mN/HZ3AvWgWwk1fBFnQPhdU6lISUN+fTUx1l+AMe1wNPpU+TXZDRRpZR4QUk
3ikqXiNva7cRMToxiOjDN9dF9t1Qui3hPpitR3QIfHu9/YdzT9G8dcfHLCr7qvHSqzTgVtL4uGP7
eGjdjBYdShhz8kx+G1yQOe2rPSE1T3Ge1gcvy+AmD5upw23ms/VrNIfYV0QxkLE/efUGZ9rufEFL
nR9TjKoePMg0mRAab/hLRwFlAddVc2Ob7PBaahr6zkV8osVzpJW4N2YRBAAKTghL5h3nhCX8WcGZ
ILzco7s8RmUYnTvLEjkjpfYTiUzeX2hkWDLi1Jqmnp5IQyb7C55sG8gl8rrbGaX89fNzC3V6LiTU
Ug7OyCnOzvu2XpHDW07Ykh9huQ2UsJtTxsNGWh4oiZ7o4vava1iKCMUllwpnM397sgZuHI2kuVm0
FBXqlycJyW/z6n9X++WeUr9GmIUBmjWtU0X41Z5ePGeUUUQQTjFceZrjaSonGE/5j5ICiP6OYaHK
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
b2mK9fhb8iSjdVLZ0QtnGF2pNPUIpZx94A==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20880)
`pragma protect data_block
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
/60bTobaNW3yaDn/6J4Qix9I
`pragma protect end_protected
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
