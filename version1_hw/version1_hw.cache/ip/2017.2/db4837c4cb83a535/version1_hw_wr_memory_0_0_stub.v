// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Apr  4 11:30:05 2019
// Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_hw_wr_memory_0_0_stub.v
// Design      : version1_hw_wr_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "wr_memory,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_25, start, x_t, y_t, color_t, we, done, data, 
  adr_memo)
/* synthesis syn_black_box black_box_pad_pin="clk_25,start,x_t[9:1],y_t[8:1],color_t[2:0],we,done,data[2:0],adr_memo[16:0]" */;
  input clk_25;
  input start;
  input [9:1]x_t;
  input [8:1]y_t;
  input [2:0]color_t;
  output we;
  output done;
  output [2:0]data;
  output [16:0]adr_memo;
endmodule
