// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Apr  4 11:30:05 2019
// Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ibai/vivado/ESDC/Lab2/version1_hw/version1_hw.srcs/sources_1/bd/version1_hw/ip/version1_hw_control_v1_0_0/version1_hw_control_v1_0_0_stub.v
// Design      : version1_hw_control_v1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "control_v1,Vivado 2017.2" *)
module version1_hw_control_v1_0_0(clk_25, done, x_t, y_t, color_t, start, sw, btn)
/* synthesis syn_black_box black_box_pad_pin="clk_25,done,x_t[9:1],y_t[8:1],color_t[2:0],start,sw[3:0],btn[3:0]" */;
  input clk_25;
  input done;
  output [9:1]x_t;
  output [8:1]y_t;
  output [2:0]color_t;
  output start;
  input [3:0]sw;
  input [3:0]btn;
endmodule
