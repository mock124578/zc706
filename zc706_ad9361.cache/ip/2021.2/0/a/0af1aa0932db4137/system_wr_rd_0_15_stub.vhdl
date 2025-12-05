-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Dec  5 17:21:14 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_wr_rd_0_15_stub.vhdl
-- Design      : system_wr_rd_0_15
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    valid_in : out STD_LOGIC;
    wr_data_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_data_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_data_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_data_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_q_i_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dac_q_i_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_data_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_data_3 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,wr_rst,rd_clk,rd_rst,valid_in,wr_data_0[15:0],wr_data_1[15:0],wr_data_2[15:0],wr_data_3[15:0],dac_q_i_0[31:0],dac_q_i_1[31:0],rd_data_0[15:0],rd_data_1[15:0],rd_data_2[15:0],rd_data_3[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wr_rd,Vivado 2021.2";
begin
end;
