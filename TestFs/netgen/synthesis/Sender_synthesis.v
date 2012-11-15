////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: Sender_synthesis.v
// /___/   /\     Timestamp: Thu Nov 15 04:59:05 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Sender.ngc Sender_synthesis.v 
// Device	: xc3s100e-5-cp132
// Input file	: Sender.ngc
// Output file	: C:\Users\Callum\Desktop\FPGA\TestFs\netgen\synthesis\Sender_synthesis.v
// # of Modules	: 1
// Design Name	: Sender
// Xilinx        : G:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Sender (
  comp, reset, Bit0_Out, go, Bit1_Out, ack, Up, Ch1, Ch2, Down
);
  output comp;
  input reset;
  output Bit0_Out;
  input go;
  output Bit1_Out;
  input ack;
  input Up;
  input Ch1;
  input Ch2;
  input Down;
  wire Bit0_Out10;
  wire Bit0_Out101_2;
  wire Bit0_Out102_3;
  wire Bit0_Out_OBUF_4;
  wire Bit1_Out12;
  wire Bit1_Out121_7;
  wire Bit1_Out122_8;
  wire Bit1_Out29_9;
  wire Bit1_Out_OBUF_10;
  wire \FS_FSM/A ;
  wire \FS_FSM/A1_12 ;
  wire \FS_FSM/A2_13 ;
  wire \FS_FSM/B ;
  wire \FS_FSM/B1_15 ;
  wire \FS_FSM/B2_16 ;
  wire \FS_FSM/C_17 ;
  wire \Fe_FSM/A ;
  wire \Fe_FSM/A1_19 ;
  wire \Fe_FSM/B ;
  wire \Fe_FSM/B1_21 ;
  wire \Fe_FSM/B2_22 ;
  wire \Fe_FSM/C_23 ;
  wire N01;
  wire N23;
  wire N24;
  wire N33;
  wire N34;
  wire N36;
  wire N37;
  wire N44;
  wire \Nought_FSM/A ;
  wire \Nought_FSM/B ;
  wire \One_FSM/A ;
  wire \One_FSM/B ;
  wire \X0_FSM/A ;
  wire \X0_FSM/A1_37 ;
  wire \X0_FSM/A2_38 ;
  wire \X0_FSM/B ;
  wire \X0_FSM/B1_40 ;
  wire \X0_FSM/B2_41 ;
  wire \X0_FSM/C_42 ;
  wire ack_IBUF_44;
  wire comp_OBUF_46;
  wire go_IBUF_48;
  wire reset_IBUF_50;
  GND   XST_GND (
    .G(comp_OBUF_46)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \One_FSM/B1  (
    .I0(\One_FSM/A ),
    .I1(\One_FSM/B ),
    .I2(reset_IBUF_50),
    .I3(N01),
    .O(\One_FSM/B )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \One_FSM/A1  (
    .I0(\One_FSM/A ),
    .I1(N01),
    .I2(\One_FSM/B ),
    .I3(reset_IBUF_50),
    .O(\One_FSM/A )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \Nought_FSM/B1  (
    .I0(\Nought_FSM/A ),
    .I1(\Nought_FSM/B ),
    .I2(reset_IBUF_50),
    .I3(N01),
    .O(\Nought_FSM/B )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \Nought_FSM/A1  (
    .I0(\Nought_FSM/A ),
    .I1(N01),
    .I2(\Nought_FSM/B ),
    .I3(reset_IBUF_50),
    .O(\Nought_FSM/A )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \X0_FSM/C_SW0  (
    .I0(reset_IBUF_50),
    .I1(ack_IBUF_44),
    .I2(\X0_FSM/B ),
    .I3(\X0_FSM/A ),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'h20AA ))
  \X0_FSM/C_SW1  (
    .I0(reset_IBUF_50),
    .I1(ack_IBUF_44),
    .I2(\X0_FSM/A ),
    .I3(\X0_FSM/B ),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \X0_FSM/C  (
    .I0(\X0_FSM/C_42 ),
    .I1(N01),
    .I2(N23),
    .I3(N24),
    .O(\X0_FSM/C_42 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \FS_FSM/C11  (
    .I0(reset_IBUF_50),
    .I1(ack_IBUF_44),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \Fe_FSM/C_SW0  (
    .I0(reset_IBUF_50),
    .I1(ack_IBUF_44),
    .I2(\Fe_FSM/B ),
    .I3(\Fe_FSM/A ),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'h20AA ))
  \Fe_FSM/C_SW1  (
    .I0(reset_IBUF_50),
    .I1(ack_IBUF_44),
    .I2(\Fe_FSM/A ),
    .I3(\Fe_FSM/B ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \Fe_FSM/C  (
    .I0(\Fe_FSM/C_23 ),
    .I1(N01),
    .I2(N33),
    .I3(N34),
    .O(\Fe_FSM/C_23 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \FS_FSM/C_SW0  (
    .I0(\FS_FSM/C_17 ),
    .I1(reset_IBUF_50),
    .I2(\FS_FSM/B ),
    .I3(N01),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hEAC8 ))
  \FS_FSM/C_SW1  (
    .I0(reset_IBUF_50),
    .I1(\FS_FSM/C_17 ),
    .I2(N01),
    .I3(\FS_FSM/B ),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hFD20 ))
  \FS_FSM/C  (
    .I0(\FS_FSM/A ),
    .I1(ack_IBUF_44),
    .I2(N37),
    .I3(N36),
    .O(\FS_FSM/C_17 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  Bit1_Out29 (
    .I0(\Fe_FSM/A ),
    .I1(\Fe_FSM/C_23 ),
    .I2(\Fe_FSM/B ),
    .O(Bit1_Out29_9)
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  Bit1_Out32 (
    .I0(Bit1_Out12),
    .I1(\FS_FSM/A ),
    .I2(\FS_FSM/B ),
    .I3(Bit1_Out29_9),
    .O(Bit1_Out_OBUF_10)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_50)
  );
  IBUF   go_IBUF (
    .I(go),
    .O(go_IBUF_48)
  );
  IBUF   ack_IBUF (
    .I(ack),
    .O(ack_IBUF_44)
  );
  OBUF   comp_OBUF (
    .I(comp_OBUF_46),
    .O(comp)
  );
  OBUF   Bit0_Out_OBUF (
    .I(Bit0_Out_OBUF_4),
    .O(Bit0_Out)
  );
  OBUF   Bit1_Out_OBUF (
    .I(Bit1_Out_OBUF_10),
    .O(Bit1_Out)
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  Bit0_Out36_SW0 (
    .I0(\Fe_FSM/A ),
    .I1(\Fe_FSM/C_23 ),
    .I2(\Fe_FSM/B ),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'hFF5D ))
  Bit0_Out36 (
    .I0(N44),
    .I1(\FS_FSM/A ),
    .I2(\FS_FSM/C_17 ),
    .I3(Bit0_Out10),
    .O(Bit0_Out_OBUF_4)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \X0_FSM/B1  (
    .I0(\X0_FSM/B ),
    .I1(reset_IBUF_50),
    .O(\X0_FSM/B1_40 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \X0_FSM/B2  (
    .I0(\X0_FSM/A ),
    .I1(\X0_FSM/B ),
    .I2(reset_IBUF_50),
    .I3(N01),
    .O(\X0_FSM/B2_41 )
  );
  MUXF5   \X0_FSM/B_f5  (
    .I0(\X0_FSM/B2_41 ),
    .I1(\X0_FSM/B1_40 ),
    .S(\X0_FSM/C_42 ),
    .O(\X0_FSM/B )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \X0_FSM/A1  (
    .I0(\X0_FSM/A ),
    .I1(reset_IBUF_50),
    .I2(ack_IBUF_44),
    .I3(\X0_FSM/B ),
    .O(\X0_FSM/A1_37 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \X0_FSM/A2  (
    .I0(reset_IBUF_50),
    .I1(\X0_FSM/B ),
    .I2(\X0_FSM/A ),
    .O(\X0_FSM/A2_38 )
  );
  MUXF5   \X0_FSM/A_f5  (
    .I0(\X0_FSM/A2_38 ),
    .I1(\X0_FSM/A1_37 ),
    .S(\X0_FSM/C_42 ),
    .O(\X0_FSM/A )
  );
  LUT4 #(
    .INIT ( 16'hEE20 ))
  \Fe_FSM/B1  (
    .I0(\Fe_FSM/A ),
    .I1(\Fe_FSM/C_23 ),
    .I2(N01),
    .I3(\Fe_FSM/B ),
    .O(\Fe_FSM/B1_21 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \Fe_FSM/B2  (
    .I0(N01),
    .I1(\Fe_FSM/A ),
    .I2(\Fe_FSM/C_23 ),
    .O(\Fe_FSM/B2_22 )
  );
  MUXF5   \Fe_FSM/B_f5  (
    .I0(\Fe_FSM/B2_22 ),
    .I1(\Fe_FSM/B1_21 ),
    .S(reset_IBUF_50),
    .O(\Fe_FSM/B )
  );
  LUT4 #(
    .INIT ( 16'h2AAF ))
  \Fe_FSM/A1  (
    .I0(\Fe_FSM/A ),
    .I1(ack_IBUF_44),
    .I2(\Fe_FSM/C_23 ),
    .I3(\Fe_FSM/B ),
    .O(\Fe_FSM/A1_19 )
  );
  MUXF5   \Fe_FSM/A_f5  (
    .I0(comp_OBUF_46),
    .I1(\Fe_FSM/A1_19 ),
    .S(reset_IBUF_50),
    .O(\Fe_FSM/A )
  );
  LUT4 #(
    .INIT ( 16'hEE20 ))
  \FS_FSM/B1  (
    .I0(\FS_FSM/A ),
    .I1(\FS_FSM/C_17 ),
    .I2(N01),
    .I3(\FS_FSM/B ),
    .O(\FS_FSM/B1_15 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \FS_FSM/B2  (
    .I0(N01),
    .I1(\FS_FSM/A ),
    .I2(\FS_FSM/C_17 ),
    .O(\FS_FSM/B2_16 )
  );
  MUXF5   \FS_FSM/B_f5  (
    .I0(\FS_FSM/B2_16 ),
    .I1(\FS_FSM/B1_15 ),
    .S(reset_IBUF_50),
    .O(\FS_FSM/B )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \FS_FSM/A1  (
    .I0(\FS_FSM/A ),
    .I1(reset_IBUF_50),
    .I2(ack_IBUF_44),
    .I3(\FS_FSM/B ),
    .O(\FS_FSM/A1_12 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \FS_FSM/A2  (
    .I0(reset_IBUF_50),
    .I1(go_IBUF_48),
    .I2(\FS_FSM/B ),
    .I3(\FS_FSM/A ),
    .O(\FS_FSM/A2_13 )
  );
  MUXF5   \FS_FSM/A_f5  (
    .I0(\FS_FSM/A2_13 ),
    .I1(\FS_FSM/A1_12 ),
    .S(\FS_FSM/C_17 ),
    .O(\FS_FSM/A )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Bit1_Out121 (
    .I0(reset_IBUF_50),
    .I1(\One_FSM/B ),
    .O(Bit1_Out121_7)
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  Bit1_Out122 (
    .I0(\X0_FSM/A ),
    .I1(\X0_FSM/B ),
    .I2(\One_FSM/B ),
    .I3(reset_IBUF_50),
    .O(Bit1_Out122_8)
  );
  MUXF5   Bit1_Out12_f5 (
    .I0(Bit1_Out122_8),
    .I1(Bit1_Out121_7),
    .S(\X0_FSM/C_42 ),
    .O(Bit1_Out12)
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  Bit0_Out101 (
    .I0(\X0_FSM/B ),
    .I1(\X0_FSM/A ),
    .I2(\Nought_FSM/B ),
    .I3(reset_IBUF_50),
    .O(Bit0_Out101_2)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  Bit0_Out102 (
    .I0(\Nought_FSM/B ),
    .I1(reset_IBUF_50),
    .I2(\X0_FSM/A ),
    .O(Bit0_Out102_3)
  );
  MUXF5   Bit0_Out10_f5 (
    .I0(Bit0_Out102_3),
    .I1(Bit0_Out101_2),
    .S(\X0_FSM/C_42 ),
    .O(Bit0_Out10)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

