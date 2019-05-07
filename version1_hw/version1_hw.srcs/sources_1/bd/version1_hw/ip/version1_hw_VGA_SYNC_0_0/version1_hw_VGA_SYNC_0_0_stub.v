// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Apr  4 11:30:05 2019
// Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/ip/version1_hw_VGA_SYNC_0_0/version1_hw_VGA_SYNC_0_0_stub.v
// Design      : version1_hw_VGA_SYNC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "VGA_SYNC,Vivado 2017.2" *)
module version1_hw_VGA_SYNC_0_0(clock_25Mhz, color_in, vga_r, vga_b, vga_g, vga_hs, 
  vga_vs, pixel_row, pixel_column)
/* synthesis syn_black_box black_box_pad_pin="clock_25Mhz,color_in[2:0],vga_r[4:0],vga_b[4:0],vga_g[5:0],vga_hs,vga_vs,pixel_row[9:0],pixel_column[9:0]" */;
  input clock_25Mhz;
  input [2:0]color_in;
  output [4:0]vga_r;
  output [4:0]vga_b;
  output [5:0]vga_g;
  output vga_hs;
  output vga_vs;
  output [9:0]pixel_row;
  output [9:0]pixel_column;
endmodule
