`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:38 11/29/2012 
// Design Name: 
// Module Name:    Sender 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Sender(
    input go,
	 input reset,
    input Ch1,
    input Ch2,
    input Up,
    input Down,
    input ack,
    output bit0,
    output bit1,
	 output Fs_senOut,
	 output Fs_dOut
    );
	 
	 wire Fs, Fs_sen, Fs_d, Zero, Zero_sen, Zero_d;
	 wire One, One_sen, One_d, X0, X0_sen, X0_d;
	 wire Fe, Fe_sen, Fe_d;
	 
	 wire Fs_bit0, Fs_bit1;
	 wire X0_bit0, X0_bit1;
	 wire Fe_bit0, Fe_bit1;
	 
	 wire Zero_bit0, One_bit1;


	SenderControl ControlFSM (
    .go(go), 
    .Fs_d(Fs_d), 
    .Ch1(Ch1), 
    .Ch2(Ch2), 
    .Up(Up), 
    .Down(Down), 
    .X0_d(X0_d), 
    .Zero_d(Zero_d), 
    .One_d(One_d), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Fs(Fs), 
    .Fs_sen(Fs_sen), 
    .Zero(Zero), 
    .Zero_sen(Zero_sen), 
    .One(One), 
    .One_sen(One_sen), 
    .X0(X0), 
    .X0_sen(X0_sen), 
    .Fe(Fe), 
    .Fe_sen(Fe_sen), 
    .A(Control_A), 
    .B(Control_B), 
    .C(Control_C), 
    .D(Control_D), 
    .E(Control_E)
    );

	 
	 FsRefined Fs_FSM (
    .A(Fs_A), 
    .B(Fs_B), 
    .C(Fs_C), 
    .reset(reset), 
    .ack(ack), 
    .senack(Fs_sen), 
    .Fs(Fs), 
    .Dt(Fs_d), 
    .bit0(Fs_bit0), 
    .bit1(Fs_bit1)
    );

	 
	 One One_FSM (
    .ack(ack), 
    .reset(reset), 
    .senack(One_sen), 
    .one(One), 
    .A(One_A), 
    .B(One_B), 
    .Dt(One_d), 
    .bit1(One_bit1)
    );
	 
	 Nought Zero_FSM (
    .ack(ack), 
    .reset(reset), 
    .senack(Zero_sen), 
    .nought(Zero), 
    .A(Zero_A), 
    .B(Zero_B), 
    .Dt(Zero_d), 
    .bit0(Zero_bit0)
    );
	 
	 
	 X0 X0_FSM (
    .ack(ack), 
    .X0(X0), 
    .senack(X0_sen), 
    .reset(reset), 
    .A(X0_A), 
    .B(X0_B), 
    .C(X0_C), 
    .Dt(X0_d), 
    .bit0(X0_bit0), 
    .bit1(X0_bit1)
    );
	 
	 Fe Fe_FSM (
    .ack(ack), 
    .Fe(Fe), 
    .senack(Fe_sen), 
    .reset(reset), 
    .A(Fe_A), 
    .B(Fe_B), 
    .C(Fe_C), 
    .Dt(Fe_d), 
    .bit0(Fe_bit0), 
    .bit1(Fe_bit1)
    );

	assign
	
	bit0 = ((Fs_bit0 || X0_bit0 || Fe_bit0 || Zero_bit0)),
	bit1 = ((Fs_bit1 || X0_bit1 || Fe_bit1 || One_bit1)),
	Fs_senOut = Fs_sen,
	Fs_dOut = Fe_d;

endmodule
