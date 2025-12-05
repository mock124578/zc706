-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Oct 17 15:00:34 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/20915/Desktop/zijib/zc706_ad9361/zc706_ad9361.gen/sources_1/ip/adc_ila_fifo_wr/adc_ila_fifo_wr_stub.vhdl
-- Design      : adc_ila_fifo_wr
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_ila_fifo_wr is
  Port ( 
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end adc_ila_fifo_wr;

architecture stub of adc_ila_fifo_wr is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,rd_clk,din[15:0],wr_en,rd_en,dout[15:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_6,Vivado 2021.2";
begin
end;
