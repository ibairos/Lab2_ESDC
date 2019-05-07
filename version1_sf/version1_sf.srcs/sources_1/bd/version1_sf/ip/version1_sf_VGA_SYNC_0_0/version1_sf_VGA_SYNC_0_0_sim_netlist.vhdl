-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Apr  4 12:04:28 2019
-- Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_VGA_SYNC_0_0/version1_sf_VGA_SYNC_0_0_sim_netlist.vhdl
-- Design      : version1_sf_VGA_SYNC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity version1_sf_VGA_SYNC_0_0_VGA_SYNC is
  port (
    vga_r : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_b : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_g : out STD_LOGIC_VECTOR ( 0 to 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    pixel_row : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pixel_column : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clock_25Mhz : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of version1_sf_VGA_SYNC_0_0_VGA_SYNC : entity is "VGA_SYNC";
end version1_sf_VGA_SYNC_0_0_VGA_SYNC;

architecture STRUCTURE of version1_sf_VGA_SYNC_0_0_VGA_SYNC is
  signal blue_out : STD_LOGIC;
  signal blue_out0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal green_out : STD_LOGIC;
  signal green_out0 : STD_LOGIC;
  signal \h_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \h_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal horiz_sync : STD_LOGIC;
  signal horiz_sync_i_1_n_0 : STD_LOGIC;
  signal horiz_sync_i_2_n_0 : STD_LOGIC;
  signal horiz_sync_i_3_n_0 : STD_LOGIC;
  signal \pixel_column[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_row[9]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal red_out : STD_LOGIC;
  signal red_out0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal v_count0 : STD_LOGIC;
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_10_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_6_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_7_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_8_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_9_n_0\ : STD_LOGIC;
  signal \v_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vert_sync : STD_LOGIC;
  signal vert_sync_i_1_n_0 : STD_LOGIC;
  signal vert_sync_i_2_n_0 : STD_LOGIC;
  signal vert_sync_i_3_n_0 : STD_LOGIC;
  signal video_on_h : STD_LOGIC;
  signal video_on_v : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of green_out_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \h_count[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_count[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_count[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_count[9]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_count[9]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of horiz_sync_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of horiz_sync_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of red_out_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[9]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_count[9]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[9]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count[9]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_count[9]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of vert_sync_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of vert_sync_i_3 : label is "soft_lutpair4";
begin
blue_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => color_in(0),
      I1 => video_on_v,
      I2 => video_on_h,
      O => blue_out0
    );
blue_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => blue_out0,
      Q => blue_out,
      R => '0'
    );
green_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => color_in(1),
      I1 => video_on_v,
      I2 => video_on_h,
      O => green_out0
    );
green_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => green_out0,
      Q => green_out,
      R => '0'
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      O => plusOp(0)
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => \h_count_reg__0\(1),
      O => plusOp(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => \h_count_reg__0\(1),
      I2 => \h_count_reg__0\(0),
      O => plusOp(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \h_count_reg__0\(3),
      I1 => \h_count_reg__0\(0),
      I2 => \h_count_reg__0\(1),
      I3 => \h_count_reg__0\(2),
      O => \h_count[3]_i_1_n_0\
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \h_count_reg__0\(2),
      I2 => \h_count_reg__0\(1),
      I3 => \h_count_reg__0\(0),
      I4 => \h_count_reg__0\(3),
      O => plusOp(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \h_count_reg__0\(5),
      I1 => \h_count_reg__0\(3),
      I2 => \h_count_reg__0\(0),
      I3 => \h_count_reg__0\(1),
      I4 => \h_count_reg__0\(2),
      I5 => \h_count_reg__0\(4),
      O => plusOp(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(2),
      I2 => \h_count[6]_i_2_n_0\,
      I3 => \h_count_reg__0\(3),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(4),
      O => plusOp(6)
    );
\h_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => \h_count_reg__0\(1),
      O => \h_count[6]_i_2_n_0\
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => \h_count_reg__0\(7),
      I1 => \h_count_reg__0\(6),
      I2 => \h_count_reg__0\(4),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(3),
      I5 => \h_count[7]_i_2_n_0\,
      O => plusOp(7)
    );
\h_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => \h_count_reg__0\(1),
      I2 => \h_count_reg__0\(0),
      O => \h_count[7]_i_2_n_0\
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \h_count_reg__0\(8),
      I1 => \h_count[9]_i_4_n_0\,
      I2 => \h_count_reg__0\(6),
      I3 => \h_count_reg__0\(7),
      O => plusOp(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \h_count[9]_i_3_n_0\,
      I1 => \h_count_reg__0\(7),
      I2 => \h_count_reg__0\(9),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => clear
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \h_count_reg__0\(9),
      I1 => \h_count_reg__0\(7),
      I2 => \h_count_reg__0\(6),
      I3 => \h_count[9]_i_4_n_0\,
      I4 => \h_count_reg__0\(8),
      O => plusOp(9)
    );
\h_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \h_count_reg__0\(2),
      I2 => \h_count_reg__0\(1),
      I3 => \h_count_reg__0\(0),
      I4 => \h_count_reg__0\(3),
      O => \h_count[9]_i_3_n_0\
    );
\h_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(3),
      I3 => \h_count_reg__0\(0),
      I4 => \h_count_reg__0\(1),
      I5 => \h_count_reg__0\(2),
      O => \h_count[9]_i_4_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(0),
      Q => \h_count_reg__0\(0),
      R => clear
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(1),
      Q => \h_count_reg__0\(1),
      R => clear
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(2),
      Q => \h_count_reg__0\(2),
      R => clear
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => \h_count[3]_i_1_n_0\,
      Q => \h_count_reg__0\(3),
      R => clear
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(4),
      Q => \h_count_reg__0\(4),
      R => clear
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(5),
      Q => \h_count_reg__0\(5),
      R => clear
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(6),
      Q => \h_count_reg__0\(6),
      R => clear
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(7),
      Q => \h_count_reg__0\(7),
      R => clear
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(8),
      Q => \h_count_reg__0\(8),
      R => clear
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => plusOp(9),
      Q => \h_count_reg__0\(9),
      R => clear
    );
horiz_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAABAAABEAABABAB"
    )
        port map (
      I0 => horiz_sync_i_2_n_0,
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(6),
      I3 => \h_count_reg__0\(4),
      I4 => horiz_sync_i_3_n_0,
      I5 => \h_count[6]_i_2_n_0\,
      O => horiz_sync_i_1_n_0
    );
horiz_sync_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \h_count_reg__0\(8),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(7),
      O => horiz_sync_i_2_n_0
    );
horiz_sync_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => \h_count_reg__0\(3),
      O => horiz_sync_i_3_n_0
    );
horiz_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => horiz_sync_i_1_n_0,
      Q => horiz_sync,
      R => '0'
    );
\pixel_column[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => \h_count_reg__0\(8),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(7),
      O => \pixel_column[9]_i_1_n_0\
    );
\pixel_column_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(0),
      Q => pixel_column(0),
      R => '0'
    );
\pixel_column_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(1),
      Q => pixel_column(1),
      R => '0'
    );
\pixel_column_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(2),
      Q => pixel_column(2),
      R => '0'
    );
\pixel_column_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(3),
      Q => pixel_column(3),
      R => '0'
    );
\pixel_column_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(4),
      Q => pixel_column(4),
      R => '0'
    );
\pixel_column_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(5),
      Q => pixel_column(5),
      R => '0'
    );
\pixel_column_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(6),
      Q => pixel_column(6),
      R => '0'
    );
\pixel_column_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(7),
      Q => pixel_column(7),
      R => '0'
    );
\pixel_column_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(8),
      Q => pixel_column(8),
      R => '0'
    );
\pixel_column_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_column[9]_i_1_n_0\,
      D => \h_count_reg__0\(9),
      Q => pixel_column(9),
      R => '0'
    );
\pixel_row[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => \v_count_reg__0\(9),
      I1 => \v_count_reg__0\(7),
      I2 => \v_count_reg__0\(5),
      I3 => \v_count_reg__0\(6),
      I4 => \v_count_reg__0\(8),
      O => \pixel_row[9]_i_1_n_0\
    );
\pixel_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(0),
      Q => pixel_row(0),
      R => '0'
    );
\pixel_row_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(1),
      Q => pixel_row(1),
      R => '0'
    );
\pixel_row_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(2),
      Q => pixel_row(2),
      R => '0'
    );
\pixel_row_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(3),
      Q => pixel_row(3),
      R => '0'
    );
\pixel_row_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(4),
      Q => pixel_row(4),
      R => '0'
    );
\pixel_row_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(5),
      Q => pixel_row(5),
      R => '0'
    );
\pixel_row_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(6),
      Q => pixel_row(6),
      R => '0'
    );
\pixel_row_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(7),
      Q => pixel_row(7),
      R => '0'
    );
\pixel_row_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(8),
      Q => pixel_row(8),
      R => '0'
    );
\pixel_row_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => \pixel_row[9]_i_1_n_0\,
      D => \v_count_reg__0\(9),
      Q => pixel_row(9),
      R => '0'
    );
red_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => color_in(2),
      I1 => video_on_v,
      I2 => video_on_h,
      O => red_out0
    );
red_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => red_out0,
      Q => red_out,
      R => '0'
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_count_reg__0\(0),
      O => \v_count[0]_i_1_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_count_reg__0\(1),
      I1 => \v_count_reg__0\(0),
      O => \plusOp__0\(1)
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \v_count_reg__0\(1),
      I1 => \v_count_reg__0\(0),
      I2 => \v_count_reg__0\(2),
      O => \plusOp__0\(2)
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \v_count_reg__0\(3),
      I1 => \v_count_reg__0\(1),
      I2 => \v_count_reg__0\(0),
      I3 => \v_count_reg__0\(2),
      O => \plusOp__0\(3)
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_count_reg__0\(4),
      I1 => \v_count_reg__0\(3),
      I2 => \v_count_reg__0\(2),
      I3 => \v_count_reg__0\(0),
      I4 => \v_count_reg__0\(1),
      O => \plusOp__0\(4)
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg__0\(5),
      I1 => \v_count_reg__0\(1),
      I2 => \v_count_reg__0\(0),
      I3 => \v_count_reg__0\(2),
      I4 => \v_count_reg__0\(3),
      I5 => \v_count_reg__0\(4),
      O => \plusOp__0\(5)
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \v_count_reg__0\(6),
      I1 => \v_count[9]_i_10_n_0\,
      I2 => \v_count_reg__0\(5),
      O => \plusOp__0\(6)
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \v_count_reg__0\(7),
      I1 => \v_count_reg__0\(6),
      I2 => \v_count_reg__0\(5),
      I3 => \v_count[9]_i_10_n_0\,
      O => \plusOp__0\(7)
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \v_count_reg__0\(8),
      I1 => \v_count[9]_i_10_n_0\,
      I2 => \v_count_reg__0\(7),
      I3 => \v_count_reg__0\(5),
      I4 => \v_count_reg__0\(6),
      O => \plusOp__0\(8)
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0000000E00"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \v_count[9]_i_5_n_0\,
      I2 => \pixel_column[9]_i_1_n_0\,
      I3 => \v_count_reg__0\(9),
      I4 => \v_count[9]_i_6_n_0\,
      I5 => \v_count[9]_i_7_n_0\,
      O => v_count0
    );
\v_count[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \v_count_reg__0\(1),
      I1 => \v_count_reg__0\(0),
      I2 => \v_count_reg__0\(2),
      I3 => \v_count_reg__0\(3),
      I4 => \v_count_reg__0\(4),
      O => \v_count[9]_i_10_n_0\
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \v_count[9]_i_8_n_0\,
      I1 => \h_count_reg__0\(8),
      I2 => \h_count_reg__0\(6),
      I3 => \v_count[9]_i_9_n_0\,
      I4 => \h_count_reg__0\(2),
      I5 => \h_count[6]_i_2_n_0\,
      O => sel
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \v_count_reg__0\(9),
      I1 => \v_count_reg__0\(6),
      I2 => \v_count_reg__0\(5),
      I3 => \v_count_reg__0\(7),
      I4 => \v_count[9]_i_10_n_0\,
      I5 => \v_count_reg__0\(8),
      O => \plusOp__0\(9)
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(8),
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080000000"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(3),
      I3 => \h_count_reg__0\(0),
      I4 => \h_count_reg__0\(1),
      I5 => \h_count_reg__0\(2),
      O => \v_count[9]_i_5_n_0\
    );
\v_count[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \v_count_reg__0\(6),
      I1 => \v_count_reg__0\(5),
      I2 => \v_count_reg__0\(4),
      O => \v_count[9]_i_6_n_0\
    );
\v_count[9]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \v_count_reg__0\(3),
      I1 => \v_count_reg__0\(2),
      I2 => \v_count_reg__0\(8),
      I3 => \v_count_reg__0\(7),
      O => \v_count[9]_i_7_n_0\
    );
\v_count[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \h_count_reg__0\(3),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(4),
      O => \v_count[9]_i_8_n_0\
    );
\v_count[9]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_count_reg__0\(7),
      I1 => \h_count_reg__0\(9),
      O => \v_count[9]_i_9_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \v_count[0]_i_1_n_0\,
      Q => \v_count_reg__0\(0),
      R => v_count0
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(1),
      Q => \v_count_reg__0\(1),
      R => v_count0
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(2),
      Q => \v_count_reg__0\(2),
      R => v_count0
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(3),
      Q => \v_count_reg__0\(3),
      R => v_count0
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(4),
      Q => \v_count_reg__0\(4),
      R => v_count0
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(5),
      Q => \v_count_reg__0\(5),
      R => v_count0
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(6),
      Q => \v_count_reg__0\(6),
      R => v_count0
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(7),
      Q => \v_count_reg__0\(7),
      R => v_count0
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(8),
      Q => \v_count_reg__0\(8),
      R => v_count0
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => sel,
      D => \plusOp__0\(9),
      Q => \v_count_reg__0\(9),
      R => v_count0
    );
vert_sync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFBFFFF"
    )
        port map (
      I0 => \v_count_reg__0\(9),
      I1 => vert_sync_i_2_n_0,
      I2 => \v_count_reg__0\(4),
      I3 => vert_sync_i_3_n_0,
      I4 => \v_count_reg__0\(0),
      I5 => \v_count_reg__0\(1),
      O => vert_sync_i_1_n_0
    );
vert_sync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \v_count_reg__0\(8),
      I1 => \v_count_reg__0\(6),
      I2 => \v_count_reg__0\(5),
      I3 => \v_count_reg__0\(7),
      O => vert_sync_i_2_n_0
    );
vert_sync_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \v_count_reg__0\(2),
      I1 => \v_count_reg__0\(3),
      O => vert_sync_i_3_n_0
    );
vert_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => vert_sync_i_1_n_0,
      Q => vert_sync,
      R => '0'
    );
\vga_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => blue_out,
      Q => vga_b(0),
      R => '0'
    );
\vga_g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => green_out,
      Q => vga_g(0),
      R => '0'
    );
vga_hs_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => horiz_sync,
      Q => vga_hs,
      R => '0'
    );
\vga_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => red_out,
      Q => vga_r(0),
      R => '0'
    );
vga_vs_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => vert_sync,
      Q => vga_vs,
      R => '0'
    );
video_on_h_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => \pixel_column[9]_i_1_n_0\,
      Q => video_on_h,
      R => '0'
    );
video_on_v_reg: unisim.vcomponents.FDRE
     port map (
      C => clock_25Mhz,
      CE => '1',
      D => \pixel_row[9]_i_1_n_0\,
      Q => video_on_v,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity version1_sf_VGA_SYNC_0_0 is
  port (
    clock_25Mhz : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC;
    pixel_row : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pixel_column : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of version1_sf_VGA_SYNC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of version1_sf_VGA_SYNC_0_0 : entity is "version1_sf_VGA_SYNC_0_0,VGA_SYNC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of version1_sf_VGA_SYNC_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of version1_sf_VGA_SYNC_0_0 : entity is "VGA_SYNC,Vivado 2017.2";
end version1_sf_VGA_SYNC_0_0;

architecture STRUCTURE of version1_sf_VGA_SYNC_0_0 is
  signal \^vga_b\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^vga_g\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^vga_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  vga_b(4) <= \^vga_b\(0);
  vga_b(3) <= \^vga_b\(0);
  vga_b(2) <= \^vga_b\(0);
  vga_b(1) <= \^vga_b\(0);
  vga_b(0) <= \^vga_b\(0);
  vga_g(5) <= \^vga_g\(0);
  vga_g(4) <= \^vga_g\(0);
  vga_g(3) <= \^vga_g\(0);
  vga_g(2) <= \^vga_g\(0);
  vga_g(1) <= \^vga_g\(0);
  vga_g(0) <= \^vga_g\(0);
  vga_r(4) <= \^vga_r\(0);
  vga_r(3) <= \^vga_r\(0);
  vga_r(2) <= \^vga_r\(0);
  vga_r(1) <= \^vga_r\(0);
  vga_r(0) <= \^vga_r\(0);
U0: entity work.version1_sf_VGA_SYNC_0_0_VGA_SYNC
     port map (
      clock_25Mhz => clock_25Mhz,
      color_in(2 downto 0) => color_in(2 downto 0),
      pixel_column(9 downto 0) => pixel_column(9 downto 0),
      pixel_row(9 downto 0) => pixel_row(9 downto 0),
      vga_b(0) => \^vga_b\(0),
      vga_g(0) => \^vga_g\(0),
      vga_hs => vga_hs,
      vga_r(0) => \^vga_r\(0),
      vga_vs => vga_vs
    );
end STRUCTURE;
