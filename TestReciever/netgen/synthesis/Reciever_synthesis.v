////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: Reciever_synthesis.v
// /___/   /\     Timestamp: Tue Nov 20 23:57:34 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Reciever.ngc Reciever_synthesis.v 
// Device	: xc3s100e-5-cp132
// Input file	: Reciever.ngc
// Output file	: C:\Users\Callum\Desktop\FPGA\TestReciever\netgen\synthesis\Reciever_synthesis.v
// # of Modules	: 1
// Design Name	: Reciever
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

module Reciever (
  ONE_IN, ZERO_ACK, Fd, Fe, ONE_ACK, reset, Fs, FS_ACK, A, B, C, D, E, X0_ACK, ZERO_OUT, ONE_OUT, X0, ACK, FD_ACK, ZERO_IN, FE_ACK
);
  input ONE_IN;
  input ZERO_ACK;
  output Fd;
  output Fe;
  input ONE_ACK;
  input reset;
  output Fs;
  input FS_ACK;
  output A;
  output B;
  output C;
  output D;
  output E;
  input X0_ACK;
  output ZERO_OUT;
  output ONE_OUT;
  output X0;
  output ACK;
  input FD_ACK;
  input ZERO_IN;
  input FE_ACK;
  wire A32;
  wire A321_2;
  wire A322_3;
  wire A54;
  wire A541_5;
  wire A7;
  wire A71_7;
  wire ACK1_9;
  wire ACK2_10;
  wire ACK_OBUF_11;
  wire A_OBUF_12;
  wire B25;
  wire B251_15;
  wire B252_16;
  wire B78;
  wire B781_18;
  wire B782_19;
  wire B_OBUF_20;
  wire C0_22;
  wire C1;
  wire C11_24;
  wire C14_25;
  wire C50;
  wire C501_27;
  wire C502_28;
  wire C_OBUF_29;
  wire D107_31;
  wire D19_32;
  wire D32_33;
  wire D47_34;
  wire D71_35;
  wire D82_36;
  wire D_OBUF_37;
  wire E19_39;
  wire E2_40;
  wire E32_41;
  wire E60;
  wire E7_43;
  wire E73;
  wire E731_45;
  wire E732_46;
  wire E_OBUF_47;
  wire FD_ACK_IBUF_49;
  wire FE_ACK_IBUF_51;
  wire FS_ACK_IBUF_53;
  wire Fd_OBUF_55;
  wire Fe_OBUF_57;
  wire Fs_OBUF_59;
  wire N11;
  wire N26;
  wire N29;
  wire N43;
  wire ONE_ACK_IBUF_65;
  wire ONE_IN_IBUF_67;
  wire ONE_OUT_OBUF_69;
  wire X01_71;
  wire X0_ACK_IBUF_73;
  wire X0_OBUF_74;
  wire ZERO_ACK_IBUF_76;
  wire ZERO_IN_IBUF_78;
  wire ZERO_OUT_OBUF_80;
  wire reset_IBUF_82;
  LUT2 #(
    .INIT ( 4'h4 ))
  A141 (
    .I0(B_OBUF_20),
    .I1(C_OBUF_29),
    .O(N29)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  ONE_OUT1 (
    .I0(D_OBUF_37),
    .I1(N29),
    .I2(A_OBUF_12),
    .I3(E_OBUF_47),
    .O(ONE_OUT_OBUF_69)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  Fd1 (
    .I0(N29),
    .I1(D_OBUF_37),
    .I2(E_OBUF_47),
    .I3(A_OBUF_12),
    .O(Fd_OBUF_55)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  ZERO_OUT1 (
    .I0(N26),
    .I1(C_OBUF_29),
    .I2(B_OBUF_20),
    .O(ZERO_OUT_OBUF_80)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  Fe11 (
    .I0(D_OBUF_37),
    .I1(E_OBUF_47),
    .I2(A_OBUF_12),
    .O(N26)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  Fe1 (
    .I0(N26),
    .I1(C_OBUF_29),
    .I2(B_OBUF_20),
    .O(Fe_OBUF_57)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  E2 (
    .I0(D_OBUF_37),
    .I1(C_OBUF_29),
    .O(E2_40)
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  E7 (
    .I0(ZERO_IN_IBUF_78),
    .I1(A_OBUF_12),
    .I2(B_OBUF_20),
    .O(E7_43)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  E19 (
    .I0(D_OBUF_37),
    .I1(C_OBUF_29),
    .I2(A_OBUF_12),
    .O(E19_39)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  E32 (
    .I0(E_OBUF_47),
    .I1(E2_40),
    .I2(E7_43),
    .I3(E19_39),
    .O(E32_41)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  E98 (
    .I0(reset_IBUF_82),
    .I1(E32_41),
    .I2(E73),
    .O(E_OBUF_47)
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  B105 (
    .I0(reset_IBUF_82),
    .I1(B78),
    .I2(B_OBUF_20),
    .I3(B25),
    .O(B_OBUF_20)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  C0 (
    .I0(C_OBUF_29),
    .I1(N11),
    .O(C0_22)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  C14 (
    .I0(ONE_IN_IBUF_67),
    .I1(ZERO_IN_IBUF_78),
    .O(C14_25)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  C76 (
    .I0(reset_IBUF_82),
    .I1(C0_22),
    .I2(C50),
    .O(C_OBUF_29)
  );
  LUT4 #(
    .INIT ( 16'hFADA ))
  D19 (
    .I0(B_OBUF_20),
    .I1(A_OBUF_12),
    .I2(E_OBUF_47),
    .I3(ONE_IN_IBUF_67),
    .O(D19_32)
  );
  LUT4 #(
    .INIT ( 16'h0F01 ))
  D32 (
    .I0(E_OBUF_47),
    .I1(ZERO_ACK_IBUF_76),
    .I2(A_OBUF_12),
    .I3(C_OBUF_29),
    .O(D32_33)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  D47 (
    .I0(D_OBUF_37),
    .I1(D19_32),
    .I2(D32_33),
    .O(D47_34)
  );
  LUT4 #(
    .INIT ( 16'h0301 ))
  D71 (
    .I0(ZERO_IN_IBUF_78),
    .I1(C_OBUF_29),
    .I2(B_OBUF_20),
    .I3(ONE_IN_IBUF_67),
    .O(D71_35)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  D82 (
    .I0(B_OBUF_20),
    .I1(ONE_IN_IBUF_67),
    .I2(C_OBUF_29),
    .O(D82_36)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  D107 (
    .I0(E_OBUF_47),
    .I1(D82_36),
    .I2(A_OBUF_12),
    .I3(D71_35),
    .O(D107_31)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  D132 (
    .I0(reset_IBUF_82),
    .I1(D47_34),
    .I2(D107_31),
    .O(D_OBUF_37)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  A68 (
    .I0(reset_IBUF_82),
    .I1(A7),
    .I2(A32),
    .I3(A54),
    .O(A_OBUF_12)
  );
  IBUF   ONE_IN_IBUF (
    .I(ONE_IN),
    .O(ONE_IN_IBUF_67)
  );
  IBUF   ZERO_ACK_IBUF (
    .I(ZERO_ACK),
    .O(ZERO_ACK_IBUF_76)
  );
  IBUF   ONE_ACK_IBUF (
    .I(ONE_ACK),
    .O(ONE_ACK_IBUF_65)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_82)
  );
  IBUF   FS_ACK_IBUF (
    .I(FS_ACK),
    .O(FS_ACK_IBUF_53)
  );
  IBUF   X0_ACK_IBUF (
    .I(X0_ACK),
    .O(X0_ACK_IBUF_73)
  );
  IBUF   FD_ACK_IBUF (
    .I(FD_ACK),
    .O(FD_ACK_IBUF_49)
  );
  IBUF   ZERO_IN_IBUF (
    .I(ZERO_IN),
    .O(ZERO_IN_IBUF_78)
  );
  IBUF   FE_ACK_IBUF (
    .I(FE_ACK),
    .O(FE_ACK_IBUF_51)
  );
  OBUF   Fd_OBUF (
    .I(Fd_OBUF_55),
    .O(Fd)
  );
  OBUF   Fe_OBUF (
    .I(Fe_OBUF_57),
    .O(Fe)
  );
  OBUF   Fs_OBUF (
    .I(Fs_OBUF_59),
    .O(Fs)
  );
  OBUF   A_OBUF (
    .I(A_OBUF_12),
    .O(A)
  );
  OBUF   B_OBUF (
    .I(B_OBUF_20),
    .O(B)
  );
  OBUF   C_OBUF (
    .I(C_OBUF_29),
    .O(C)
  );
  OBUF   D_OBUF (
    .I(D_OBUF_37),
    .O(D)
  );
  OBUF   E_OBUF (
    .I(E_OBUF_47),
    .O(E)
  );
  OBUF   ZERO_OUT_OBUF (
    .I(ZERO_OUT_OBUF_80),
    .O(ZERO_OUT)
  );
  OBUF   ONE_OUT_OBUF (
    .I(ONE_OUT_OBUF_69),
    .O(ONE_OUT)
  );
  OBUF   X0_OBUF (
    .I(X0_OBUF_74),
    .O(X0)
  );
  OBUF   ACK_OBUF (
    .I(ACK_OBUF_11),
    .O(ACK)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  Fs1 (
    .I0(N29),
    .I1(E_OBUF_47),
    .I2(D_OBUF_37),
    .I3(A_OBUF_12),
    .O(Fs_OBUF_59)
  );
  INV   E60_INV_0 (
    .I(D_OBUF_37),
    .O(E60)
  );
  GND   XST_GND (
    .G(N43)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  X01 (
    .I0(D_OBUF_37),
    .I1(B_OBUF_20),
    .I2(C_OBUF_29),
    .I3(A_OBUF_12),
    .O(X01_71)
  );
  MUXF5   X0_f5 (
    .I0(N43),
    .I1(X01_71),
    .S(E_OBUF_47),
    .O(X0_OBUF_74)
  );
  LUT4 #(
    .INIT ( 16'h1221 ))
  ACK1 (
    .I0(B_OBUF_20),
    .I1(A_OBUF_12),
    .I2(C_OBUF_29),
    .I3(D_OBUF_37),
    .O(ACK1_9)
  );
  LUT4 #(
    .INIT ( 16'h2002 ))
  ACK2 (
    .I0(B_OBUF_20),
    .I1(A_OBUF_12),
    .I2(C_OBUF_29),
    .I3(D_OBUF_37),
    .O(ACK2_10)
  );
  MUXF5   ACK_f5 (
    .I0(ACK2_10),
    .I1(ACK1_9),
    .S(E_OBUF_47),
    .O(ACK_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  C11 (
    .I0(A_OBUF_12),
    .I1(E_OBUF_47),
    .I2(B_OBUF_20),
    .I3(ZERO_IN_IBUF_78),
    .O(C1)
  );
  LUT4 #(
    .INIT ( 16'hFF23 ))
  C12 (
    .I0(E_OBUF_47),
    .I1(A_OBUF_12),
    .I2(ONE_ACK_IBUF_65),
    .I3(B_OBUF_20),
    .O(C11_24)
  );
  MUXF5   C1_f5 (
    .I0(C11_24),
    .I1(C1),
    .S(D_OBUF_37),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  E731 (
    .I0(A_OBUF_12),
    .I1(E60),
    .I2(B_OBUF_20),
    .I3(C_OBUF_29),
    .O(E731_45)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  E732 (
    .I0(E60),
    .I1(A_OBUF_12),
    .I2(B_OBUF_20),
    .I3(C_OBUF_29),
    .O(E732_46)
  );
  MUXF5   E73_f5 (
    .I0(E732_46),
    .I1(E731_45),
    .S(ZERO_IN_IBUF_78),
    .O(E73)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  C501 (
    .I0(ONE_IN_IBUF_67),
    .I1(D_OBUF_37),
    .I2(B_OBUF_20),
    .I3(A_OBUF_12),
    .O(C501_27)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  C502 (
    .I0(C14_25),
    .I1(D_OBUF_37),
    .I2(B_OBUF_20),
    .I3(A_OBUF_12),
    .O(C502_28)
  );
  MUXF5   C50_f5 (
    .I0(C502_28),
    .I1(C501_27),
    .S(E_OBUF_47),
    .O(C50)
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  A71 (
    .I0(A_OBUF_12),
    .I1(D_OBUF_37),
    .I2(B_OBUF_20),
    .I3(C_OBUF_29),
    .O(A71_7)
  );
  MUXF5   A7_f5 (
    .I0(A71_7),
    .I1(A_OBUF_12),
    .S(E_OBUF_47),
    .O(A7)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  A321 (
    .I0(X0_ACK_IBUF_73),
    .I1(C_OBUF_29),
    .I2(B_OBUF_20),
    .I3(D_OBUF_37),
    .O(A321_2)
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  A322 (
    .I0(B_OBUF_20),
    .I1(C_OBUF_29),
    .I2(D_OBUF_37),
    .I3(FE_ACK_IBUF_51),
    .O(A322_3)
  );
  MUXF5   A32_f5 (
    .I0(A322_3),
    .I1(A321_2),
    .S(E_OBUF_47),
    .O(A32)
  );
  LUT4 #(
    .INIT ( 16'h6420 ))
  A541 (
    .I0(E_OBUF_47),
    .I1(D_OBUF_37),
    .I2(FD_ACK_IBUF_49),
    .I3(FS_ACK_IBUF_53),
    .O(A541_5)
  );
  MUXF5   A54_f5 (
    .I0(N43),
    .I1(A541_5),
    .S(N29),
    .O(A54)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  B781 (
    .I0(A_OBUF_12),
    .I1(D_OBUF_37),
    .I2(C_OBUF_29),
    .I3(ZERO_IN_IBUF_78),
    .O(B781_18)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  B782 (
    .I0(A_OBUF_12),
    .I1(ONE_IN_IBUF_67),
    .I2(C_OBUF_29),
    .I3(D_OBUF_37),
    .O(B782_19)
  );
  MUXF5   B78_f5 (
    .I0(B782_19),
    .I1(B781_18),
    .S(E_OBUF_47),
    .O(B78)
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  B251 (
    .I0(C_OBUF_29),
    .I1(A_OBUF_12),
    .I2(E_OBUF_47),
    .O(B251_15)
  );
  LUT4 #(
    .INIT ( 16'hEFE6 ))
  B252 (
    .I0(E_OBUF_47),
    .I1(C_OBUF_29),
    .I2(A_OBUF_12),
    .I3(D_OBUF_37),
    .O(B252_16)
  );
  MUXF5   B25_f5 (
    .I0(B252_16),
    .I1(B251_15),
    .S(ONE_IN_IBUF_67),
    .O(B25)
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

