`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:39 11/29/2012 
// Design Name: 
// Module Name:    Ch1Up_FSM 
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
module Ch2Down_FSM(
    input Ch2Down,
    input Gnt2,
    input Fs_sen,
    input Fe_d,
	 input reset,
    output Req2,
    output Ch2,
	 output Down,
    output go,
	 output A,
	 output B,
	 output C
    );

	assign
	
	A = ((!B && !C && Ch2Down) || (A && !B) || (A && !C) || (A && !Fe_d)) && reset,
	B = ((A && !C && Gnt2) || (B && A) || (B && !C) || (B && Gnt2)) && reset,
	C = ((A && B && Fs_sen) || (C && A) || (C && B) || (C && Ch2Down)) && reset,
	
	Req2 = A,
	Ch2 = (A && B),
	Down = (A && B),
	go = (A && B && !C);

endmodule
