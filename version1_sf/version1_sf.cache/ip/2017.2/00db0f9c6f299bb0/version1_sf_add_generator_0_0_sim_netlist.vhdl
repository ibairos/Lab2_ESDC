-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Apr  4 12:04:27 2019
-- Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_sf_add_generator_0_0_sim_netlist.vhdl
-- Design      : version1_sf_add_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pixel_row : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pixel_column : in STD_LOGIC_VECTOR ( 9 downto 0 );
    adr_memo : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "version1_sf_add_generator_0_0,add_generator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "add_generator,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^pixel_column\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^pixel_row\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  \^pixel_column\(9 downto 1) <= pixel_column(9 downto 1);
  \^pixel_row\(8 downto 1) <= pixel_row(8 downto 1);
  adr_memo(16 downto 9) <= \^pixel_row\(8 downto 1);
  adr_memo(8 downto 0) <= \^pixel_column\(9 downto 1);
end STRUCTURE;
