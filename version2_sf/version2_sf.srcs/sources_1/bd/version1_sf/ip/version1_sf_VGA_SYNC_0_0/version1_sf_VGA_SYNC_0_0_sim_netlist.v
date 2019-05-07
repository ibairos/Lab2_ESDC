// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Apr  4 12:04:28 2019
// Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ibai/vivado/ESDC/Lab2/version1_sf/version1_sf.srcs/sources_1/bd/version1_sf/ip/version1_sf_VGA_SYNC_0_0/version1_sf_VGA_SYNC_0_0_sim_netlist.v
// Design      : version1_sf_VGA_SYNC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "version1_sf_VGA_SYNC_0_0,VGA_SYNC,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "VGA_SYNC,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module version1_sf_VGA_SYNC_0_0
   (clock_25Mhz,
    color_in,
    vga_r,
    vga_b,
    vga_g,
    vga_hs,
    vga_vs,
    pixel_row,
    pixel_column);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock_25Mhz CLK" *) input clock_25Mhz;
  input [2:0]color_in;
  output [4:0]vga_r;
  output [4:0]vga_b;
  output [5:0]vga_g;
  output vga_hs;
  output vga_vs;
  output [9:0]pixel_row;
  output [9:0]pixel_column;

  wire clock_25Mhz;
  wire [2:0]color_in;
  wire [9:0]pixel_column;
  wire [9:0]pixel_row;
  wire [0:0]\^vga_b ;
  wire [0:0]\^vga_g ;
  wire vga_hs;
  wire [0:0]\^vga_r ;
  wire vga_vs;

  assign vga_b[4] = \^vga_b [0];
  assign vga_b[3] = \^vga_b [0];
  assign vga_b[2] = \^vga_b [0];
  assign vga_b[1] = \^vga_b [0];
  assign vga_b[0] = \^vga_b [0];
  assign vga_g[5] = \^vga_g [0];
  assign vga_g[4] = \^vga_g [0];
  assign vga_g[3] = \^vga_g [0];
  assign vga_g[2] = \^vga_g [0];
  assign vga_g[1] = \^vga_g [0];
  assign vga_g[0] = \^vga_g [0];
  assign vga_r[4] = \^vga_r [0];
  assign vga_r[3] = \^vga_r [0];
  assign vga_r[2] = \^vga_r [0];
  assign vga_r[1] = \^vga_r [0];
  assign vga_r[0] = \^vga_r [0];
  version1_sf_VGA_SYNC_0_0_VGA_SYNC U0
       (.clock_25Mhz(clock_25Mhz),
        .color_in(color_in),
        .pixel_column(pixel_column),
        .pixel_row(pixel_row),
        .vga_b(\^vga_b ),
        .vga_g(\^vga_g ),
        .vga_hs(vga_hs),
        .vga_r(\^vga_r ),
        .vga_vs(vga_vs));
endmodule

(* ORIG_REF_NAME = "VGA_SYNC" *) 
module version1_sf_VGA_SYNC_0_0_VGA_SYNC
   (vga_r,
    vga_b,
    vga_g,
    vga_hs,
    vga_vs,
    pixel_row,
    pixel_column,
    clock_25Mhz,
    color_in);
  output [0:0]vga_r;
  output [0:0]vga_b;
  output [0:0]vga_g;
  output vga_hs;
  output vga_vs;
  output [9:0]pixel_row;
  output [9:0]pixel_column;
  input clock_25Mhz;
  input [2:0]color_in;

  wire blue_out;
  wire blue_out0;
  wire clear;
  wire clock_25Mhz;
  wire [2:0]color_in;
  wire green_out;
  wire green_out0;
  wire \h_count[3]_i_1_n_0 ;
  wire \h_count[6]_i_2_n_0 ;
  wire \h_count[7]_i_2_n_0 ;
  wire \h_count[9]_i_3_n_0 ;
  wire \h_count[9]_i_4_n_0 ;
  wire [9:0]h_count_reg__0;
  wire horiz_sync;
  wire horiz_sync_i_1_n_0;
  wire horiz_sync_i_2_n_0;
  wire horiz_sync_i_3_n_0;
  wire [9:0]pixel_column;
  wire \pixel_column[9]_i_1_n_0 ;
  wire [9:0]pixel_row;
  wire \pixel_row[9]_i_1_n_0 ;
  wire [9:0]plusOp;
  wire [9:1]plusOp__0;
  wire red_out;
  wire red_out0;
  wire sel;
  wire v_count0;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[9]_i_10_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count[9]_i_6_n_0 ;
  wire \v_count[9]_i_7_n_0 ;
  wire \v_count[9]_i_8_n_0 ;
  wire \v_count[9]_i_9_n_0 ;
  wire [9:0]v_count_reg__0;
  wire vert_sync;
  wire vert_sync_i_1_n_0;
  wire vert_sync_i_2_n_0;
  wire vert_sync_i_3_n_0;
  wire [0:0]vga_b;
  wire [0:0]vga_g;
  wire vga_hs;
  wire [0:0]vga_r;
  wire vga_vs;
  wire video_on_h;
  wire video_on_v;

  LUT3 #(
    .INIT(8'h80)) 
    blue_out_i_1
       (.I0(color_in[0]),
        .I1(video_on_v),
        .I2(video_on_h),
        .O(blue_out0));
  FDRE blue_out_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(blue_out0),
        .Q(blue_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    green_out_i_1
       (.I0(color_in[1]),
        .I1(video_on_v),
        .I2(video_on_h),
        .O(green_out0));
  FDRE green_out_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(green_out0),
        .Q(green_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg__0[0]),
        .I1(h_count_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg__0[2]),
        .I1(h_count_reg__0[1]),
        .I2(h_count_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg__0[3]),
        .I1(h_count_reg__0[0]),
        .I2(h_count_reg__0[1]),
        .I3(h_count_reg__0[2]),
        .O(\h_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg__0[4]),
        .I1(h_count_reg__0[2]),
        .I2(h_count_reg__0[1]),
        .I3(h_count_reg__0[0]),
        .I4(h_count_reg__0[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg__0[5]),
        .I1(h_count_reg__0[3]),
        .I2(h_count_reg__0[0]),
        .I3(h_count_reg__0[1]),
        .I4(h_count_reg__0[2]),
        .I5(h_count_reg__0[4]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count[6]_i_1 
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[2]),
        .I2(\h_count[6]_i_2_n_0 ),
        .I3(h_count_reg__0[3]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[4]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \h_count[6]_i_2 
       (.I0(h_count_reg__0[0]),
        .I1(h_count_reg__0[1]),
        .O(\h_count[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \h_count[7]_i_1 
       (.I0(h_count_reg__0[7]),
        .I1(h_count_reg__0[6]),
        .I2(h_count_reg__0[4]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[3]),
        .I5(\h_count[7]_i_2_n_0 ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \h_count[7]_i_2 
       (.I0(h_count_reg__0[2]),
        .I1(h_count_reg__0[1]),
        .I2(h_count_reg__0[0]),
        .O(\h_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg__0[8]),
        .I1(\h_count[9]_i_4_n_0 ),
        .I2(h_count_reg__0[6]),
        .I3(h_count_reg__0[7]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \h_count[9]_i_1 
       (.I0(\h_count[9]_i_3_n_0 ),
        .I1(h_count_reg__0[7]),
        .I2(h_count_reg__0[9]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count[9]_i_2 
       (.I0(h_count_reg__0[9]),
        .I1(h_count_reg__0[7]),
        .I2(h_count_reg__0[6]),
        .I3(\h_count[9]_i_4_n_0 ),
        .I4(h_count_reg__0[8]),
        .O(plusOp[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \h_count[9]_i_3 
       (.I0(h_count_reg__0[4]),
        .I1(h_count_reg__0[2]),
        .I2(h_count_reg__0[1]),
        .I3(h_count_reg__0[0]),
        .I4(h_count_reg__0[3]),
        .O(\h_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count[9]_i_4 
       (.I0(h_count_reg__0[4]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[3]),
        .I3(h_count_reg__0[0]),
        .I4(h_count_reg__0[1]),
        .I5(h_count_reg__0[2]),
        .O(\h_count[9]_i_4_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(h_count_reg__0[0]),
        .R(clear));
  FDRE \h_count_reg[1] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(h_count_reg__0[1]),
        .R(clear));
  FDRE \h_count_reg[2] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(h_count_reg__0[2]),
        .R(clear));
  FDRE \h_count_reg[3] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(\h_count[3]_i_1_n_0 ),
        .Q(h_count_reg__0[3]),
        .R(clear));
  FDRE \h_count_reg[4] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(h_count_reg__0[4]),
        .R(clear));
  FDRE \h_count_reg[5] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(h_count_reg__0[5]),
        .R(clear));
  FDRE \h_count_reg[6] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(h_count_reg__0[6]),
        .R(clear));
  FDRE \h_count_reg[7] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(h_count_reg__0[7]),
        .R(clear));
  FDRE \h_count_reg[8] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(h_count_reg__0[8]),
        .R(clear));
  FDRE \h_count_reg[9] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(h_count_reg__0[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hEAABAAABEAABABAB)) 
    horiz_sync_i_1
       (.I0(horiz_sync_i_2_n_0),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[6]),
        .I3(h_count_reg__0[4]),
        .I4(horiz_sync_i_3_n_0),
        .I5(\h_count[6]_i_2_n_0 ),
        .O(horiz_sync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    horiz_sync_i_2
       (.I0(h_count_reg__0[8]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[7]),
        .O(horiz_sync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    horiz_sync_i_3
       (.I0(h_count_reg__0[2]),
        .I1(h_count_reg__0[3]),
        .O(horiz_sync_i_3_n_0));
  FDRE horiz_sync_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(horiz_sync_i_1_n_0),
        .Q(horiz_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h37)) 
    \pixel_column[9]_i_1 
       (.I0(h_count_reg__0[8]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[7]),
        .O(\pixel_column[9]_i_1_n_0 ));
  FDRE \pixel_column_reg[0] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[0]),
        .Q(pixel_column[0]),
        .R(1'b0));
  FDRE \pixel_column_reg[1] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[1]),
        .Q(pixel_column[1]),
        .R(1'b0));
  FDRE \pixel_column_reg[2] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[2]),
        .Q(pixel_column[2]),
        .R(1'b0));
  FDRE \pixel_column_reg[3] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[3]),
        .Q(pixel_column[3]),
        .R(1'b0));
  FDRE \pixel_column_reg[4] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[4]),
        .Q(pixel_column[4]),
        .R(1'b0));
  FDRE \pixel_column_reg[5] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[5]),
        .Q(pixel_column[5]),
        .R(1'b0));
  FDRE \pixel_column_reg[6] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[6]),
        .Q(pixel_column[6]),
        .R(1'b0));
  FDRE \pixel_column_reg[7] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[7]),
        .Q(pixel_column[7]),
        .R(1'b0));
  FDRE \pixel_column_reg[8] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[8]),
        .Q(pixel_column[8]),
        .R(1'b0));
  FDRE \pixel_column_reg[9] 
       (.C(clock_25Mhz),
        .CE(\pixel_column[9]_i_1_n_0 ),
        .D(h_count_reg__0[9]),
        .Q(pixel_column[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h15555555)) 
    \pixel_row[9]_i_1 
       (.I0(v_count_reg__0[9]),
        .I1(v_count_reg__0[7]),
        .I2(v_count_reg__0[5]),
        .I3(v_count_reg__0[6]),
        .I4(v_count_reg__0[8]),
        .O(\pixel_row[9]_i_1_n_0 ));
  FDRE \pixel_row_reg[0] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[0]),
        .Q(pixel_row[0]),
        .R(1'b0));
  FDRE \pixel_row_reg[1] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[1]),
        .Q(pixel_row[1]),
        .R(1'b0));
  FDRE \pixel_row_reg[2] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[2]),
        .Q(pixel_row[2]),
        .R(1'b0));
  FDRE \pixel_row_reg[3] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[3]),
        .Q(pixel_row[3]),
        .R(1'b0));
  FDRE \pixel_row_reg[4] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[4]),
        .Q(pixel_row[4]),
        .R(1'b0));
  FDRE \pixel_row_reg[5] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[5]),
        .Q(pixel_row[5]),
        .R(1'b0));
  FDRE \pixel_row_reg[6] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[6]),
        .Q(pixel_row[6]),
        .R(1'b0));
  FDRE \pixel_row_reg[7] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[7]),
        .Q(pixel_row[7]),
        .R(1'b0));
  FDRE \pixel_row_reg[8] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[8]),
        .Q(pixel_row[8]),
        .R(1'b0));
  FDRE \pixel_row_reg[9] 
       (.C(clock_25Mhz),
        .CE(\pixel_row[9]_i_1_n_0 ),
        .D(v_count_reg__0[9]),
        .Q(pixel_row[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    red_out_i_1
       (.I0(color_in[2]),
        .I1(video_on_v),
        .I2(video_on_h),
        .O(red_out0));
  FDRE red_out_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(red_out0),
        .Q(red_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg__0[0]),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg__0[1]),
        .I1(v_count_reg__0[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[2]_i_1 
       (.I0(v_count_reg__0[1]),
        .I1(v_count_reg__0[0]),
        .I2(v_count_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg__0[3]),
        .I1(v_count_reg__0[1]),
        .I2(v_count_reg__0[0]),
        .I3(v_count_reg__0[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg__0[4]),
        .I1(v_count_reg__0[3]),
        .I2(v_count_reg__0[2]),
        .I3(v_count_reg__0[0]),
        .I4(v_count_reg__0[1]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg__0[5]),
        .I1(v_count_reg__0[1]),
        .I2(v_count_reg__0[0]),
        .I3(v_count_reg__0[2]),
        .I4(v_count_reg__0[3]),
        .I5(v_count_reg__0[4]),
        .O(plusOp__0[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \v_count[6]_i_1 
       (.I0(v_count_reg__0[6]),
        .I1(\v_count[9]_i_10_n_0 ),
        .I2(v_count_reg__0[5]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \v_count[7]_i_1 
       (.I0(v_count_reg__0[7]),
        .I1(v_count_reg__0[6]),
        .I2(v_count_reg__0[5]),
        .I3(\v_count[9]_i_10_n_0 ),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg__0[8]),
        .I1(\v_count[9]_i_10_n_0 ),
        .I2(v_count_reg__0[7]),
        .I3(v_count_reg__0[5]),
        .I4(v_count_reg__0[6]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
    \v_count[9]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count[9]_i_5_n_0 ),
        .I2(\pixel_column[9]_i_1_n_0 ),
        .I3(v_count_reg__0[9]),
        .I4(\v_count[9]_i_6_n_0 ),
        .I5(\v_count[9]_i_7_n_0 ),
        .O(v_count0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \v_count[9]_i_10 
       (.I0(v_count_reg__0[1]),
        .I1(v_count_reg__0[0]),
        .I2(v_count_reg__0[2]),
        .I3(v_count_reg__0[3]),
        .I4(v_count_reg__0[4]),
        .O(\v_count[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \v_count[9]_i_2 
       (.I0(\v_count[9]_i_8_n_0 ),
        .I1(h_count_reg__0[8]),
        .I2(h_count_reg__0[6]),
        .I3(\v_count[9]_i_9_n_0 ),
        .I4(h_count_reg__0[2]),
        .I5(\h_count[6]_i_2_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \v_count[9]_i_3 
       (.I0(v_count_reg__0[9]),
        .I1(v_count_reg__0[6]),
        .I2(v_count_reg__0[5]),
        .I3(v_count_reg__0[7]),
        .I4(\v_count[9]_i_10_n_0 ),
        .I5(v_count_reg__0[8]),
        .O(plusOp__0[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \v_count[9]_i_4 
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[8]),
        .O(\v_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \v_count[9]_i_5 
       (.I0(h_count_reg__0[4]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[3]),
        .I3(h_count_reg__0[0]),
        .I4(h_count_reg__0[1]),
        .I5(h_count_reg__0[2]),
        .O(\v_count[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \v_count[9]_i_6 
       (.I0(v_count_reg__0[6]),
        .I1(v_count_reg__0[5]),
        .I2(v_count_reg__0[4]),
        .O(\v_count[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \v_count[9]_i_7 
       (.I0(v_count_reg__0[3]),
        .I1(v_count_reg__0[2]),
        .I2(v_count_reg__0[8]),
        .I3(v_count_reg__0[7]),
        .O(\v_count[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \v_count[9]_i_8 
       (.I0(h_count_reg__0[3]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[4]),
        .O(\v_count[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[9]_i_9 
       (.I0(h_count_reg__0[7]),
        .I1(h_count_reg__0[9]),
        .O(\v_count[9]_i_9_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count_reg__0[0]),
        .R(v_count0));
  FDRE \v_count_reg[1] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[1]),
        .Q(v_count_reg__0[1]),
        .R(v_count0));
  FDRE \v_count_reg[2] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[2]),
        .Q(v_count_reg__0[2]),
        .R(v_count0));
  FDRE \v_count_reg[3] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[3]),
        .Q(v_count_reg__0[3]),
        .R(v_count0));
  FDRE \v_count_reg[4] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[4]),
        .Q(v_count_reg__0[4]),
        .R(v_count0));
  FDRE \v_count_reg[5] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[5]),
        .Q(v_count_reg__0[5]),
        .R(v_count0));
  FDRE \v_count_reg[6] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[6]),
        .Q(v_count_reg__0[6]),
        .R(v_count0));
  FDRE \v_count_reg[7] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[7]),
        .Q(v_count_reg__0[7]),
        .R(v_count0));
  FDRE \v_count_reg[8] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[8]),
        .Q(v_count_reg__0[8]),
        .R(v_count0));
  FDRE \v_count_reg[9] 
       (.C(clock_25Mhz),
        .CE(sel),
        .D(plusOp__0[9]),
        .Q(v_count_reg__0[9]),
        .R(v_count0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFBFFFF)) 
    vert_sync_i_1
       (.I0(v_count_reg__0[9]),
        .I1(vert_sync_i_2_n_0),
        .I2(v_count_reg__0[4]),
        .I3(vert_sync_i_3_n_0),
        .I4(v_count_reg__0[0]),
        .I5(v_count_reg__0[1]),
        .O(vert_sync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    vert_sync_i_2
       (.I0(v_count_reg__0[8]),
        .I1(v_count_reg__0[6]),
        .I2(v_count_reg__0[5]),
        .I3(v_count_reg__0[7]),
        .O(vert_sync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    vert_sync_i_3
       (.I0(v_count_reg__0[2]),
        .I1(v_count_reg__0[3]),
        .O(vert_sync_i_3_n_0));
  FDRE vert_sync_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(vert_sync_i_1_n_0),
        .Q(vert_sync),
        .R(1'b0));
  FDRE \vga_b_reg[0] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(blue_out),
        .Q(vga_b),
        .R(1'b0));
  FDRE \vga_g_reg[0] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(green_out),
        .Q(vga_g),
        .R(1'b0));
  FDRE vga_hs_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(horiz_sync),
        .Q(vga_hs),
        .R(1'b0));
  FDRE \vga_r_reg[0] 
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(red_out),
        .Q(vga_r),
        .R(1'b0));
  FDRE vga_vs_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(vert_sync),
        .Q(vga_vs),
        .R(1'b0));
  FDRE video_on_h_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(\pixel_column[9]_i_1_n_0 ),
        .Q(video_on_h),
        .R(1'b0));
  FDRE video_on_v_reg
       (.C(clock_25Mhz),
        .CE(1'b1),
        .D(\pixel_row[9]_i_1_n_0 ),
        .Q(video_on_v),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
