`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:06 11/14/2012 
// Design Name: 
// Module Name:    FsRefined 
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
module FsRefined(
    output A,
    output B,
    output C,
    input reset,
    input ack,
	 input senack,
	 output cclear,
    input Fs,
    output Dt,
    output bit0,
    output bit1
    );


	assign
	
	
	A = ((!B && !C && Fs) ||(A && !B) || (A && !C) || (A && !ack)) && reset,
	B = ((A && !C && ack) || (B && A) || (B && C) || (B&& !senack))&& reset,
	C = ((A && B && !ack) || (C && A) || (C && !B) || (C && ack)) && reset,
	bit0 = (A && !C),
	bit1 = (A && B),
	Dt = (!A && B && !C),
	cclear = (A && !B && !C);

endmodule
