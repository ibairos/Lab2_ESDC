-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Apr  4 11:30:05 2019
-- Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/ip/version1_hw_add_generator_0_0/version1_hw_add_generator_0_0_stub.vhdl
-- Design      : version1_hw_add_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity version1_hw_add_generator_0_0 is
  Port ( 
    pixel_row : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pixel_column : in STD_LOGIC_VECTOR ( 9 downto 0 );
    adr_memo : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );

end version1_hw_add_generator_0_0;

architecture stub of version1_hw_add_generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_row[9:0],pixel_column[9:0],adr_memo[16:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "add_generator,Vivado 2017.2";
begin
end;
