// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 17 11:12:09 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.srcs/sources_1/new/wr_rd/src/dac_ila_fifo/dac_ila_fifo_sim_netlist.v
// Design      : dac_ila_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_ila_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module dac_ila_fifo
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
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
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
  dac_ila_fifo_fifo_generator_v13_2_6 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dac_ila_fifo_xpm_cdc_gray
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
module dac_ila_fifo_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 73312)
`pragma protect data_block
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
aQehs13XuThdAg==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20848)
`pragma protect data_block
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
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
