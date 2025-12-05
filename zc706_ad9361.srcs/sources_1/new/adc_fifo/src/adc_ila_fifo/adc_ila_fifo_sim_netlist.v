// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 17 16:09:24 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.srcs/sources_1/new/adc_fifo/src/adc_ila_fifo/adc_ila_fifo_sim_netlist.v
// Design      : adc_ila_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_ila_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module adc_ila_fifo
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
  adc_ila_fifo_fifo_generator_v13_2_6 U0
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
module adc_ila_fifo_xpm_cdc_gray
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
module adc_ila_fifo_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63552)
`pragma protect data_block
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
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
