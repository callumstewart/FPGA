`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:29:33 11/30/2012 
// Design Name: 
// Module Name:    AER_Input 
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
module AER_Input(
    input Ch1Up,
    input Ch1Down,
    input Ch2Up,
    input Ch2Down,
	 input ack,
    input reset,
	 output bit0,
	 output bit1
    );

	wire Fs_sen, Fe_d;
	wire sen_bit0, sen_bit1;
	wire Ch1wire, Ch2wire, Upwire, Downwire, go;

	Arbiter Arbitration (
    .Ch1Up_In(Ch1Up), 
    .Ch1Down_In(Ch1Down), 
    .Ch2Up_In(Ch2Up), 
    .Ch2Down_In(Ch2Down), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Ch1(Ch1wire), 
    .Ch2(Ch2wire), 
    .Up(Upwire), 
    .Down(Downwire), 
    .go(go)
    );
	 
	 
	 Sender SenderChannel (
    .go(go), 
    .reset(reset), 
    .Ch1(Ch1wire), 
    .Ch2(Ch2wire), 
    .Up(Upwire), 
    .Down(Downwire), 
    .ack(ack), 
    .bit0(sen_bit0), 
    .bit1(sen_bit1), 
    .Fs_senOut(Fs_sen), 
    .Fs_dOut(Fe_d)
    );

	assign 
	bit0 = sen_bit0,
	bit1 = sen_bit1;
endmodule
