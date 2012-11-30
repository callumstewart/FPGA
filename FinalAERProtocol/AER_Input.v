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
    input reset
    );



	Arbiter Arbitration (
    .Ch1Up_In(Ch1Up_In), 
    .Ch1Down_In(Ch1Down_In), 
    .Ch2Up_In(Ch2Up_In), 
    .Ch2Down_In(Ch2Down_In), 
    .Fs_sen(Fs_sen), 
    .Fe_d(Fe_d), 
    .reset(reset), 
    .Ch1(Ch1), 
    .Ch2(Ch2), 
    .Up(Up), 
    .Down(Down), 
    .go(go)
    );
	 
	 Sender SendChannel (
    .go(go), 
    .reset(reset), 
    .Ch1(Ch1), 
    .Ch2(Ch2), 
    .Up(Up), 
    .Down(Down), 
    .ack(ack), 
    .bit0(bit0), 
    .bit1(bit1)
    );
endmodule
