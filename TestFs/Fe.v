`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:09 11/15/2012 
// Design Name: 
// Module Name:    Fe 
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
module Fe(
    input ack,
    input Fe,
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
	
	
	A = ((!B && !C && Fe) ||(A && !B) || (A && !C) || (A && !ack)) && reset,
	B = ((A && !C && ack) || (B && A) || (B && C) || (B&& !senack))&& reset,
	C = ((A && B && !ack) || (C && A) || (C && !B) || (C && ack)) && reset,
	bit0 = (A && B && !C),
	bit1 = ((A && !C) || (A && B && C)),
	Dt = (!A && B && !C),
	Cclear = (A && !B && !C);

endmodule