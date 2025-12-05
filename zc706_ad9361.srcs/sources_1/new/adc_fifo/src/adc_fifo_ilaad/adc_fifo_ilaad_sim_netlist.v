// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Oct 17 18:50:07 2025
// Host        : little running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.srcs/sources_1/new/adc_fifo/src/adc_fifo_ilaad/adc_fifo_ilaad_sim_netlist.v
// Design      : adc_fifo_ilaad
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adc_fifo_ilaad,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module adc_fifo_ilaad
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
  adc_fifo_ilaad_fifo_generator_v13_2_6 U0
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
module adc_fifo_ilaad_xpm_cdc_gray
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
module adc_fifo_ilaad_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63616)
`pragma protect data_block
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
J60IZQ==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20864)
`pragma protect data_block
6ClHmmU1+tX+nGuE4w3lfLmiLnBwqlkcbiPuPMOPM6l0xPEzvmhqIAxunnn+0pBUTuc3bdlMoDqw
p8zjmfDATNtDpn28oXeCT/HtwNXTnCTQ5ZPExhzXt3t6gLwO/fkY7aCB6XFKUiZMULdeSnVLeEEN
76UUMLUmMwWnfednSJtgKLCpq6gvbrA5dlGPjjWWOJMSJ7ifplid8XUQta7O+xzVd0G6rsBGUyIc
uKqJ28odd8CC7uGYKrq63xVWfWbPU1vGaB4dEhDg2q86CD2DjZHDg1oh4RHoYTnjsyp5TtQ7mapi
T/NGuRi2UGq/C4k1w/T4SyBqMuTJznJe1vRDNtsDwZhH85oIatXHaV4kJRjLHG7MEVE6Q4z5kC4D
Feth0XJGMCcEx7nPEIYPcarw485zQS17jXYjaaHI6/UN2dG72ESWReV3yrrLRt99Swcu/dlTIq6J
OVioqfmk60iqUQLKcT3o2rtDzH5Kj1bku0unhP37ujU0bqEma0eZ02mn3sExLx1LO8eYt59lcb4p
dpxeJZ7A/B3JuuSCtA4oHysfNOFQKt0zzwXIbIAIM378c/NZgctmd6P23BUDSVZvAgR2E4NvK/Ff
SJHDpowVqMoS54gdias6lJYFWVCpsYlScCQSD6f/pQmbkCVSL1U1P43ITlV+xogZ7cGHOY9ppSjr
4UobU2rLXFxHozmwThEnSpPLH3hafMd6iNFLQk8BKLyrOeAtEZOCL+94jiUJPh8D+SuYZLIByOOM
FcJgcP+t6Z4Ai5mhOyPoKhMp7renR/ci63hbsNVEHhGSzLNLBSQbo1pikclH4WDMf6uWuhWd3L7J
94VDBB8rDr8JOJO0ZVgvZ7AkYULDtbVRSHCXPModpqSC4BCODp0ivCYyKdVYFQ4T7ZznTNinweG9
vzTBB13EI6YlAP20H1n9koWjoyF5lP67MhIKwY0lr7ky42s96xch3vvXhEicLhUyL6l0p6Aj1f5I
DL21pRGg30KH+sbSW+e6TmhaVjuHJKqFaay1cl72D9C9qDWO0ad/DbnjepgGKYUa8D8tbGslh4QO
Ed+7mYRw9H19Opzj2oNGgLc/Rx+FwOEDCXejsGU5cbeAyKH/++rdf+32+eMfIJiicjYq6EOIutLY
7p9NYem/TsmYEdQT2EqHwxSZx5Jp1gC0QwZTGPnhFVpDTDBkczERp9mbs/KsGdCtbRjzcRar3abA
T6B0driM/vLzNUqW3y2TJqF09bahQcLIXOpAvblpv7TzUtGzzYJnaErE9HDyw2jCzPQ8u83K1HjV
yXkueld0JmH4VrSD8jOO0cQguGrAmqBdCZGuV9FdRS5i2EumxfejLHf7QVH5R+hNImMmSEv5pTBS
UW97aQABFjDlJ1vB3+oeI3AcKsnMvBhQfMtk+jpaqEERgCiH0TJ1ihuFrU9tss1hxf4oEqSs5kyz
14LgQJt1VKk2JAIqtJoPrzrRWzxoNMsgBb6s0GHtHp9sqs7R2//YrBf2XpgUjwXFQkGhTGQ2KFbs
QR2pYWZaY46VGMR7sBKlw1fIzseVoo5pruoD2KNATvZsyU5NhoCBfnCsArUTZbMIzkYCwRwhsXPx
CuuhLnHQXP/vaff/zN242FyIkwO5V/BPciUXXqC6Ehpe0nUv04+jvs7HNGm07EQnfYf4Gb8xnD9n
GBefbWCqLcST1L3aB2MYNplNDFL643BzJe5ImI5L5NK/gCnvWGpgxTxWk0uj0yZ1zUNc0VAhozzZ
uHoGmI9bJn09swOSV37xWqEbVwPgFBtbqf9Y6lIbSbgbUxs04CoD8lMYMKdRuNmiau1xjm8lmaS4
2to9gFbbhocbi3xDuBNqB/hZpKp8qq5HlVX5qVUPTSOX/VdcPKIYMgYUR6Lf/UHMUuqW8z0B36LW
/OfJp6qxDJzkJ2uYxsyJ5M5Qf3fIPpUByCZRtmlNkyxtYlPvlJm+TmJC3Ttur179dhK5f+HksSYJ
scY+SzlwZ+B2rfaIJz6RWYQ1BGRRoi/2Gk+giTQ6lOvc5mQWf8zydEegQovwocZjN8wmd51/5elo
96x7B9h/Mb38+mMMFkcAsyr4978Q4sGpN5N2s4cBI2KJZ0nKQCtSiOof87f8GtXA3FYngzSJzDd0
rm2jyvi6S4fG8gmmddztxK5id0up0JWeEohsnv+EF64nsNxvUqRhXVZw8opnfwhdO5ncNJO+avc4
11PZcy200G28JiWa6aOLAz39AeExhDNNnZEAe2h4RQYGw1j2EukYNOA7NQSCV8VmHbOLmeQFpIi0
jZV7MZjdCx+9uRm6uAEbvS6gUKNI25WcLdBO2ohcUD+1xIbeJ9z2sYqm7vDxfguA2Kyzdb0/RIaT
z0cdVYWUPEssshtGvWzHIP2jK+WN2PtFefr+CpZmFwwWJcHY/rcPWLdK35LiqUQpaBclbjAvjrm/
afRAjuYXcUqKgovw3Bp9y//J7CE6tzDJB3T1v6Yb8GFA7hAFhKDUTSgZqI0meFs/rWudi/jOv/b6
lAypCQuo/ALdV/Q329MD3GEsPxQ9hMGUnicAFcDiioPIEuz/xfbzsdga7+GFBbsaT6OaEMJXF//F
E7Lucp4/00dTsrA4NC+KZ/rRBdEs3Ay1qj2DWHo1a+kRf3455shhdoB9rQxmkvQpk5d2zBSf+/LM
WlgI0jnlWkcXM6tyTRpXsoqYwJx/Io5ok7zP5FG0JTXYgmpChYa7z2bIPAOvn9gfYLznzqBMG+r3
tppVVRwtQhFhKmtJ7gX3leoTwRcgGyOav+geTEouyHbR+GsvP3zYj5xzQAQAi0TzbC+WLqqjXFM6
COyZWNetlt/VvWWhb37vkCOMa2mZncG2qOB4FT8J/8jC1aeEpYVeb0DOKpU5Jl94VwdcKJwqepU7
N4Pt76Paa2k4pfHghIWDLU2Uxos/Lx1LWgX1wyV8IgHJ7IIpwGCukjqxO01jrCYO0i9NqSRnWa6D
fG26rygTUpH8LrRDJvnOZBDNVBWSBLCp3zTVtl3fdhjwdMbiu+HIaSEqucD77F06mGCpkbjzVvNp
9611omTJqTJauMlxD1h2gVqRFrwwoBriVEEix1rP9078tx+x8062+f0xS1gYYv/UMYwoWWGm5faZ
TExFNW1US2il8ufBuLuxhFCLkFDZZVUnkAgoYfG8lTiY78BFzcXJlH1Jzr8vOsabTDG9E+/5uhjz
dDbh8ZLaVYaQqLlxyUlR4090lsftmEAkZh7p9yFPiAcqB+TUjeq5SlqF+0t0X+5OBhIeJVGejxu6
ah0lWHyWiSNM3lOKUhf2z/P7+IsXQ2sWO+ghFC1Jn8HDrGz3dOiWjHaDBcrvDwNvgEwLkyDluoCv
r0Jspv1B7XgbSQfm4/vFA4Hv4oxwOsNDQqOqvoy3lYWbKI0mSLsdqg87D/qDyLNIXgvR8lKjzLHL
D4KUbi+WLU/f9hLKwJYrVG6DovMAAZIAX0dQyI+wFyW9fxKZUUCyFpTmV378eGR6Foo7ALdsnegn
FT/nOsARqTVI1WuTwJVUxULDPQ13puQjWf6wvVe029sduj1U/logSOYIR4gLrKKKlgKszsa+5wD2
g+ny8XrYsyl/PIStygvsCsnyrZ/TmoWNpUmT38mx9pewN2y1wN4wV3pm7PH3eHywUBVG2aSTu/yF
LWnYxpHE0hVgu2QvDWuqlS6IyUYJyyPUhvk5L6Vl12HkqmLPSH85+1RKzJbwvHscagaqj1+fyh63
6VKZVw7uyRcAsGxcKQI849I161v4SYUtkF9MAFvA3hdireQ6OPIyvYNri8hASlqminkWihip+ZLz
zIZyhFh4kt273EJTdV4OVUFZfJnORPmDNBPVZ0y09CRPhRZcCMC5oemyAU3iYw0tJ2sdIa81LSsP
+GHjCcpS41mu3Tt87JBByWYEVydrfdpLcWU2oy0ex/MUIuDkqGgJMYPqHPbc1HWcKCmu9zMKCT8K
Uu3+WfxsE/IjFpxQoH8ou1q1JnGyXi/L1RKlD5TL6AGg+IFQxneF81yo6qxBDqskeyQdZrF6ZUjB
KYYUgkoAGjHqwc/+ZGNYoXjFcWz942HClYquTbshyrf49k4huCU2mDYUP9b1WRN12BuiKKJACHha
4rggAi5IDe5DZwbs9l9aE6Ax6RhQhoTlDzN4nIlea2a04SRyu+ONuUwJcgaKvwn5SPCNyFGiFQga
6CKnunYWVD8jvNlbRvsxyumpe+iJjtnsWfzx1YA1feTl+zJRmOuv93ZJAEnrL6rby6V7CvcMu19J
ivQaWZLnrFSTZPM+Qnkv2aa/vd7XlGA6pTAas4KE3D6rkPXsfi6l/8FKyeShYIygE9w0iwaKWcrf
2GLb8vAWh6tPBF8rOGBJgnNhuWPgQCmHu5HNqHo06fg9izlMH+sqLu97gKjfSCu0AIwJLt7zLaWg
roGxVqluCHwgaSDzKKEAzCJwMjJvFXLIBZy3rlYhjkaoxFPiSrBwohv/YGG/kOxXEycqGJusl3lS
IPSWIPUXpgxv/9BfUSIHtIxcr8g7d1N7V0C/y9f7YFSdgugmR2dSnvgXwXNrUc8HFKjn57xzuv8U
F/BzNnIsN/rsSJfLpCXAuOYRB4nf1xv7Cq7DbyyHzciPWkGY/4gX9g3tEudZrAWSUfszHHN2X4CK
yAVwCmBzDrSljeAopoP1qjXU8EOaY3LLevHsvKDyLzfNIO9wANarhO7sZIqbpyGdIvu2jwmoJhjj
OleFnhQfy4KKD4nYZEQuxzs9LLMOaXEClyTeMmWU6LLN8UHtoZJBwaEOB6Yaukb6r8NEDBY1J+gW
MZriygXwYtzscwc8yiml3CjhieshcqSnueuT6V6iUnRsN0bEURuuOa3lF9Buxf7qaQbTUz8LlRMt
r09u9KhVyqELS87+LZgzDD8+5me95naZ9U4QoYTiE+VFzHfMYtNFxcCuQM0AjE5jSJ+tH8WB68D3
cgYkPHrJjR3eKkQtBOEJNocSTutyooQsvs7VEmcoV9ZZOxSQSQpQvOJOjvmBxVEzzmrbvtrUQP7R
81jY9N5DynmnvOPvR1OB1lNsdy/IcgGKFeHvw2IoM9A9xDxG03hRQ1MAabYo/GzKoPzFDp2ZGwDS
x9cSEgzmF3eoHx/gqqi6SycRNAp+9Hc62/pWidaC/lDKT6WEmnCQFn4PkyL1fRujwT+TSrUjpiSc
80LPmIyna4XhiDFNfrxuq5BPzFXZGJOgtQKY15yUFK+RBlYgKVLmsu9Bs8yLXkgLi83qgVhvl20+
cp4KkvOXwoYX7kms2Siv8iHXH29rnpJEWYZDJB8VlQ19A4mvFP/mqZs0dyhPRGXoLKT0rcSvHyFG
PKjY/FqX//aocUHVfCWPIe/9t0oN1B++UoQ/oJv3edr/GOl9xLt4tLSVt+LWgAzaH4WcnM9AbLa8
ybq2KTPVKiZIfWMX2UyOiA/PK38MDbNCm60T22cjJgS50+dvOGLJR9+Lt7WPSoaU5t90x+To6ldm
AqSx/dbCMVVpzP0Igpa2dtSQq9PNvqBhFvDNhGxqc0Oiy2c9QdugX6pawIkfKW3KdhwiEk/brlVe
GEidFkRLR/rS6HSfo+e4TqTfsymImvxm7Kw+hc6MczM2oXBCfw7NzL5VHwxZYH7VGtGN672Pw88t
t1iKJFtC10syz4mPx4OYrX41POGMfhCAVY28n/WQ6ZImaDK4MEr4M6oIAoWoVr9PFqGWggqyUK3B
dwCSjEWTpV+JV11CwZH7eH6zl11vPD9ATTvzuA7kkF+Kmsa9kGObaLl1UFk/HoSzRfgXT3pq6R/O
rFkA9BhXTmI0+dfMgtsLJlZEGsCt5FHFidYnRd4Cnu41kRjabbQ3N25JWXRZN0SfaYNu0rlGAnjV
dHuch7pStPQgjWZvX4bF9Lla9vu1I9yVKfK5Bzw4LudHO/6+R8LmAeXycBllz79gE4OJHx3RU48/
dBGDEuE9RuLX2NfoRXBcP3r+TpTgZz1/w0YvM/PCyqrlYEWYXVNnUOvNz2PdHfU0G6uubKDvyohd
KMGxOclBfqQVsCDdQHIlV0p95Y5OlogE4pCEdk/qgyc3na/fyPJoM0NLFesnazH05FbCaMstAX5a
xSVf8zjsYvSBEni8j0z/X5UodLXYxybi8YrRyewhk4o6KZkJ5NMORc/FgWT1NR6ePyQcO11Nd6VC
devABuLnvqmPXSQ2mVTujtoRZ8urXgzVLS4cxNN9QzyizaWg9NhAqB0/0xH2lncyyOmvNJfNZnSc
g0VVkeXb5xeWk2k8s5KuEOrtZUc+QQvFID4a/zAMHfSLOsOy0+g4ZKce4clNrMrhL+Czo0BW8Oiq
fTi7FCKvSswW4bkqw/91C8zYXBtdEkeOrwg5FFO2k6qkh81dwObJEooo7tUBb4jKrlT6oCgDDL2B
GNJpR70QZzae7t5G1M2EYxzZufK86bbkpINfEj0F6Tg3uQ1pZxGeX/Z06njJbGxytewlBfiQb0at
RE7jjtkrIAkhcD3Gr7ucUwXu2D8Y/O4X+HiP5sCR5e0ScQHuQ90on7oJqVEaLy7Hk8rRE9HgaVYv
jh8URI/btHaTk2QbYvBRWDhzJc3X6aPesJi0HKgGc5bQ34SDU+VPMH2QaG+ADi57Foi43dfkSxj3
r2DA2G+FaSmaUJov8+LiwF2G3PhBgRlIZ43B4+sg3G3XRl1FTRe5McOPVzPTFoyA5p7bnlxqKkMr
Hn/Hod+CkyE9Q9gMTvF3ZoYCq5/9bO+VdGvTwScA+dOyG0mzwL/kRuXyHuyeaDI8cwo6DnZTw08T
fos+WtESAKlClwCV7+TnCxaw1OkZ8EDjqrR4TJj8cbuutZ8p//O4zpwcdTzCbQU5YTYA4wbX5lQc
lpkrTcOTpwofP2GoII+wmgBmS6ihTbmq7HUjbcQ9dxnbWynNgCiHUlyr3yxagmwU7r6wbK/FWlIS
HW4MT17k00OI6xAP6DeLqs+XGYu08e8G/D/Xs6zZhtpUbshMGZmO8JPvE4uP4bkTHn9GFrMuHsQw
zBTXuGFZ/704VrTki8qOP94J+ZnCkJ1lcRkzL3cPJyY04C53QTkRiHM506UniB1jcjq9oUCi/zx+
0j5BPPg3tDqbLvqHbRAQmXkg4zJcg2ozXuZpanG8rlbcEPjZzAO3nngjqes6VD/5I9S98Dv3zIgI
mET0ws4xqfBtmOCNC8QLD6G81AtUsNX4g08jX5uFRSaY6Us/cxRUa/FGZ/8KniblMikCcPyds1sb
8J/KefmXPM7lgWan5yz1zjFqRXmAAoHA5sHsQbywLTk0pM3b+CE29tISSZn0jzt8d6yBAro38W4T
MjtLBTDitL2Qtl8hN7ck0oPwnh+HviQN741MWbxV4cdssDmCoT/NE88XDc3KTa3Pcsx7Ly4iIgXu
lD6aWy7ZHljrGWmbgtJFU+lvjc2NPsYDqd+fh9pTPnlPB2mEkYcTlpqQNKxg4nzGtJ85OSFZ8oy2
sVowyeCz9iVgO2MzFHeX7M7o6wNb9E7F35IFTmRIcI9adz4vqfSOlrAc7nVeOmBK1pZsYc4X4Rpj
eqW0jsePeSrHXnaH7uri5zrqqe3eNKAL092IusWlzuQzOvubbCfo9wNWS+EExBrMc2rO1Xznjdyn
ChL2QOWxkJhTkmR1/CHStaS10py+EBDxW8kY2+Kl1QcHZF1m807XzPA1KtknXVM9svBA1IA+QUUn
9yzcaLD2i+/chBmKwOUyix5VzW9BusU4L0R/dvEXjFm7DJj0heoxZQvin0Q8xZlWy1F/uEiasxFR
47OWez9JAO/yVlRHUgZdd/B0dYCZ7HAPtweztfL7dGgetXv+sV0NYy9zkTR7HK8EmxhcYfciMWZA
OVD5OFrKHUn9FnYtX/WYsUZVNE9EJaZHTyM3nPURr95OJ/69Ge04TNSGsz98B10mHVuOo//0EWl0
yEpdBsEiaeQvY1pEcw1IYsGG8drlnX4NRI3pzcKk7OBCP8PXD1B0WdDDpAWem9GAtvVulPRcqDvn
5YSsNxg7x6aDtbYZolvQ99Z1BJEQ6Tm0dGPNDPAj2aeWak9ivysiRUvNusGz+mU3o+L/8I15hr26
cYXKH3kQ7jO1VLUNpuY+7BOKBd3V+gLDXCqMdSeWv7cbZXeZwj/RV4jtb8HHiVnSAJC3rJLvvLSo
QdxM6JWYp0keCCfRAusPsE1rRx8hLsGHyjOKz8SpqPbMRO/xQM3ns4xNHWekjw+C5laEZezqB7GS
J+IIOpS7QphtPGqMwxyB5UxWL4yBdiQLjuvE9PQRSbaiEoPwtasIz5bvGESBvOy8LCPDP+z4NP+G
dr3j2MoOwVWRJp4BsTtQzMmezen6O/EEp/9qncBksAcHISjdYUVw6e18ma16BpAIB1slR/jqXigL
JFk0AxiJjsk/TDXHVk7oQchQUO8iY6WqpfjEvnzGELwAwfz8jyr/tr1XrYJ0TNTaDElq9aKDIfoF
0pxhbNJ1XfmVEl43wGVJwnNgxS5Y7lTroFR0OTeWnZKjLa3kVfw3YtagLmSNz2pAzKF7jiKD/AvO
SDcYesPIsUpkNF4QB4heXVPRuQmUwQG1yoayrZWSYfb5gUr0E63cIAhGwKM3uV+yS4tAUNImjAI1
KDFTc4RWpkqWcESN1h7mTbfN/fFfxBHK/uPOLY39AAgGmWPP8taw8zWY4KKyvOujwbo+4kMSrq7U
q33yJ9WZzhIW/7DvaIgK7BkeG+YXe0AvOL3G+DkrWwaUT8lNUeU5qnT+2DEilvEOGd62ET9JA1dg
iIRp4/5iBdXn3b20UTuryYnCmFCg/1m/hXFB/26kVjEk7ULohg/vq8EhljOvK4uEhuNU/JHdQobs
uTnKQJd6PYDR51N7yi1P4I0VGq2WcY6a3xwcalurmdaMHr5BnBpOcccadOtEM3FqN+kQrhvAKFzQ
UJxR8+gfE/1FZDBM7eFmoy2sBIyI3TM0AW9ibUAk4gjaYaf0J7up7UoXeCA9ZbjGHuPZAfvkFWaE
FOGOdZrwYLemBhsJU+8nDngGogvXsj694LoLbx68s7ZCmmAm+uflR17LepM3T0INlY6LteOBargb
q8Z+cNNRXSPJEe3aAs8AzAKlwu/cYmT61Nzicq9qBmiab8YHPGbxDfOIw4MC49X4eJoR2DBFcf0c
MtgLhh+ov8WLydbq4P8HjjEIuM7SJCqsvmM1GcLoaO6ql0jWTF7VP1iE8AglMCFpSsEvvpwOySt8
OfYtNRIntNr4RXjXwhJRD1RRscF42s0/LMLPIqWdS2V1Vw6hWlKC7vPQDZXo0d8YVYe+3Y7B3/9J
jXfd6vJbRedOCf9mqeNyO4d6n0nNl20zEo7UBsRpjX9rxn0tWw3HeRp5diE0sZbtgT4wTuRqJ+OQ
LrcX5HkTfHwJpiWLpXg7OTTfT3H7cfWVl15jlx/vQLW951AmjTW4WQVN/a1WqdcQcI9p9lU3fTEP
d3B26yDXx+K9C4Pei+si09vtiTYZG+cn7jnUdOcqj7Rh83X/80zdTQK7iddA5reE1pTbU0WBVPN6
Wmwi4hIjJ+JMHTmaG1Z+bGQoiVBidqGulfVuBkk/4qqsmOcCZuaIfo9L0V/VIAZ6pOa/NekuQXYF
nCHfhUuSeczeNw62JXxUS4HDAEYUHJ9yAKYjS7wRj4l2Uy8bG0mBtS6rac3ZukObV72xb/yEeARS
JsinZoAhbVDhlClm7PjpwEruEWEYzPc/Y56uvvPDImxgeoJkHXQ3kQ4ePiABx7VvFRw9mmC322ZH
SX7CvrQMiIQXvufaF7iQqMggQwQg8jJ0Gkw1/g/RAOvzGCYCPXEHlyIJfoFlVDz3tBN37MIVwhpS
CTff0n40a6wWMstYg7oD4jGdZdIbfX+eNKmoaniMdpw2M2T5wIvB/A7gWStzZhInAmzDklnShwle
tYPlmMaBsE5Bt00QQ0k9tarpjnP7mCEzdEC3JtVowncYikS4EI6l4+fqOEktq3DcswmdumAgjc04
vCNo+SD6g3znDc+fX1QG2UbW7++1DyXPLrT2nwX4pyiPohHUHBNlr37oZ+GwGU/TOnlJpdsZLWqV
kpBVxsJkc9j9JHRPB7f/naNi92nfF2p+QdtG1kXz0tMfrS3hBNIn7f4+KhAXnB+II8WTczz1s8i+
qls/XCsY76zrhsWLg+cC64poc/lFueZUAZBF7tUcM7heDuzwK3g0ChGCn+6ak5O09shQHx6gQFLm
zBgUHfmj8xb+QOgClP+J3sjnr+mr9oQiH9bzvZyb8medhhoWYpquYngRTJZ00cR9kQpt+QpZRHO6
vUohe1PL+hFNN1y76pYGYV1i4h2dm/paOlEyt/JxAu7EPJI55NmE6hUJGaJm9Sv+F+AUX8uu4Rn9
gQCeugoK/8g2yvc3SY2Y7DxfTqioV3AuFvXLn0TvgkUGIpcIlBa4Uy/xNHoDF/8976H65sh8rpHX
t/hhljV+CfmDMjtjdzyVugAYNrzORCpmdW+3wkh53SIpFE80ergMjblxJvOpXtZ7shKRYZgjpjQs
YcikubUkSPa+K70Maj2l6G7XkxzcCuZc36AtpF7VCRu2GlfRzAGqVL+7ATZ1R1+Ub1U+rcREzYeh
3cSKffx5wD9PJBgaaSmINVNwxkgA0JtT2A1ypBV6HLn36IGi5MqXSo3dusL+Mit/8vnztI45s8T+
/rWA9YOvdeIQhxEqhGTLSuPTyj9fC8D3JSewkDGq8+mq3/ZS8jILz/Dd7z4avIHnomVXXL1dxzFO
u7hkKLM2qxrlNZJvBBO8Q74jOe47xV8xi8E2ILqDUkUq7I3ehdzak0V+sLOL6F09hwpueRWJEJ4E
06eiB8E6jTULsMTbx8v4S2SqGgdiczlPq+KR92eJGlX0oXSrbJvZke0bknczftOKpqdr9nL5N+7F
bgLk0SjFN1CD4faaAwQ8bJrBZGoJajhMkz6MahF0kjLILa9u3unWnhbh/B2FcXq5il6G4DfSOm0K
Fc2IAzjF77zAQEdrSaW9KD+VJEpGqEIIZVyVhS22G8uHBC0B+t5fanJ7t50yXL/Mb+Eg9nhmWc2F
CmIMilP4B1kMS10RlvArfUzdqDGDi9vbUjsoqWdhYx5YRzcleAMg/+NFHMB0UtL6iEbgQ1alcwOT
MgjaH9CGfD4WTwmzZVkhj1c3TP8rJuUOZriWQJVrlJ3uWURN84QqTMoHdDeY8sJaUgkDmsH7McEA
TCChqkyJMeGzV98clY6cOwMdCLaYGQfQ24hOEk8aQp6xS5IqZ+tzOgXccvE94oyRUqCkx7ib9k1y
diO1Xw2EiZUTrdk1dTAlw/KV+YXdOWsOnsG02LF33cujt3kvg43YQ/BoZfcLgSxFUUR0v5IY7Pe4
EFMozLG+lAbPamtW1OnWrbFu8LGGLdGp0+sLVyS0DgprtPTO6ftdU11IX+QHH49+I35Fikd5yqIt
2rG0iiIWLT4y/TRc+HGaY7vV/AF0RTenpa7n3yxCWw2379g4HnnuRImyRbr+1ocDovq6Jrsf0a6O
6cwvR7/Nm1wKF4MgMAwjNqocaZeGLfXtY+f3zxC6ae9+lOyxPelNhxaCFEPKw19BkYoGx6tA/u6s
BhcuZ5LRri2yhfi4jquxu13Fi3mGfK+tlpxS/ptmrj6DyjASFuPcO4pgU8acM4XZup62aRT/kqPP
+8SlWlL7eNkU7MGrunBXW4F4NfG54TeRdPzztpSxLh0MbeZB2PjC+rmBS2nVALb4iOP32M6COp7f
c8wnHfyK4SzWn0KOly/yglK3CcWRIkreBA22CiVyc0EqV2IVpfCXUQNhfBibwZ/xDg1A1bog6aO9
nFEqyM0bdoKNpQV2ildP8pOfsCTBcN+m4PD3xDW/Qa41Vvu2sRiJB5cZj3rcVitjeEC3gajiHzww
4B7g24gVBM7eFdBTSrEQW58i2pKCWnwfS64s1I+0sV3n5+k3E8sorwJM4RTrzFh9rxXvJ1dj48ZN
SCKmEL8TmYhWncLXViQX0RyrIHPP9lXYPVsPkOdiiDLxWibh43gQr6DcM4XqQGq7c+JM1uVsb2yE
f++H32PNzTYDygaJGTSDxJIAmnu0YXktbaJmb87aa978mfMrjQdUqSbGPFSAaYbSuV4pBVaQbG09
Ln0KLkUk6v/KKzpcihAH398+vBFhqfUe0qbelbv4mnZdrrx0AjZH8N+PSB2gfchE/RuJ4BSgQBGi
LtjWR5jUzMVAGZzbd6Ek91mqFvelxIkm3fSp9G8otXIOguyP+/4d/LR1NdvMNmDg6G1xVnhTSYmr
QTZlIFClbYMpG5wnAV+CvMEIjxUD/IueDYtxiO16BN2jOcY0M2N4aOmQJg+C8uSn4s+pTN/WUR1m
mqnKRYPs4MllyKJyV2yrIrh5eflXpCs0zJlM/WF+N0v/+JBJZqngGdZ1ZBoqyJfqzji3RWyECuW5
kltFmeZ8lWGtwLUoF2L2/OfGg0hzFYP26zy2/kcqisRAM1YftTm66PXUTZHs77B8/i9favBvv7lP
e/raqAGZHmWilbGiSG98QaKiYuOwVsLDKbg+5hlbNkIA54teMnDJcX8BAmijs30IJhJE4+lFzXi5
ChJMctDxjUx4P2gxfgKFNQWYnO6bOvqYdd3JQ0yHkQlP15jwSz6V/TVyDKdDfidsq6f4N2dJMsQk
22EZKj+2D1o+dgDLwsm8J56QsgvOdZZdgLqd+sOUtzAInwsNvuDZ0oZ50JgwD9doKBZyXAZayrQE
UHa7WmC7BOPJvD+6PSfPepZQP+qa+QOjdpxDie7nhrSjkYiRII7mnCvgIzJhTdEhpUnfOdQulPJU
oZCWNF/3USsvoBV3XiX38kzLY2PdOie9/JFF+kelaF8oZVUkH2w4BBad2ISxmwJEUvRqXFj8EiPP
Zp2vzfPhdn8+7Gd27nLI+egRUoip4Jw2EIpTxRnpyaM6VcAsNUDk0l90Win9gPF6h6yL0kxUlfEb
60erx+F3K6oyqPtnBrVAWKdljuiKCGIEqNqxa6/kFEVTEFpKK9FsY3uKF9yEkja95VwNwpKnf0Ig
/uIMuV/Ud+zttI50RJ4/pPmIowra0nqvXvLfYMgWLCivBIz2Vw8lRBGMaELUlZFW0/IIks3SzwNu
2EJanVrr4qmxUunmLQoRbHZ/ann1Rwv5QA2rif0Ajt3007FcjKcL/TNFcmGgBU4i9PQjX5O9+8qC
1RdzrfA9YWL/Sf24r1rxbKBCIIJ802Vr4SuNWr4nj3yTXWxiL9U/ohWNzFfJuRCbbFVWAHVkLpbJ
MKO0OCbHnnOt+eJyfOblrw0jV+iHEtNq4BfHv2zQnvVrrva8dk45Uze0EgWRXLOT0ERYjMjqXgb+
6OSRhAsKnCHyJZ0AtlIigJPE3k08EF0e9aGbArriqrjMi274ojEsRl+7KEkaR65W+ChrJvTjKIOt
Im1/TNnxIL2rk0dpY39uYKzcaP4RmJopfxTWLUSPbGCffmF2idVrBymNciNiTj/x/lnTiIQstCyZ
he0EgSj7tZstxXJ2AruRfPGy1eVKB3oMOCOO8gwJmZLBkf1J9fUSEqTLzzZTPCYPH2wc8JhqXhLf
cWe5gJdl1NR207Vi2ONAx39ehoVfBPFXeu8RfTTLaEpFWvlo+uYQXUwqo3CKR5GxaJaUiPcUMJtF
Z9LO+71cjffC+9l9tlLfd2wN74MgjjHjtZ+O3h0fpSJKC1t4nt5xQoSSa3CkbFOHrH3IhQP51QEn
CzlENBFUB7Vcf4Ph3kFa8MuAsJmHrclwW8hTk2LOz2dzmzFpvhAnXHtx+X39CMC4rrXW74htAo9b
zK/2tv3lM1/765ggRQ0AzvmSh2ss2k91weJn81IKF6zMIcLyAz4/piAYMw1XuOlyBw8w+TAUIdML
3lLSHqdjeWM7POlRc/JnyxuEWwY3DQErc25/MjWt4J5VS3TlmmIEfuXlrcAgkQOBolfyV/Kiscva
vi3unJHIrp+x+L6xsEbuDNZD3r4MY/5bAS9aHYn/0YjXoesU/gzJSb1yqx2x5pm03A3s68qsXOBm
BJZdpGfEJ/tUqQT1gOlex0LulI6p8x4SeNQ172MBhiznSps6ch7UVo7Qqabb5matRR/ZOh5ctXrf
Tm439Bc+N+JqIxlpHtIHyi7877aozBhXHH8LGU4bFnrW0cNYfUJkRGzLZg6A90bZmb7W4o/4I2e6
6gPvbZ18lU1JW1CK0/vyQrMSCi+DE0jLDdlA3iz5B51CTKrVoeQ2a+5KOt0TL9cAZySOW9s8W4Yq
JDcodrQnPCLgHQpFijC3P9p+VmkhTmBCMc1s2Hcbg/3QS1PmuV3kNnPsjVhwK8af7OxiuN5otx56
LDaJZdoD6xCv0U1a7nbZt1pk/cp4TTpiJfqJnEXnv00cLN1VXZMwpLbg58s2T2MgpDXwNKt3DuVw
CsxMJNvyVmskhERDxbu3Dciw8DGEO0c3xm033l+do7cIkhUMLr/mSNGWbqYz71GeeoOBrLyOHaTV
vStJT33UGO5DBp4TBmOoxR8rDH46qeOzSikigxBeiyOd4IciSkWJogDf7QJTgAlcno8PDnJC5xR/
E8zvP0mZ4IA2oDZU3qzFqrTde8fVIoXslHM3mTNbQ35zK30dZd7y0KrexzEy3gxDXXAPu8AZaVXf
tb4LmqXZ5MApiKrX6f1dp05sqDCA5PpvvBNaPOzqdP0DVlNlzsJXxbA3ecdsOzHyy3OnmM9a7/qF
5KcYkvqIbC/LiBs4hHrWg7IK5rDTzhhF2TjEewc+bqjYAuGQVz1F2J8Zp2G72mUq9fTl3Z1LIMoB
pz4VI4tEZiwz9hFCOPPbKf0dK1EnEr9IQFLm8/dkTmBHJKNswV8mKlQNQJYHm0Q0IjhkRZ0rSJxX
ykBevu0We+WuU0GZQFYoKNSlwtkg9NVdHzN24t1DtqY34i/XxnKRutQgbC2j5Z+3kVOt0C1j2QRM
7Vp47gKUeQ21SYv5IcZ3kg/lQpVQ2OylvKJTp7p2/hhKM4hHpelrWPmecnJ+vW9xNn5urMsqJC5G
X8dGurrQeIlpNo57fZyGvTaN9BZkvPhxDyk0Gdk+PsTvsTwBBZcEWMLQgsccEnPnObf4cxVhwHwm
FvdIDIdAiVvB3qgVQJ9/IoR0pIlosPMkYVhkfGXsOzbQVScsDbUUMetyURD1Ih5ROudV0rCn6QPl
qEjG4WzFiLx12Z2Gy2AxrtknV78cpwT3VOLASTwcq150OmiHqCfteI8SorX4ZX3849m2mFFnV8bT
xvhsyYUfcP3a5sz9UrObB92GfOdmPBTr9HKojYpUPyqpNZLMIpOmo08FTfVgEbAZv1LZP/4Wddzu
cmGHwjnm4t745wJOx8bSi/Zh7Yl/9feXrqN0UCpKDPayHVeokKNzoEOPmoAXPuhov9+Zv0l/QZhJ
fX98/dmOVv1mTGYAFS7GS77mcZUtpUA+pB7Ih7tmxXMwwJwne6ooKvaaxUqojR18qW2+Iz/O5rZs
9xmgQawg4KvOpc5srRsssNc8Z86hQL+R2nXufR3JPAFoVbkW5dxeZ3kXjxoUsKePXXt7aTYsfIDo
cOf9RZci0gfhRoddAjPppAbplT4zx5hkIVrxhMMibj65p1RanmJls1Lz9ry7xmw7esnN5az9fKh+
gLXa51PYwoXy4PxPgZpGAPa1OsynJfHLonFjDAkTduvwcKAGPM+yTDcuW0XThj2hqrePPecdRUCu
Z7CLJV6fHx+WHdNRLLyQGJHgBzt4QsbLoCmaEg/K/4TG+HKBaEJ75fF55UaC5xTOcpFswL9g39zB
zsLrSdKlB/t5o0kL2HxkxhShT2tvjvj87aruxokcKOukoNjTAEhYj01TnsR6+AiYL+NLkHRSDas1
9p9VezPSxKRZyu0oZaLotYOa7ECfx7pFp0jOYVVkYV+E9bSoIbE0A3xoMSiltoUbwai3cvmtdIMH
y8aCz5yCk+exvuZj4NsKAgjuL5GAtx9hJ7Si13H6aG5xXi2NRZhEK5U90anvBHffg+OuL0BA8yGl
a/DryjWOz4JlGZo/nH5/Iwr8kQegTIXskn66P7d+oCVV08DBcKg6EIppKCZwuZGEVG65KjmjNC1F
reNEavYEnLuX/OE2JjTRjQ2TMrDYTNwCDmPeVp9NFOcNIRtsReHZLwoziUxeiGTDsQFJzOYgdusf
zkmDJsUFld+2wI1b15qKt0tPVPOdrQ0lpim4x9QooO5YCqz1i3wcxxGZWxiS8K7zXXk6StfI30ok
4psZxx9QREdj70xZnt2Vm6CAIpB0NwNUh7dOMFLWmZhPIv4j3SlpTupOmBpSv4OWHQwVdTj+oRZV
p8JUc7c8K/VywPSFe9kmi/zQtF0KbyAosMC7m891yUHB2IYee3CwGpdRe2/CdVbNVwt1OhPOqW2O
aEsfuucmZzBihu++ezzcCsG+5rduY83+NbVOsROVhwxmOyMgcwppU4XrO5khP7+WWLNKF48emyYG
eS9zICrRqqlUH5qQObL/jJpeutozfs/buNb7nr9ZVlm2B1wcpgfNeRSEDMM5pMY8oJr4FslDWgoU
2HnqzC3LkQlXu75Ow2do2HhywXGIuDbYEwpXWce4vr1zw+/CNEVSpoPq2MTR7uKk+rhUag9FcAH6
JEyXd61/CHvJ5yAAFe9mCDSagFeBm8fn+l/1fBd4dFA11aB8wTn/vYd7Lx1WDTc915dFxjFa08fH
uVcGhlTkxAptM8QvJ/cIwvKEA6Lcz6XxabUgiClir11PmMr1xmcp5+0BNzFXWT0rUJyTWsgNYp95
v0xSZLcsgdT+W5VBNByGoOgHC9LYhBtX/bpwDAy7uou02+vMBBgeH/x0udBLDAs2Nx9jrgxjVCLm
FrDqww2pqzfh4acOATOJ4clg4QMpnwqtfTcJerjEo6+Q4YLfmUa5sZKqoyw/h+lYeSP5+I1T64N0
jkvguipwt87eHPw6DcOCpJnF2+nYIRLpOtar77Jqd4H79XkHOJnMLSXr/QElQECYN+OHtDfGRzDd
381aqsbQfwN+ozHwi0SrcJ6g0d5+p5h5s/N70M1BE0kApRDlBMaLveNSOED5kVCouxYeHuJ2Uka5
kmeoVsiWJBiNsvHc03Rrz/jS2Ovoxk0zG5UuV++kWBRLMd92qy4lkB59xyo4pbDaEnHM50QmC/t3
rsbWHo5tpZPhzsGRytXouecsJ9QeGt6u2e91eMN18+Oj58NugYA+T8uD0JW7miz9JPw2McbSbGeT
miov6VEbgESVqIoFMngHB6pWgs0aghi9HBO1QhcpT0eQMF03BhbeZZugFhLZDvuLaaWPw/dHOCqh
pQnLColtZ3fjs/khgCQZGE4ul6Pk1hliCem92A9tNpTomXdy7Qb29RBAI457IHi2hgERVooiu6W+
JKAOjYGwNJldCR+NVH/WStV5583UndP2yGl5o7jrF/eZtM9Fy13VkpV+RsGFEuPtOfjKu9IDXW30
NueRzTEB9786LBuZ+7lpeoDDwtFkmyMcJWOSa0Dcf4w/dJXSt4kP1D9ihDKO+/CgnpZIGRGhwicA
RIGeyeCg7wxsXmUMJtYm7vTWFk+C/433oD7Da4V928E3FKHUC4eajNXSbUaWZW3eT0GETQH9SACy
S/6GuvIIIOsY0gA3cUA3tRQRkG2pz0ODuLipN+GH0PQNTDqCMwiyKwCGxv/KPw6mErrBT2gDbUW3
jTV6pJ+8lnwFR1BQeKTgaqTCtgAv9oMalRSBNuYBlHsB9bkLT0nHqaAdn8J91XzbbG9vaVeNAi4T
5wmVuG6YlQVxkbpoYs94Y2KEk8FfW8GtR6wuln1tVXMixoVqaQYKKZZXtBhRAbw8mLV5ya7gkx54
TGutOdukNNkVweYmKN2SMpJrcervsvFUZuoC86FXV9C2o6TL6X4DiP2DLpJQanXh2asbAPvRv8EZ
SaMTbqOVs/aOf3ybSfekq/8stAWISf1CvzykU8C0uxC9Yzebla0ElvcHJFsWSK4hEGX9usnurtqO
5+ZbwlOykRar/ymJ2YeJBGAEMjSUSS73O/26nLcq5tWauBjw2VjRso+DkRKGmHMSvX63O1Y6xv6B
neHlffmQEiwpNrmjuzD1ZSDqNHSUhS3qdnDnQhd10OVrr2vJpXg14pqIv0O99J7+wBTn0JWajnwC
OY9/IUNu+LF+hufH/CMUZ3abCTHE+ZMHJ1ytMi5MYML4L3BYqdF/aTWThreU+/5xxHjKiC0gWhcz
JBRCZ3AuXvQeB7yw3D73mRk8TgRL9w0U2aVUMZ/RdADHOdArJwO3zMaKGMVKWHw2NZ6ePU9BMSl/
1/zukNPgkfD2/iMTLmW+O28pg5E9J4lO06y/sr3h3nLdunbay9SpeeZoJwoJxlXdOSvAthff2k7G
GPuUgiOzDORxkOPc+CNQXjOtUYyLQ07HAMRusJOIeQSU5fYcwZriT+gRChhNMC0IH7g0zCDJRVxF
VrVc9YR4AZsuiygDIPSXWeBTgJf2GxsKStVhDKRh5LHM7KZKM9p0VUb+Mp8NlamcE4OyYDdnWZ7s
BWh5NGf9Gb2T1j0UL8TECHzwJrrYek0qt3h6g5rhRYSmIwpjACktYUM1dneoAQeIADbiWpRmvvIH
F2fWUEZfq05CaeLnh6u/wpkf5F7fF/LiyWo8GHPB3TbucE4LUDgOSSRB0jBisTInuKzZnokqPvNK
n/YiJfiLcJcbE3xXqXl1hQUkJ+44Sq1jahsBQTlfK66/NHVD1F/Ho/A2SDzHtGRJ2vOsz/omQRAQ
Cq4C54b73eRY4wMV3WPqf+8UQmgzI6sOF3E7so89dbKe6vbNXLCLUdmjZnde1fcKnHPmZhtnd2mJ
mpuZP7cbBdufhfiVF0ypTAOMP3Ma7Ma5i2SI4yj6YoGWR+Wq+o1cGNP3+noXZnBnUQdeeE4ljqOh
aqtaFWVTG8RJevm5ZR4WpxIQTNTZ1C39a1HOdWHnyNbUclq6YGpe0rqBTv2Y2Lm06NmUuYNu+1lU
ImwXZr1IdWx7TSY108ZKd36jUHRj9FLfQjd+H59Rg+XxgJ6WASYboGoa60aIMIhv0Wdq1p2lpT7z
L27J4OVOuQVGDT0KVV16ddu/O2CQXrKGKd2hWdjv3n3cdpRe3TPS/DjuNTmZcLhn0AMnIIzgN05Y
olppyvknqP5xa+1dFw3CL960bJS2KHQ2r4gjSj4xDNCmfXxPLqJtrGTSoPvbZQaYqEOa+ZVvU+Jv
zzZvmRdwvpn0OsDdhIS5YACGFHFFFo/K224FMDYluKSPMRjLbWGn/DY9u79JbcMc9ohzTy9RTK3T
1bHwduwadjRpVUZo5mInGJQ2LHO+ZM2/pbZOqoVNXudoWytoswZxHiG30hLZJo+SJXb/YHrCliRG
pfLmde9SQo65EOHIFsMxJxyEoUHOu97XYvudsEdbW/b6yDw2oc4C66BZdi3ZW50ZI4dOad6c0CSS
m78m5hqQqEsNmmQhwM94cJFch5HOPvm5/isBXx0qbISZEiaK0GvuRaju5Z4hERXgBOaNMFabYPZA
sFaw6AZLDYpxk1lyG3kJhw1WmRD9CBeZUc9BJZ5u/XetCrDq4rGGDFY4+PUDxYWOzyVJbOrHN9Rc
AgsNxbgNL15zTJtmzdUMMYPAnqI2vq4c/zctZULyOHDfohnmJNx8eulvkzwjm6N5Yz5PBMmF0UPO
6T0yHREtTbVuah3fnjwbi5v4v9+OkMM8EDInNBy9SWyzFSLdrHRy5Jn45J7/POYPnE1zlcwca72J
1rt53Tx/ZHNMy6YASui0Q91WtZX6PRncvrN76BIjPxo263bcjmGjnJv6y2Czbp8bBUHDCJ8MPuWa
AM4zrdm1+9Msu42vKsEbVcmoKRYCMuQKVOha9lb2VdCQdyk6a2yt2hUcH6bdGnHJDu+SOabVnB6+
SlGcF88Gwmb+gqL5r0DfN3m1eK7ktOfBfXbaoAT/+gc0oobdZpruWhm+MtJCCnUJ6wU9W2ZNghGW
Gxqc4CaDrtK7JMXeLFMsDkiiDzppDfo6cJkoApuVFTrbx5Qy0AZfLcOsoyHfswr9LPNAv0v+Uhy3
SmQtj73ANv3xPFNqVCAj5DzNCkjeOd0AllAK830aMD01Z4B9IrrU8Ne2iPv3+Zk1VhRRFLHiLEwa
PcK3WkgjABqrFC1OaJPNNz3bcE3oPXMA8lofCDQtxPHzZn5rzTN4K32f31bzju3tUrJCo6/8Yyo9
pWnxwlxg80XivM5FwXByj4q6ihu8vgYEt8S0a6gEhI+AhjzUFfBueziW+vnkGBotQEWxbuZrUUiz
Pa76apwNgAfwCUNxJME4jjrzo1o7I1bS8a22PWlkzFzm/iFQ+7h5pw4sjRo7tZv22s37o9Hx09/M
5X17uO2KPRT56UUB39HT39bICfRQT0k39mezs4K6ETLnPsdCYE6Ca9vRoVBoRfH3q6PqBmCqqKeg
bbqm6rUa3Dcvkg8SEuTNAQ0HidcSCF7k02/orrs62drSutU+QRvlKQNzbiKsMJ5YVk7TxkDauGYJ
7oXh9IX2fi8pmdG3oPbHGFvzzTJvxnigOQQCNiXA9JdYLEM2JK4hGezZwTnbo94eL0HHkBjsgRrK
bbY/tWgbyHYt3v/HROXfjaUp/HX7MkPW0xPnOhYUAw2QvyU/Ex/hLSloEAYAzueARCiToDk7R4I8
OGt1mrDlG+0u63CUl8/PWSRtv7gUe4MZ4YAFfPlntxao60VjL/QEqyI3Vabuaf0bxRc9ohtxPFF5
ReA1qNyPxmLeEBc9Pon+ZhlhaEP8Yx7/H4VLcHR/8k+HNbKKfgn5sokXw2X5FjoMdzKgtLurTVsD
NQfql7HaIWWnzuzlCAE868/aMMqUvPoTDmFs4YHdYb6D6l904oDZvz9E6lVDolXZrj203ZBPDwyV
Bsn8fEMomRDeUa/IjObRBHG7P60f6EfRc1/9B/N4X/vFv4rvj6AG1Nofr5fhYrD3izm4UeQqpfT2
shyMzOjOwFfkyAEW3R15i1k+pCiH2xyx/NXbwpyFMQUzAMhwxAqvsQkc8o+6Y99+d6+hKL4UjEJT
5z068DpeNBRTDhcw8SygUVy2BEgYdyBB1dx7mnLdIGiq5Dhoy7pmjndP3Q0K1URhpdQp/7qvcVKV
IiYjYKTCYcZMHYmN5GvReCnho/oLTsSKwN4rB581ppG5aMqbwA7QJyKe1LuCZVUh09YP+gLmUd9n
0YFVJJuMw/7I/Xsg1+fPVe71o/eoQ4NRiPQ0v1Tsc5PilWfvcJyKW0e+8a1oHCU5pDMLxRvyLSX+
HFl131lWsNdrlGmNDMVUVN0rfrXHpiPl4NkuSo8Ci3dmCKKjFTUnmUdvkE67ISGAAg5QjHain/0u
m8mjI3wotD9CeYqUe3tCoojJGYk5tJtAq33XDVJw7uBBCOq/rCPeis0eA9bYLCyhVFgom4TCQsFU
bXpSP9JC96gIL7OqLLSQh/gDPDeSyFu9gfrQHcZnmMseMgPriJuX1cWrVJmYyuJUyMdf6ySXhYa+
7Pmehww42pcV3qYfOSrfaQc+X9jU6fnyP/JMr7OGu7uxAbS0LU2YOI8C3XXj7f+lNKFncCxz9ESF
KwhG++lUB6F62+zh4SdB5Ymgp3MZ3XbKn0GDqt4ejEaegoMw6wiLngtfLwyyHTa3Rb8ElXqT4PL3
AIMl6HmyhOENgC0pu4bpXXPqoo6ddn3YQdNRNn5o26Xdxoz9y4SqL6f3TyGC6jUEsc4uxVTg6iv9
nlV2GJ4fzSkL34IDbvCzmSRq5+CjGsMkaykLLPEMBoD/n/FPbBjSIub82B4Fe08uTFB64s4yjMVa
g9exZLKkwX8WH2LvcbBuqxeTcJJJH7DmBh6dvtsOSEjzScaRtJ9lb8oX5Kbv9ZmW9oSJnx3ZbrMI
Zh9Y1yXopoMmWkD7I1BK254qU+R7TmrabPgdOeWeBd/nSBcDFeeznVdFLlZFuxT9jOVkIP5FhLXF
+m8oV4KgIepatifG2PdzDStGtODBz3rDLWTlhVsXTG5dgse9FTemOHI2TspwUBkSfQrHYFEYn7a3
TqK5WhykKKacVXzaW5aIHzSkbO11R615bd6LKQRJF0vw52cs3mtTZuAyIKv1R/0AdCa1WMmedMS6
jAPrKkUW8riB7R9vUojINT1VWRaTsJMCKXpzBbIJW36JLrnZ6iHT8Iw9oX8DButN6wrbINiXHgm8
YkBB2MrP0Ke8af5SQZyTLUcXg9Z5e0OqR6saRVpyhdCWunKJaZp7Sae3GiSFft69Zw+XfVgjor/a
lUaPMjWzYyvOBVmIJTFd2vuQngreaK2Pu5IUkzGySCrJSi07HJBf6NwgpGBzO5et6+DMWdElEvzw
s6uiqJiQO82+00hLjIb8VVy/hMedlhTJKravWNUzK8wY8Z/dlg99h/5gSN4EP+iSzYAYwruuP/6p
r+G9xthFp7+TGocmIQ1aI87YWG+biKpNV09SiVDd9iW9C05ZmYaGXXeDwfLHMFIjKWNXMEuJMiPG
xfSZDacslzT6Aul1g5GMYKV3yo2coqeucM/7stRGSKgjPeug0RCRHEdkdTpT52QMEwqVy0mDJtRz
W6HomsdkroCHM2/Ygqe+iWY4zorZ1KkhvPkWB6BBnCm0gts64HuijrDP8e0hGwzdD2QZOhPzwlIl
C1fFxLvf9YSGRX7s+m1gTRJsIvH6N6C96h/hPSOGLhf3GT/ZaJVVefhNEZjsUqFmta69dkjD1VVf
NeNPsG4edWfT+zE6C8Eo1fJ5MDuryOqW5Yx/fFXnShojLPMtVJKsZuLYWJeOjohbh2EW0AtTtKVc
pJdmDDbPe4rf/0XTY+7jaLPvbXfwvbIoTVufyShbsKNIiVoV6BVFvUNTlItQzggBzdnE+9RQehWw
90UAxEYoVF5/sqp7s2BAMa5SVc/7v5GJ5qUjQthiXcU6mXvmAdy+F9PUGc9xbCzQbe1y1CdzGYt5
gkqLQiDObT6OHREGdsulqxBxUGLpsb0bBpIKSpHLi6Iz++3zotKRQzZv19Ni2FKqqBb0m1fJV3aK
bBCthb50gbXFJJSZ0LRQAgAQ2On8SMMHuYl1CjjMvTsqSEECbzjHF1iwOtEJz7Lj8DVNT4CEBpzt
s1gnBH2sRvfqDH4ClDL17T7HEAQBCrIGFiXiM5liMve0MtYkSZz2Aue5IangxWAhIUea87OpMVNU
8WQC3OgelgzDk0HBe6mgS1uMza3jBaN3dSybPLja8VNHFJhwqh+XaJCZLTolxrEGkN6Rxdy8nnwa
adL0mUgjM0KZUXTQuV4dx6yrbSTj1c+Ys1PxGqkX8biFhYQJ1L3YCR3p6SvJeJZa0ZFWDQWY6tfq
A81qs2L1u3v/WYs18r87ND2YBoQtyRvA+mSohkkcZEZ07L0va2X6cVcyEp+Lqttnhu70wjwOVKN3
Lzvxh+w6a9RQmiN4HdNQz4/JDZkVK74o3HzFLbTIsVA9Z1rueYhbFWQm3Rj68blNDe+m0e7j9B44
cMysdDQvInHcklrIhNM7ws4Mh2E8lzcIOR4cupBMdvgoTOzkGqqCYa8hcZKhcQ6SlKVOCGiDy6/6
mD1uUzCAMLHRuLD8u+JyQ0Ecpby5v/azRNkPl+ljAYkUHQbEBNW7ZNc6OsD/+uBfmm1eHQKNlwQd
9EdakUKCXQ0cFvBE/pixeoft3fYmcb8Q2EMyiSw8umHZ5aGZKQb0eWgnzVbC+2EoiTl+2fewgFc6
PRV6mZK6nupD1U+QqPMQmEc/xmihcn1Rp6PeU6F91d6aRKQPck/mIuauoJ80g5kmr4FLxrB59vkl
PzLTlde0slDP+7tv9fNtqkv5h0Fknd5+vGLPK+91SR+Aytq7EDPFYU9wBNrfZEIiBf6SzZTqJx/Q
POoV9Hw7Aee6Qn+XBZwF968LRwjNWbytMLj6zqCg0SZjNzvksNLhqbw+IZclE39GE3OQy4NStuih
6vEaD5l1TY0CNadHyQ83Det0J3UZcy5FuBLXCAM6q8g4IW68gitI8BTr9BbiR5lx3Td2480JJUjh
mDJETQlUzQVvU5nrD8dHE2Fzp7BciqGm+PRNJS5SCh+SyfAehOQZN5rGi0qYBOK1x9FvjK5DBOdK
5oDOuIB2WfQgAdM0JBeUnJWYJ/2+7s3I3Yu3W4xSp/fS+wXmP2yGbASP6ynpcoIk0rKoy1yrPLGT
/HmpLCwbnFh++/APPDNUdDSFIMXaiP2BeFtROuen46Ros3dLd/da5ZsVnoQs/0h4/V75WyN7m5bx
sMLMZugwd1KScZwIeTdAtnr4jQZIsT87qMDlMZQBKGGVLwZC0mWpOXAhGdB3rARumhPRNNkU4cLj
jxKPhmri1Ij+PH43ThC4pkHd4uhUaw+RaHMgHAZEOZm0Xd7wCJxOQYz9CycV9fhZ/KmnPE7ZKl2z
WuqzsY0ypnX5z4+iUvB8ycVQBMdIIyrNpncJpMoWQjBfPA+MLhW0mrlqbeqicAwz+DC7Da/xmTF2
kA2Cl/yhwn8/2MWHLFBFO87QhLBtvBYXCDnXeLyPjjFwNNXtU2NSb18jVjE7Zino4dJG/WK2pnOM
heOlTkEI2dymeHOr18gVmXAWCJ8/jvxC4LQxMbXhhhzjChwdkd7o9JdVXATyV50RjyKauXwr+2Ui
MnIFxEB7zDi4OiO9opldj/GskpDdff6DukEyjqtKoH77ZW+b9y7l8hK50PUGE0wP2J9yw84afxN+
ywJa6X0VO9Qr0t3qdz15Wq2OF/5puVPk13GLNpaa5dmvLUYSHx0WHdMD1LjeByJBQLyGmFeoODyQ
Dqw2ira2eqSyvg8XqPhWKZRb1N8wR/PmXOGoA0G+dYUN+O5pqXbu02PAIwHmjaiwrY46tfh9Rlqd
aVfJk79NbJFXEk7oHeQh0iZ8EICmgjihTrWBYwnGu55JJMcgboF+IQ2ZtSiJk19JI9KHflvHGfRg
2Yvicvjk5Rq/f2KLxAqhood/leUj3p8F8kLc/HooMCd1w3Bmy/XtvYvJRrVfcyD4atdn8UCSnLLQ
X9lj5kXA+s+tf0MA8z65+HGV32QlkoZfK7nRk5+8D+KELk5y+7s/2636ItTR3IXlltUvTfYlEKLl
iQ/FXrFSzPVq+lr4FeF3bT8vW1aDCMuIszx74BZIkUryVY8mqbclchc8UvylnaUSv/uL6eW+diyP
Ny3S6Mw7lip8nQTNIdLpTWlGlmnMu2+fV0UGaTQIsVRzFe44dZfOOR9nG86OYWJV8L1Fpda+Bv9w
dWopcVU+qcuGjKYqlaXc3LuEP4I3jf/9TXE/x1hEvOEWbkqvdOrUnsiOpxz0aCUgh7oPD4jvy1x0
PdNMg/grbiKtJyCt3SQePeB/Iwpd/cDZoJcBcTTJLfuKtdfWdVZnPs1IWWMgjnatQ3D8tugMTVRR
LFAIZu0SAaY/Twa1J7/LlLLQj0Wu8ssgGdmc55pthkPSi/roMtJcUj/tr1vwYEJ+iw4+5UXkh1Oa
jrTgIGYk/ZJjoe8Ae7xFIa5onHuuiKramde2zL84U9Fnam2+0QNHlXwk79wqFZcVYiiLw2RYvLQq
BrqX7cxTF7wgm/HG3Y7t/xMGWnhyy4VuzTXifnsgSiBs0hxuvZNlwq0qWL4pGmAtxGluPXUo9zVM
BwjYASMQ7vchAaUt06ClulwBwaH0hlFECgrJgIuz4iT2BedNuA0LEENQkKQUZ0+nOQbVgj86Hysf
cg8PnTWZNG5EhbIJ6KLHUUc4SE7oxDQYEgQZ3LPUjnL4YKSs6p3+JEYb5yHrDEFqT70AP7QChz5c
INZ0RlGS751Vn2Z69aTrEkAchTY5oopW9ShjLuGIShPjyN+LBEZCc9jMMsQdCWnGJyMch7AD3adg
E6RhiMgU7wSz+exE31rSCL/MFfSc2FUiYa8G36pocb4u7STygQirNRM3t0zbV49FuETrzPb3X5TL
o/Af3/oie2UzXKNC67otEUlrWTdvwTNhgqfWX/iKbzdsyJzCu64SChAReX67wNLFmV8uCcRKL8Yo
QMDIF8VsDmQU5ku/2wZ5NBfI7Nc7GNPFuoIuEcjfxfHAWg0s/I/a2GmKzY7Z0vSdKQyXCj2/ksV9
PplQ0gj3esX0dHM7m43RIhlHAqkJQzTU2jj0XRor7dzL8sAybvQFWR9COKb4JwzLbWIPPoGiqDR3
uCtfcV1B1f73UgsKNsi/Q7KoRtdXUUElvhZwjlj5naJ1bPWZHubNfj7LSbzMcb4y2P7SB7yWiadE
zFL2oqlBnf/mWgdsbz6wgCvrqSnB7WVnTEWzQurDl2JU6vGXmpehPSm5o+Xj0VxPINUqUPeGoBDe
xJrC1ajurooC696K/BVwWNt+HVe77KXX1+XhDIfbdi9fU2qSPBcy4bo1tNYyoZptSiUMw+1+165p
ktQKHlVc4UF7O7Vs3+the8j8uwZUl9tzWemPrZoYMX4h+1Zqo9AxLDnnk2oaTiiyiCDerSdLEIgz
giijgi/UC+AxZePvo1d0nQaJaCi0t0TkpCmfvo2vFRyD8oJy7i1gjRbsl3aGeMNsxBCsaEyZYYgN
9xmHnnESPRBGhXCsh9/I8yG0eWulKALPTEwAdBDDGf3ntbvOXmGqzz1SPEtAMesYupMktl8eevx5
XgWHDLuq+YSkV0unCvZJ+YUgNmBYAUL1j0xYATgqhNhEo+aNyaDNRBWw4Rb+bFnftOq84HhiT/hE
rwG7T5J2U8yvFIhoWAlkuTvojgyoUnDYMgBtDPc1csoHLhr4K2VMPCf75Mnwq+eJB4JTvr/yB8+A
M2/U+WVpW8npZLT50rWKbELY6gS4/kXOzd9tLAcQQiAkxRxBSUJ5XX2PRBMRUcC1VC48tPcfLjdm
pY5PoCAURAzG7av1hTXluqWd0hwDDwAsAQvsoZoeYImv7UVabCyGNSB1tcYrutjnvY4hQLTj4ukI
EPBwsltfds4OnK/zLqmRt7+uqlG/Ac3cUM/4NEqGTPLhJa5gZtIbOAA1CFRnOC9iT9Ojs1HRB9nF
7lH06YoiudQyygrUcIDn1pD0Jv2NDc926jLLkyKRbqxUzPK46WC6RS4Ph3VFoo58GuBUCwvEYRLI
sBqCuC/vu6Wgl1o06H6mUA1LJPu8Ll0u+uvPYW0ji5L6AzlmgjKgEJoErmfVBrztF26eIub4sbSe
fBpnP9JGSq6vQ7tJkv4bl8Joy5T05w8xDiFq4WwJm00o1qkRp8esGI/7aElAuMIBriaMc5y4Jig1
VUY/s6tGu6jHL+zm+1RgArGu1tVfeEarJ/MK7yMbXVPF4B6mVlfDyFFy4h0ehiMhH3lQruhpztVG
W4gHZ7N7I+wbtAw5+zHNwpXBQvugpmya/eCOvkRo5cKc32KKbz/C+k96F468UstipPQYuCndPkDR
UOdZP1DIrZindyEBzlbo0/7/Z/fTi+5VvEjXCwYKaBhkE/Ihbub/zjoHl32lO8ZPe/rrhVLNlxCS
1j0/Q/lXhl82f8FQm/QBl+51fyxT9Uk7iRKhsyOIT+74GBnqG8U9elEuRCNMCUiR821phWCyTFWs
G/2n32mSccOg0sLiS7GIL7gIuFhPiOBTuWy9y4jl7Wkex/jufpIsncvdQzyjTLMNQ7GqPYivZeIc
mjTB8fncxTmtD8ip9kI80U27o2pdfFbha4vAI+qQVANNSNXsqcBBirAT1qMidM6z3SC/or7BGePE
rQGLt7dglhXbPMzIBEbbrgi7zBnBrr3Mk6mbdc8XMIwKAebyyNh1h7W+uk0EsWoCUEi5zFP9XcPp
criLimF10oWRAoDxHvBVipomAtpqB5x4H0yo9i+0ENzIrCCy0E5YESVBJQ+RSZUzGdYIHezJDFMt
KxUOB9s7JPf4iL/Ku/Ssv4BLOZroft3HzmZbe3UvW29duzxbTRI71mbB/l+Cr1fGaziZ4xCeCvgT
iCc=
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
