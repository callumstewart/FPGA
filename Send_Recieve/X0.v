`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:15:42 11/15/2012 
// Design Name: 
// Module Name:    X0 
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
module X0(
    input ack,
    input X0,
    input senack,
    input reset,
    output A,
    output B,
    output C,
    output Cclear,
    output Dt,
    output bit0,
    output bit1
    );

	assign
	
	
	A = ((!B && !C && X0) ||(A && !B) || (A && !C) || (A && !ack)) && reset,
	B = ((A && !C && ack) || (B && A) || (B && C) || (B&& !senack))&& reset,
	C = ((A && B && !ack) || (C && A) || (C && !B) || (C && ack)) && reset,
	bit0 = ((A && !C) || (A && B && C)),
	bit1 = (A && B && !C),
	Dt = (!A && B && !C),
	Cclear = (A && !B && !C);

endmodule
