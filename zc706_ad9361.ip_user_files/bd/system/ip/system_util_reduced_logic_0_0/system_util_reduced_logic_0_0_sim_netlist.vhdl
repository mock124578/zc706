-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Oct 14 11:46:24 2025
-- Host        : little running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_util_reduced_logic_0_0 -prefix
--               system_util_reduced_logic_0_0_ system_util_reduced_logic_0_0_sim_netlist.vhdl
-- Design      : system_util_reduced_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_util_reduced_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_util_reduced_logic_0_0 : entity is "system_util_reduced_logic_0_0,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_util_reduced_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_util_reduced_logic_0_0 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2021.2";
end system_util_reduced_logic_0_0;

architecture STRUCTURE of system_util_reduced_logic_0_0 is
begin
Res_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op1(1),
      O => Res
    );
end STRUCTURE;
