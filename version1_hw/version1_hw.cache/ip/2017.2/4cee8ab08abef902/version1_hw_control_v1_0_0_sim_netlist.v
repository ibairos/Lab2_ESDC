// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Thu Apr  4 11:30:04 2019
// Host        : ibaipc running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ version1_hw_control_v1_0_0_sim_netlist.v
// Design      : version1_hw_control_v1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1
   (x_t,
    E,
    color_t,
    done,
    btn,
    clk_25,
    sw);
  output [3:0]x_t;
  output [0:0]E;
  output [0:0]color_t;
  input done;
  input [0:0]btn;
  input clk_25;
  input [3:0]sw;

  wire [0:0]E;
  wire \FSM_sequential_st[0]_i_1_n_0 ;
  wire \FSM_sequential_st[1]_i_1_n_0 ;
  wire \FSM_sequential_st[2]_i_1_n_0 ;
  wire [0:0]btn;
  wire clk_25;
  wire [0:0]color_t;
  wire \color_t[2]_i_1_n_0 ;
  wire done;
  wire [3:0]new_sw;
  wire \new_sw[3]_i_1_n_0 ;
  wire [3:0]old_sw;
  wire \old_sw[3]_i_1_n_0 ;
  wire [7:4]p_1_in;
  (* RTL_KEEP = "yes" *) wire [2:0]st;
  wire [3:0]sw;
  wire [3:0]x_t;

  LUT6 #(
    .INIT(64'hAA7F007F004D0048)) 
    \FSM_sequential_st[0]_i_1 
       (.I0(st[2]),
        .I1(done),
        .I2(st[1]),
        .I3(st[0]),
        .I4(btn),
        .I5(st[0]),
        .O(\FSM_sequential_st[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAF72057705400540)) 
    \FSM_sequential_st[1]_i_1 
       (.I0(st[2]),
        .I1(done),
        .I2(st[1]),
        .I3(st[0]),
        .I4(btn),
        .I5(st[1]),
        .O(\FSM_sequential_st[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA3A503F50085008)) 
    \FSM_sequential_st[2]_i_1 
       (.I0(st[2]),
        .I1(done),
        .I2(st[1]),
        .I3(st[0]),
        .I4(btn),
        .I5(st[2]),
        .O(\FSM_sequential_st[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_st_reg[0] 
       (.C(clk_25),
        .CE(1'b1),
        .D(\FSM_sequential_st[0]_i_1_n_0 ),
        .Q(st[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_st_reg[1] 
       (.C(clk_25),
        .CE(1'b1),
        .D(\FSM_sequential_st[1]_i_1_n_0 ),
        .Q(st[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_st_reg[2] 
       (.C(clk_25),
        .CE(1'b1),
        .D(\FSM_sequential_st[2]_i_1_n_0 ),
        .Q(st[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACAA)) 
    \color_t[2]_i_1 
       (.I0(color_t),
        .I1(st[1]),
        .I2(st[2]),
        .I3(st[0]),
        .O(\color_t[2]_i_1_n_0 ));
  FDRE \color_t_reg[2] 
       (.C(clk_25),
        .CE(1'b1),
        .D(\color_t[2]_i_1_n_0 ),
        .Q(color_t),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \new_sw[3]_i_1 
       (.I0(st[0]),
        .I1(st[2]),
        .I2(st[1]),
        .O(\new_sw[3]_i_1_n_0 ));
  FDRE \new_sw_reg[0] 
       (.C(clk_25),
        .CE(\new_sw[3]_i_1_n_0 ),
        .D(sw[0]),
        .Q(new_sw[0]),
        .R(1'b0));
  FDRE \new_sw_reg[1] 
       (.C(clk_25),
        .CE(\new_sw[3]_i_1_n_0 ),
        .D(sw[1]),
        .Q(new_sw[1]),
        .R(1'b0));
  FDRE \new_sw_reg[2] 
       (.C(clk_25),
        .CE(\new_sw[3]_i_1_n_0 ),
        .D(sw[2]),
        .Q(new_sw[2]),
        .R(1'b0));
  FDRE \new_sw_reg[3] 
       (.C(clk_25),
        .CE(\new_sw[3]_i_1_n_0 ),
        .D(sw[3]),
        .Q(new_sw[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \old_sw[3]_i_1 
       (.I0(st[2]),
        .I1(st[0]),
        .I2(st[1]),
        .O(\old_sw[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \old_sw_reg[0] 
       (.C(clk_25),
        .CE(\old_sw[3]_i_1_n_0 ),
        .D(new_sw[0]),
        .Q(old_sw[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_sw_reg[1] 
       (.C(clk_25),
        .CE(\old_sw[3]_i_1_n_0 ),
        .D(new_sw[1]),
        .Q(old_sw[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_sw_reg[2] 
       (.C(clk_25),
        .CE(\old_sw[3]_i_1_n_0 ),
        .D(new_sw[2]),
        .Q(old_sw[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \old_sw_reg[3] 
       (.C(clk_25),
        .CE(\old_sw[3]_i_1_n_0 ),
        .D(new_sw[3]),
        .Q(old_sw[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    start_INST_0
       (.I0(st[0]),
        .I1(st[2]),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \x_t[5]_i_1 
       (.I0(old_sw[0]),
        .I1(st[0]),
        .I2(st[2]),
        .I3(st[1]),
        .I4(new_sw[0]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \x_t[6]_i_1 
       (.I0(old_sw[1]),
        .I1(st[0]),
        .I2(st[2]),
        .I3(st[1]),
        .I4(new_sw[1]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \x_t[7]_i_1 
       (.I0(old_sw[2]),
        .I1(st[0]),
        .I2(st[2]),
        .I3(st[1]),
        .I4(new_sw[2]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \x_t[8]_i_1 
       (.I0(old_sw[3]),
        .I1(st[0]),
        .I2(st[2]),
        .I3(st[1]),
        .I4(new_sw[3]),
        .O(p_1_in[7]));
  FDRE \x_t_reg[5] 
       (.C(clk_25),
        .CE(E),
        .D(p_1_in[4]),
        .Q(x_t[0]),
        .R(1'b0));
  FDRE \x_t_reg[6] 
       (.C(clk_25),
        .CE(E),
        .D(p_1_in[5]),
        .Q(x_t[1]),
        .R(1'b0));
  FDRE \x_t_reg[7] 
       (.C(clk_25),
        .CE(E),
        .D(p_1_in[6]),
        .Q(x_t[2]),
        .R(1'b0));
  FDRE \x_t_reg[8] 
       (.C(clk_25),
        .CE(E),
        .D(p_1_in[7]),
        .Q(x_t[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "version1_hw_control_v1_0_0,control_v1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "control_v1,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_25,
    done,
    x_t,
    y_t,
    color_t,
    start,
    sw,
    btn);
  input clk_25;
  input done;
  output [9:1]x_t;
  output [8:1]y_t;
  output [2:0]color_t;
  output start;
  input [3:0]sw;
  input [3:0]btn;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]btn;
  wire clk_25;
  wire [2:2]\^color_t ;
  wire done;
  wire start;
  wire [3:0]sw;
  wire [8:5]\^x_t ;

  assign color_t[2] = \^color_t [2];
  assign color_t[1] = \<const0> ;
  assign color_t[0] = \<const0> ;
  assign x_t[9] = \<const0> ;
  assign x_t[8:5] = \^x_t [8:5];
  assign x_t[4] = \<const0> ;
  assign x_t[3] = \<const0> ;
  assign x_t[2] = \<const0> ;
  assign x_t[1] = \<const0> ;
  assign y_t[8] = \<const0> ;
  assign y_t[7] = \<const1> ;
  assign y_t[6] = \<const0> ;
  assign y_t[5] = \<const0> ;
  assign y_t[4] = \<const0> ;
  assign y_t[3] = \<const0> ;
  assign y_t[2] = \<const0> ;
  assign y_t[1] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_control_v1 U0
       (.E(start),
        .btn(btn[0]),
        .clk_25(clk_25),
        .color_t(\^color_t ),
        .done(done),
        .sw(sw),
        .x_t(\^x_t ));
  VCC VCC
       (.P(\<const1> ));
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
