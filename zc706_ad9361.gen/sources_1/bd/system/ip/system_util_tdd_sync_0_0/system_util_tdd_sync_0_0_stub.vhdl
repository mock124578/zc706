-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Oct 16 17:31:42 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_util_tdd_sync_0_0 -prefix
--               system_util_tdd_sync_0_0_ system_util_tdd_sync_0_0_stub.vhdl
-- Design      : system_util_tdd_sync_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_tdd_sync_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    sync_mode : in STD_LOGIC;
    sync_in : in STD_LOGIC;
    sync_out : out STD_LOGIC
  );

end system_util_tdd_sync_0_0;

architecture stub of system_util_tdd_sync_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,sync_mode,sync_in,sync_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_tdd_sync,Vivado 2021.2";
begin
end;
