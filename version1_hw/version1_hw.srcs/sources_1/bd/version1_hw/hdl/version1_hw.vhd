--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
--Date        : Thu Apr  4 11:29:29 2019
--Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
--Command     : generate_target version1_hw.bd
--Design      : version1_hw
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity version1_hw is
  port (
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_vs : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of version1_hw : entity is "version1_hw,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=version1_hw,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of version1_hw : entity is "version1_hw.hwdef";
end version1_hw;

architecture STRUCTURE of version1_hw is
  component version1_hw_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component version1_hw_blk_mem_gen_0_0;
  component version1_hw_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component version1_hw_clk_wiz_0_0;
  component version1_hw_add_generator_0_0 is
  port (
    pixel_row : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pixel_column : in STD_LOGIC_VECTOR ( 9 downto 0 );
    adr_memo : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component version1_hw_add_generator_0_0;
  component version1_hw_control_v1_0_0 is
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
  end component version1_hw_control_v1_0_0;
  component version1_hw_VGA_SYNC_0_0 is
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
  end component version1_hw_VGA_SYNC_0_0;
  component version1_hw_wr_memory_0_0 is
  port (
    clk_25 : in STD_LOGIC;
    start : in STD_LOGIC;
    x_t : in STD_LOGIC_VECTOR ( 9 downto 1 );
    y_t : in STD_LOGIC_VECTOR ( 8 downto 1 );
    color_t : in STD_LOGIC_VECTOR ( 2 downto 0 );
    we : out STD_LOGIC;
    done : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    adr_memo : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component version1_hw_wr_memory_0_0;
  signal VGA_SYNC_0_pixel_column : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VGA_SYNC_0_pixel_row : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VGA_SYNC_0_vga_b : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal VGA_SYNC_0_vga_g : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal VGA_SYNC_0_vga_hs : STD_LOGIC;
  signal VGA_SYNC_0_vga_r : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal VGA_SYNC_0_vga_vs : STD_LOGIC;
  signal add_generator_0_adr_memo : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal btn_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal control_v1_0_color_t : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_v1_0_start : STD_LOGIC;
  signal control_v1_0_x_t : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal control_v1_0_y_t : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_memory_0_adr_memo : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal wr_memory_0_data : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_memory_0_done : STD_LOGIC;
  signal wr_memory_0_we : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
begin
  btn_1(3 downto 0) <= btn(3 downto 0);
  clk_in1_1 <= clk;
  sw_1(3 downto 0) <= sw(3 downto 0);
  vga_b(4 downto 0) <= VGA_SYNC_0_vga_b(4 downto 0);
  vga_g(5 downto 0) <= VGA_SYNC_0_vga_g(5 downto 0);
  vga_hs <= VGA_SYNC_0_vga_hs;
  vga_r(4 downto 0) <= VGA_SYNC_0_vga_r(4 downto 0);
  vga_vs <= VGA_SYNC_0_vga_vs;
VGA_SYNC_0: component version1_hw_VGA_SYNC_0_0
     port map (
      clock_25Mhz => clk_wiz_0_clk_out1,
      color_in(2 downto 0) => blk_mem_gen_0_doutb(2 downto 0),
      pixel_column(9 downto 0) => VGA_SYNC_0_pixel_column(9 downto 0),
      pixel_row(9 downto 0) => VGA_SYNC_0_pixel_row(9 downto 0),
      vga_b(4 downto 0) => VGA_SYNC_0_vga_b(4 downto 0),
      vga_g(5 downto 0) => VGA_SYNC_0_vga_g(5 downto 0),
      vga_hs => VGA_SYNC_0_vga_hs,
      vga_r(4 downto 0) => VGA_SYNC_0_vga_r(4 downto 0),
      vga_vs => VGA_SYNC_0_vga_vs
    );
add_generator_0: component version1_hw_add_generator_0_0
     port map (
      adr_memo(16 downto 0) => add_generator_0_adr_memo(16 downto 0),
      pixel_column(9 downto 0) => VGA_SYNC_0_pixel_column(9 downto 0),
      pixel_row(9 downto 0) => VGA_SYNC_0_pixel_row(9 downto 0)
    );
blk_mem_gen_0: component version1_hw_blk_mem_gen_0_0
     port map (
      addra(16 downto 0) => wr_memory_0_adr_memo(16 downto 0),
      addrb(16 downto 0) => add_generator_0_adr_memo(16 downto 0),
      clka => clk_wiz_0_clk_out1,
      clkb => clk_wiz_0_clk_out1,
      dina(2 downto 0) => wr_memory_0_data(2 downto 0),
      doutb(2 downto 0) => blk_mem_gen_0_doutb(2 downto 0),
      wea(0) => wr_memory_0_we
    );
clk_wiz_0: component version1_hw_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => '0'
    );
control_v1_0: component version1_hw_control_v1_0_0
     port map (
      btn(3 downto 0) => btn_1(3 downto 0),
      clk_25 => clk_wiz_0_clk_out1,
      color_t(2 downto 0) => control_v1_0_color_t(2 downto 0),
      done => wr_memory_0_done,
      start => control_v1_0_start,
      sw(3 downto 0) => sw_1(3 downto 0),
      x_t(9 downto 1) => control_v1_0_x_t(9 downto 1),
      y_t(8 downto 1) => control_v1_0_y_t(8 downto 1)
    );
wr_memory_0: component version1_hw_wr_memory_0_0
     port map (
      adr_memo(16 downto 0) => wr_memory_0_adr_memo(16 downto 0),
      clk_25 => clk_wiz_0_clk_out1,
      color_t(2 downto 0) => control_v1_0_color_t(2 downto 0),
      data(2 downto 0) => wr_memory_0_data(2 downto 0),
      done => wr_memory_0_done,
      start => control_v1_0_start,
      we => wr_memory_0_we,
      x_t(9 downto 1) => control_v1_0_x_t(9 downto 1),
      y_t(8 downto 1) => control_v1_0_y_t(8 downto 1)
    );
end STRUCTURE;
