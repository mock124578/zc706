# constraints
# ad9361
set_property -dict {PACKAGE_PIN G9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports sys_clk_n]
set_property -dict {PACKAGE_PIN H9 IOSTANDARD LVDS DIFF_TERM 1} [get_ports sys_clk_p]
create_clock -period 5.000 -name sys_clk [get_ports sys_clk_p]

set_property -dict {PACKAGE_PIN AF20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_clk_in_p]
set_property -dict {PACKAGE_PIN AG20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_clk_in_n]
set_property -dict {PACKAGE_PIN AG21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_frame_in_p]
set_property -dict {PACKAGE_PIN AH21 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports rx_frame_in_n]
set_property -dict {PACKAGE_PIN AK17 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[0]}]
set_property -dict {PACKAGE_PIN AK18 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[0]}]
set_property -dict {PACKAGE_PIN AH19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[1]}]
set_property -dict {PACKAGE_PIN AJ19 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[1]}]
set_property -dict {PACKAGE_PIN AJ20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[2]}]
set_property -dict {PACKAGE_PIN AK20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[2]}]
set_property -dict {PACKAGE_PIN AH23 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[3]}]
set_property -dict {PACKAGE_PIN AH24 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[3]}]
set_property -dict {PACKAGE_PIN AG22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[4]}]
set_property -dict {PACKAGE_PIN AH22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[4]}]
set_property -dict {PACKAGE_PIN AJ23 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_p[5]}]
set_property -dict {PACKAGE_PIN AJ24 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports {rx_data_in_n[5]}]
set_property -dict {PACKAGE_PIN AF19 IOSTANDARD LVDS_25} [get_ports tx_clk_out_p]
set_property -dict {PACKAGE_PIN AG19 IOSTANDARD LVDS_25} [get_ports tx_clk_out_n]
set_property -dict {PACKAGE_PIN AD21 IOSTANDARD LVDS_25} [get_ports tx_frame_out_p]
set_property -dict {PACKAGE_PIN AE21 IOSTANDARD LVDS_25} [get_ports tx_frame_out_n]
set_property -dict {PACKAGE_PIN AD23 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[0]}]
set_property -dict {PACKAGE_PIN AE23 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[0]}]
set_property -dict {PACKAGE_PIN AF23 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[1]}]
set_property -dict {PACKAGE_PIN AF24 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[1]}]
set_property -dict {PACKAGE_PIN AA22 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[2]}]
set_property -dict {PACKAGE_PIN AA23 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[2]}]
set_property -dict {PACKAGE_PIN AG24 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[3]}]
set_property -dict {PACKAGE_PIN AG25 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[3]}]
set_property -dict {PACKAGE_PIN AC24 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[4]}]
set_property -dict {PACKAGE_PIN AD24 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[4]}]
set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVDS_25} [get_ports {tx_data_out_p[5]}]
set_property -dict {PACKAGE_PIN Y23 IOSTANDARD LVDS_25} [get_ports {tx_data_out_n[5]}]
set_property -dict {PACKAGE_PIN AA24 IOSTANDARD LVCMOS25} [get_ports enable]
set_property -dict {PACKAGE_PIN AB24 IOSTANDARD LVCMOS25} [get_ports txnrx]
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS25} [get_ports tdd_sync]

set_property -dict {PACKAGE_PIN U25 IOSTANDARD LVCMOS25} [get_ports {gpio_status[0]}]
set_property -dict {PACKAGE_PIN V26 IOSTANDARD LVCMOS25} [get_ports {gpio_status[1]}]
set_property -dict {PACKAGE_PIN W29 IOSTANDARD LVCMOS25} [get_ports {gpio_status[2]}]
set_property -dict {PACKAGE_PIN W30 IOSTANDARD LVCMOS25} [get_ports {gpio_status[3]}]
set_property -dict {PACKAGE_PIN V27 IOSTANDARD LVCMOS25} [get_ports {gpio_status[4]}]
set_property -dict {PACKAGE_PIN W28 IOSTANDARD LVCMOS25} [get_ports {gpio_status[5]}]
set_property -dict {PACKAGE_PIN P25 IOSTANDARD LVCMOS25} [get_ports {gpio_status[6]}]
set_property -dict {PACKAGE_PIN P26 IOSTANDARD LVCMOS25} [get_ports {gpio_status[7]}]
set_property -dict {PACKAGE_PIN T30 IOSTANDARD LVCMOS25} [get_ports {gpio_ctl[0]}]
set_property -dict {PACKAGE_PIN U30 IOSTANDARD LVCMOS25} [get_ports {gpio_ctl[1]}]
set_property -dict {PACKAGE_PIN T29 IOSTANDARD LVCMOS25} [get_ports {gpio_ctl[2]}]
set_property -dict {PACKAGE_PIN U29 IOSTANDARD LVCMOS25} [get_ports {gpio_ctl[3]}]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVCMOS25} [get_ports gpio_en_agc]
set_property -dict {PACKAGE_PIN T25 IOSTANDARD LVCMOS25} [get_ports gpio_sync]
set_property -dict {PACKAGE_PIN P30 IOSTANDARD LVCMOS25} [get_ports gpio_resetb]

set_property PACKAGE_PIN R28 [get_ports spi_csn]
set_property IOSTANDARD LVCMOS25 [get_ports spi_csn]
set_property PULLUP true [get_ports spi_csn]
set_property -dict {PACKAGE_PIN T28 IOSTANDARD LVCMOS25} [get_ports spi_clk]
set_property -dict {PACKAGE_PIN V28 IOSTANDARD LVCMOS25} [get_ports spi_mosi]
set_property -dict {PACKAGE_PIN V29 IOSTANDARD LVCMOS25} [get_ports spi_miso]

# spi pmod J58

set_property PACKAGE_PIN AJ21 [get_ports spi_udc_csn_tx]
set_property IOSTANDARD LVCMOS25 [get_ports spi_udc_csn_tx]
set_property PULLUP true [get_ports spi_udc_csn_tx]
set_property PACKAGE_PIN Y20 [get_ports spi_udc_csn_rx]
set_property IOSTANDARD LVCMOS25 [get_ports spi_udc_csn_rx]
set_property PULLUP true [get_ports spi_udc_csn_rx]
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS25} [get_ports spi_udc_sclk]
set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS25} [get_ports spi_udc_data]

set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS25} [get_ports gpio_muxout_tx]
set_property -dict {PACKAGE_PIN AC18 IOSTANDARD LVCMOS25} [get_ports gpio_muxout_rx]


# clocks

create_clock -period 4.000 -name rx_clk [get_ports rx_clk_in_p]



# spdif

set_property -dict {PACKAGE_PIN AC21 IOSTANDARD LVCMOS25} [get_ports spdif]

# iic

set_property PACKAGE_PIN AJ14 [get_ports iic_scl]
set_property IOSTANDARD LVCMOS25 [get_ports iic_scl]
set_property PULLUP true [get_ports iic_scl]
set_property PACKAGE_PIN AJ18 [get_ports iic_sda]
set_property IOSTANDARD LVCMOS25 [get_ports iic_sda]
set_property PULLUP true [get_ports iic_sda]

# gpio (switches, leds and such)

set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[0]}]
set_property -dict {PACKAGE_PIN AC16 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[1]}]
set_property -dict {PACKAGE_PIN AC17 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[2]}]
set_property -dict {PACKAGE_PIN AJ13 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[3]}]
set_property -dict {PACKAGE_PIN AK25 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[4]}]
set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[5]}]
set_property -dict {PACKAGE_PIN R27 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[6]}]

set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[7]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[8]}]
set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS25} [get_ports {gpio_bd[9]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[10]}]

set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[11]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[12]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[13]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS15} [get_ports {gpio_bd[14]}]

# Define SPI clock
create_clock -period 40.000 -name spi0_clk [get_pins -hier */EMIOSPI0SCLKO]
create_clock -period 40.000 -name spi1_clk [get_pins -hier */EMIOSPI1SCLKO]

