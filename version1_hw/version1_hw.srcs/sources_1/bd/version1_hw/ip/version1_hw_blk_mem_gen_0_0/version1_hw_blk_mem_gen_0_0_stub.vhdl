-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Apr  4 11:31:21 2019
-- Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/ip/version1_hw_blk_mem_gen_0_0/version1_hw_blk_mem_gen_0_0_stub.vhdl
-- Design      : version1_hw_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity version1_hw_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end version1_hw_blk_mem_gen_0_0;

architecture stub of version1_hw_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,wea[0:0],addra[16:0],dina[2:0],clkb,addrb[16:0],doutb[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_6,Vivado 2017.2";
begin
end;
