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
module Ch1Up_FSM(
    input Ch1Up,
    input Gnt1,
    input Fs_sen,
    input Fe_d,
	 input reset,
    output Req1,
    output Ch1,
	 output Up,
    output go,
	 output A,
	 output B,
	 output C
    );

	assign
	
	A = ((!B && !C && Ch1Up) || (A && !B) || (A && !C) || (A && !Fe_d)) && reset,
	B = ((A && !C && Gnt1) || (B && A) || (B && !C) || (B && Gnt1)) && reset,
	C = ((A && B && Fs_sen) || (C && A) || (C && B) || (C && Ch1Up)) && reset,
	
	Req1 = A,
	Ch1 = (A && B),
	Up = (A && B),
	go = (A && B && !C);

endmodule
