vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_11
vlib activehdl/processing_system7_vip_v1_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_25
vlib activehdl/fifo_generator_v13_2_6
vlib activehdl/axi_data_fifo_v2_1_24
vlib activehdl/axi_crossbar_v2_1_26
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_iic_v2_1_1
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/util_reduced_logic_v2_0_4
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_addsub_v3_0_6
vlib activehdl/c_addsub_v12_0_14
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_17
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/cordic_v6_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_converter_v2_1_25

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 activehdl/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 activehdl/processing_system7_vip_v1_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_25 activehdl/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 activehdl/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 activehdl/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 activehdl/axi_crossbar_v2_1_26
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_iic_v2_1_1 activehdl/axi_iic_v2_1_1
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap util_reduced_logic_v2_0_4 activehdl/util_reduced_logic_v2_0_4
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 activehdl/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 activehdl/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 activehdl/c_addsub_v12_0_14
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 activehdl/mult_gen_v12_0_17
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap cordic_v6_0_17 activehdl/cordic_v6_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_converter_v2_1_25 activehdl/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -sv2k12 "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"G:/vivado.2021.2/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"G:/vivado.2021.2/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"G:/vivado.2021.2/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_2/sim/system_processing_system7_0_2.v" \
"../../../bd/system/ipshared/common/ad_addsub.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_clk.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_in.v" \
"../../../bd/system/ipshared/xilinx/common/ad_data_out.v" \
"../../../bd/system/ipshared/common/ad_datafmt.v" \
"../../../bd/system/ipshared/xilinx/common/ad_dcfilter.v" \
"../../../bd/system/ipshared/common/ad_dds.v" \
"../../../bd/system/ipshared/common/ad_dds_1.v" \
"../../../bd/system/ipshared/common/ad_dds_2.v" \
"../../../bd/system/ipshared/common/ad_dds_cordic_pipe.v" \
"../../../bd/system/ipshared/common/ad_dds_sine.v" \
"../../../bd/system/ipshared/common/ad_dds_sine_cordic.v" \
"../../../bd/system/ipshared/common/ad_iqcor.v" \
"../../../bd/system/ipshared/xilinx/common/ad_mul.v" \
"../../../bd/system/ipshared/common/ad_pnmon.v" \
"../../../bd/system/ipshared/common/ad_pps_receiver.v" \
"../../../bd/system/ipshared/common/ad_rst.v" \
"../../../bd/system/ipshared/common/ad_tdd_control.v" \
"../../../bd/system/ipshared/1e62/xilinx/axi_ad9361_cmos_if.v" \
"../../../bd/system/ipshared/1e62/xilinx/axi_ad9361_lvds_if.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_rx.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_rx_channel.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_rx_pnmon.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_tdd.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_tdd_if.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_tx.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361_tx_channel.v" \
"../../../bd/system/ipshared/common/up_adc_channel.v" \
"../../../bd/system/ipshared/common/up_adc_common.v" \
"../../../bd/system/ipshared/common/up_axi.v" \
"../../../bd/system/ipshared/common/up_clock_mon.v" \
"../../../bd/system/ipshared/common/up_dac_channel.v" \
"../../../bd/system/ipshared/common/up_dac_common.v" \
"../../../bd/system/ipshared/common/up_delay_cntrl.v" \
"../../../bd/system/ipshared/common/up_tdd_cntrl.v" \
"../../../bd/system/ipshared/common/up_xfer_cntrl.v" \
"../../../bd/system/ipshared/common/up_xfer_status.v" \
"../../../bd/system/ipshared/1e62/axi_ad9361.v" \
"../../../bd/system/ip/system_axi_ad9361_0_0/sim/system_axi_ad9361_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_1_1 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/89a5/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_iic_0_0/sim/system_axi_iic_0_0.vhd" \
"../../../bd/system/ip/system_proc_sys_reset_0_1/sim/system_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/24b1/util_clkdiv.v" \
"../../../bd/system/ip/system_util_clkdiv_0_0/sim/system_util_clkdiv_0_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_proc_sys_reset_0_2/sim/system_proc_sys_reset_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/common/util_pulse_gen.v" \
"../../../bd/system/ipshared/8fbd/util_tdd_sync.v" \
"../../../bd/system/ip/system_util_tdd_sync_0_0/sim/system_util_tdd_sync_0_0.v" \
"../../../bd/system/ipshared/fdaf/axi_sysid.v" \
"../../../bd/system/ip/system_axi_sysid_0_0/sim/system_axi_sysid_0_0.v" \
"../../../bd/system/ipshared/5b13/sysid_rom.v" \
"../../../bd/system/ip/system_sysid_rom_0_0/sim/system_sysid_rom_0_0.v" \
"../../../bd/system/common/ad_perfect_shuffle.v" \
"../../../bd/system/ipshared/util_pack_common/pack_ctrl.v" \
"../../../bd/system/ipshared/util_pack_common/pack_interconnect.v" \
"../../../bd/system/ipshared/util_pack_common/pack_network.v" \
"../../../bd/system/ipshared/util_pack_common/pack_shell.v" \
"../../../bd/system/ipshared/6f67/util_upack2_impl.v" \
"../../../bd/system/ipshared/6f67/util_upack2.v" \
"../../../bd/system/ip/system_util_upack2_0_0/sim/system_util_upack2_0_0.v" \
"../../../bd/system/ip/system_xlconcat_0_1/sim/system_xlconcat_0_1.v" \

vlog -work util_reduced_logic_v2_0_4  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/4c94/hdl/util_reduced_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_util_reduced_logic_0_0/sim/system_util_reduced_logic_0_0.v" \
"../../../bd/system/ipshared/8f9a/sync_bits.v" \
"../../../bd/system/ipshared/8f9a/sync_data.v" \
"../../../bd/system/ipshared/8f9a/sync_event.v" \
"../../../bd/system/ipshared/8f9a/sync_gray.v" \
"../../../bd/system/ipshared/common/ad_mem.v" \
"../../../bd/system/ipshared/b442/util_axis_fifo_address_generator.v" \
"../../../bd/system/ipshared/b442/util_axis_fifo.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_dmac_0_0/sim/system_axi_dmac_0_0_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/common/ad_mem_asym.v" \
"../../../bd/system/ipshared/fd7c/address_generator.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_burst_memory.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_regmap.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_regmap_request.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_reset_manager.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_resize_dest.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_resize_src.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_response_manager.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac_transfer.v" \
"../../../bd/system/ipshared/fd7c/axi_register_slice.v" \
"../../../bd/system/ipshared/fd7c/data_mover.v" \
"../../../bd/system/ipshared/fd7c/dest_axi_mm.v" \
"../../../bd/system/ipshared/fd7c/dest_axi_stream.v" \
"../../../bd/system/ipshared/fd7c/dest_fifo_inf.v" \
"../../../bd/system/ipshared/fd7c/dmac_2d_transfer.v" \
"../../../bd/system/ipshared/fd7c/request_arb.v" \
"../../../bd/system/ipshared/fd7c/request_generator.v" \
"../../../bd/system/ipshared/fd7c/response_generator.v" \
"../../../bd/system/ipshared/fd7c/response_handler.v" \
"../../../bd/system/ipshared/fd7c/splitter.v" \
"../../../bd/system/ipshared/fd7c/src_axi_mm.v" \
"../../../bd/system/ipshared/fd7c/src_axi_stream.v" \
"../../../bd/system/ipshared/fd7c/src_fifo_inf.v" \
"../../../bd/system/ipshared/fd7c/axi_dmac.v" \
"../../../bd/system/ip/system_axi_dmac_0_0/sim/system_axi_dmac_0_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_dmac_0_2/sim/system_axi_dmac_0_2_pkg.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_dmac_0_2/sim/system_axi_dmac_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/common/axi_ctrlif.vhd" \
"../../../bd/system/ipshared/db7e/tx_package.vhd" \
"../../../bd/system/ipshared/common/dma_fifo.vhd" \
"../../../bd/system/ipshared/common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/system/ipshared/common/pl330_dma_fifo.vhd" \
"../../../bd/system/ipshared/db7e/tx_encoder.vhd" \
"../../../bd/system/ipshared/db7e/axi_spdif_tx.vhd" \
"../../../bd/system/ip/system_axi_spdif_tx_0_0/sim/system_axi_spdif_tx_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/b0db/util_wfifo.v" \
"../../../bd/system/ip/system_util_wfifo_0_0/sim/system_util_wfifo_0_0.v" \
"../../../bd/system/ipshared/f6d4/util_cpack2_impl.v" \
"../../../bd/system/ipshared/f6d4/util_cpack2.v" \
"../../../bd/system/ip/system_util_cpack2_0_0/sim/system_util_cpack2_0_0.v" \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.v" \
"../../../bd/system/ip/system_ila_0_2/sim/system_ila_0_2.v" \
"../../../bd/system/ipshared/d031/util_rfifo.v" \
"../../../bd/system/ip/system_util_rfifo_0_0/sim/system_util_rfifo_0_0.v" \
"../../../bd/system/ip/system_ila_2_0/sim/system_ila_2_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_17 -93 \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1d9c/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_cordic_0_0/sim/system_cordic_0_0.vhd" \
"../../../bd/system/ip/system_cordic_0_1/sim/system_cordic_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_adc_fifo_ad9361_0_0/src/adc_fifo_ilaad/sim/adc_fifo_ilaad.v" \
"../../../bd/system/ipshared/191f/adc_fifo_ad9361.v" \
"../../../bd/system/ip/system_adc_fifo_ad9361_0_0/sim/system_adc_fifo_ad9361_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_cordic_0_2/sim/system_cordic_0_2.vhd" \
"../../../bd/system/ip/system_cordic_0_3/sim/system_cordic_0_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_wr_rd_0_15/src/dac_ila_fifo/sim/dac_ila_fifo.v" \
"../../../bd/system/ipshared/acd5/wr_rd.v" \
"../../../bd/system/ip/system_wr_rd_0_15/sim/system_wr_rd_0_15.v" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/sim/bd_515b.v" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_0/sim/bd_515b_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_1/sim/bd_515b_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_2/sim/bd_515b_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_3/sim/bd_515b_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_4/sim/bd_515b_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_5/sim/bd_515b_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_6/sim/bd_515b_sarn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_7/sim/bd_515b_srn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_8/sim/bd_515b_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/bd_0/ip/ip_9/sim/bd_515b_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_1/sim/system_smartconnect_0_1.v" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/sim/bd_919a.v" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_919a_s00mmu_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_919a_s00tr_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_919a_s00sic_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_919a_s00a2s_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_919a_sbn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_919a_m00s2a_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_919a_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/sim/system_smartconnect_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work axi_protocol_converter_v2_1_25  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/3007/hdl" "+incdir+../../../bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/62b6" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/66be/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd7c" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/b205/hdl/verilog" "+incdir+../../../../zc706_ad9361.gen/sources_1/bd/system/ipshared/fd26/hdl/verilog" "+incdir+G:/vivado.2021.2/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

