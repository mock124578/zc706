-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Oct 16 17:31:41 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_sysid_rom_0_0 -prefix
--               system_sysid_rom_0_0_ system_sysid_rom_0_0_stub.vhdl
-- Design      : system_sysid_rom_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_sysid_rom_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rom_addr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rom_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end system_sysid_rom_0_0;

architecture stub of system_sysid_rom_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rom_addr[8:0],rom_data[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sysid_rom,Vivado 2021.2";
begin
end;
