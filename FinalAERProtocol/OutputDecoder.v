`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:32 11/30/2012 
// Design Name: 
// Module Name:    OutputDecoder 
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
module OutputDecoder(
    input Fs,
    input X0,
    input Zero,
    input One,
    input Fe,
	 input reset,
    output Fs_ack,
    output X0_ack,
    output Zero_ack,
    output One_ack,
    output Fe_ack,
    output S0,
    output S1,
    output D0,
    output D1,
	 output A,
	 output B,
	 output C,
	 output D,
	 output Ch1Up,
	 output Ch1Down,
	 output Ch2Up,
	 output Ch2Down
    );


	assign
	
	A = ((!B && !C && !D && Fs) || (A && B && !C && !One) || (A && !B && C && !One) || (A && !B && !C && !Fe) || (A && !D) ) && reset,
	B = ((A && !C && !D && One) || (A && C && D && Zero) || (A && B && C) || (A && B && !Zero) || (!A && B && !Fe) || (B && C && D) || (B && !C && !D) ) && reset,
	C = ((A && !B && !D && Zero) || (C && A) || (C && B) || (C && D) ) && reset,
	D = ((A && !B && C && X0) || (A && B && !C && X0) || (A && D) || (B && !C && D) || (B && D && !Zero) || (!B && C && D && !Fe) ) && reset,
	
	
	Fs_ack = (A && !B && !C && !D),
	Zero_ack = ((A && !B && C && !D) || (!A && B && C && !D) || (A && !B && !C && D)),
	One_ack = ((A && B && !C && !D) || (!A && !B && C && D) || (!A && B && !C && D)),
	X0_ack = ((A && !B && C && D) || (A && B && !C && D)),
	Fe_ack = ((!A && !B && C && !D) || (!A && !B & !C && D) || (!A && !B && !C && !D)),
	
	S0 = ((!A && B && C && !D) || (!A && !B && C && D)),
	S1 = ((A && !B && !C && D) || (!A && B && !C && D)),
	
	D0 = ((!A && B && C && !D) || (A && !B && !C && D)),
	D1 = ((!A && !B && C && D) || (!A && B && !C && D)),
	
	Ch1Up = (S0 && D1),
	Ch1Down = (S0 && D0),
	Ch2Up = (S1 && D1),
	Ch2Down = (S1 && D0);
endmodule
