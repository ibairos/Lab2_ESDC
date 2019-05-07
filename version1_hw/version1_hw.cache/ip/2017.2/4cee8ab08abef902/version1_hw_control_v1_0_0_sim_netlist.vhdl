-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Apr  4 11:30:04 2019
-- Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_hw_control_v1_0_0_sim_netlist.vhdl
-- Design      : version1_hw_control_v1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1 is
  port (
    x_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    color_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    done : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_25 : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_st[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_1_n_0\ : STD_LOGIC;
  signal \^color_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \color_t[2]_i_1_n_0\ : STD_LOGIC;
  signal new_sw : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \new_sw[3]_i_1_n_0\ : STD_LOGIC;
  signal old_sw : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \old_sw[3]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal st : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of st : signal is "yes";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_st_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_st_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_st_reg[2]\ : label is "yes";
begin
  E(0) <= \^e\(0);
  color_t(0) <= \^color_t\(0);
\FSM_sequential_st[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA7F007F004D0048"
    )
        port map (
      I0 => st(2),
      I1 => done,
      I2 => st(1),
      I3 => st(0),
      I4 => btn(0),
      I5 => st(0),
      O => \FSM_sequential_st[0]_i_1_n_0\
    );
\FSM_sequential_st[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF72057705400540"
    )
        port map (
      I0 => st(2),
      I1 => done,
      I2 => st(1),
      I3 => st(0),
      I4 => btn(0),
      I5 => st(1),
      O => \FSM_sequential_st[1]_i_1_n_0\
    );
\FSM_sequential_st[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3A503F50085008"
    )
        port map (
      I0 => st(2),
      I1 => done,
      I2 => st(1),
      I3 => st(0),
      I4 => btn(0),
      I5 => st(2),
      O => \FSM_sequential_st[2]_i_1_n_0\
    );
\FSM_sequential_st_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => '1',
      D => \FSM_sequential_st[0]_i_1_n_0\,
      Q => st(0),
      R => '0'
    );
\FSM_sequential_st_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => '1',
      D => \FSM_sequential_st[1]_i_1_n_0\,
      Q => st(1),
      R => '0'
    );
\FSM_sequential_st_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => '1',
      D => \FSM_sequential_st[2]_i_1_n_0\,
      Q => st(2),
      R => '0'
    );
\color_t[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACAA"
    )
        port map (
      I0 => \^color_t\(0),
      I1 => st(1),
      I2 => st(2),
      I3 => st(0),
      O => \color_t[2]_i_1_n_0\
    );
\color_t_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => '1',
      D => \color_t[2]_i_1_n_0\,
      Q => \^color_t\(0),
      R => '0'
    );
\new_sw[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => st(0),
      I1 => st(2),
      I2 => st(1),
      O => \new_sw[3]_i_1_n_0\
    );
\new_sw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \new_sw[3]_i_1_n_0\,
      D => sw(0),
      Q => new_sw(0),
      R => '0'
    );
\new_sw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \new_sw[3]_i_1_n_0\,
      D => sw(1),
      Q => new_sw(1),
      R => '0'
    );
\new_sw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \new_sw[3]_i_1_n_0\,
      D => sw(2),
      Q => new_sw(2),
      R => '0'
    );
\new_sw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \new_sw[3]_i_1_n_0\,
      D => sw(3),
      Q => new_sw(3),
      R => '0'
    );
\old_sw[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(0),
      I2 => st(1),
      O => \old_sw[3]_i_1_n_0\
    );
\old_sw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25,
      CE => \old_sw[3]_i_1_n_0\,
      D => new_sw(0),
      Q => old_sw(0),
      R => '0'
    );
\old_sw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25,
      CE => \old_sw[3]_i_1_n_0\,
      D => new_sw(1),
      Q => old_sw(1),
      R => '0'
    );
\old_sw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25,
      CE => \old_sw[3]_i_1_n_0\,
      D => new_sw(2),
      Q => old_sw(2),
      R => '0'
    );
\old_sw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_25,
      CE => \old_sw[3]_i_1_n_0\,
      D => new_sw(3),
      Q => old_sw(3),
      R => '0'
    );
start_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st(0),
      I1 => st(2),
      O => \^e\(0)
    );
\x_t[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => old_sw(0),
      I1 => st(0),
      I2 => st(2),
      I3 => st(1),
      I4 => new_sw(0),
      O => p_1_in(4)
    );
\x_t[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => old_sw(1),
      I1 => st(0),
      I2 => st(2),
      I3 => st(1),
      I4 => new_sw(1),
      O => p_1_in(5)
    );
\x_t[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => old_sw(2),
      I1 => st(0),
      I2 => st(2),
      I3 => st(1),
      I4 => new_sw(2),
      O => p_1_in(6)
    );
\x_t[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => old_sw(3),
      I1 => st(0),
      I2 => st(2),
      I3 => st(1),
      I4 => new_sw(3),
      O => p_1_in(7)
    );
\x_t_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \^e\(0),
      D => p_1_in(4),
      Q => x_t(0),
      R => '0'
    );
\x_t_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \^e\(0),
      D => p_1_in(5),
      Q => x_t(1),
      R => '0'
    );
\x_t_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \^e\(0),
      D => p_1_in(6),
      Q => x_t(2),
      R => '0'
    );
\x_t_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_25,
      CE => \^e\(0),
      D => p_1_in(7),
      Q => x_t(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_25 : in STD_LOGIC;
    done : in STD_LOGIC;
    x_t : out STD_LOGIC_VECTOR ( 9 downto 1 );
    y_t : out STD_LOGIC_VECTOR ( 8 downto 1 );
    color_t : out STD_LOGIC_VECTOR ( 2 downto 0 );
    start : out STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "version1_hw_control_v1_0_0,control_v1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "control_v1,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^color_t\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^x_t\ : STD_LOGIC_VECTOR ( 8 downto 5 );
begin
  color_t(2) <= \^color_t\(2);
  color_t(1) <= \<const0>\;
  color_t(0) <= \<const0>\;
  x_t(9) <= \<const0>\;
  x_t(8 downto 5) <= \^x_t\(8 downto 5);
  x_t(4) <= \<const0>\;
  x_t(3) <= \<const0>\;
  x_t(2) <= \<const0>\;
  x_t(1) <= \<const0>\;
  y_t(8) <= \<const0>\;
  y_t(7) <= \<const1>\;
  y_t(6) <= \<const0>\;
  y_t(5) <= \<const0>\;
  y_t(4) <= \<const0>\;
  y_t(3) <= \<const0>\;
  y_t(2) <= \<const0>\;
  y_t(1) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1
     port map (
      E(0) => start,
      btn(0) => btn(0),
      clk_25 => clk_25,
      color_t(0) => \^color_t\(2),
      done => done,
      sw(3 downto 0) => sw(3 downto 0),
      x_t(3 downto 0) => \^x_t\(8 downto 5)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
