-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Dec  5 17:21:18 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/zc706_ad9361/zc706_ad9361.gen/sources_1/bd/system/ip/system_adc_fifo_ad9361_0_0/system_adc_fifo_ad9361_0_0_stub.vhdl
-- Design      : system_adc_fifo_ad9361_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_adc_fifo_ad9361_0_0 is
  Port ( 
    adc_wr_clk : in STD_LOGIC;
    adc_wr_rst : in STD_LOGIC;
    adc_rd_clk : in STD_LOGIC;
    adc_rd_rst : in STD_LOGIC;
    adc_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    q_i_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    q_i_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_in : out STD_LOGIC;
    ila_data_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_data_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_data_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ila_data_3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end system_adc_fifo_ad9361_0_0;

architecture stub of system_adc_fifo_ad9361_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_wr_clk,adc_wr_rst,adc_rd_clk,adc_rd_rst,adc_data_0[15:0],adc_data_1[15:0],adc_data_2[15:0],adc_data_3[15:0],q_i_0[31:0],q_i_1[31:0],valid_in,ila_data_0[15:0],ila_data_1[15:0],ila_data_2[15:0],ila_data_3[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adc_fifo_ad9361,Vivado 2021.2";
begin
end;
