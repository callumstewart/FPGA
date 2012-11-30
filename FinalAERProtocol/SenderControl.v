`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:20 11/29/2012 
// Design Name: 
// Module Name:    SenderControl 
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
module SenderControl(
    input go,
    input Fs_d,
    input Ch1,
    input Ch2,
    input Up,
    input Down,
    input X0_d,
    input Zero_d,
    input One_d,
    input Fe_d,
	 input reset,
    output Fs,
    output Fs_sen,
    output Zero,
    output Zero_sen,
    output One,
    output One_sen,
    output X0,
    output X0_sen,
    output Fe,
	 output Fe_sen,
	 output A,
	 output B,
	 output C,
	 output D,
	 output E
    );


	assign
	
	A = ((!B && C && D && E) || (A && B) || (A && C) || (A && D) || (A && E) || (A && !Fe_sen) ) && reset,
	B = ((!A && C && !D && !E && Fs_d)|| (A && B) || (B && !C) || (B && D && E) || (B && !D && !E) || (B && E && !One_d) || (B && !E && !Zero_d)) && reset,
	C = ((!A && !B && !D && !E && go) || (!A && C) || (B && C) || (C && D) || (C && E && !One_d) || (C && !E && !Fe_d)) && reset,
	D = ((!A && B && C && !E && (Ch1 && Fs_sen)) || (!A && !B && C && E && X0_d) || (!A && D) || (B && D) || (!C && D) || (D && E && !(Up && X0_sen)) || (D && !E && !Zero_d) ) && reset,
	E = ((!A && B && C && !D && (Fs_sen && Ch2)) || (!A && !B && C && D && X0_d) || (!A && E) || (B && E) || (C && !D && E) || (!C && D && E) || (D && E && !(Down && X0_sen)) || (!D && E && !Fe_d)) && reset,
	
	Fs = (!A && !B && C && !D && !E),
	Fs_sen = (!A && B && C && !D && !E),
	
	Zero = ((!A && B && C && D && !E) || (A && !B && C && D && !E)),
	Zero_sen = ((!A && !B && C && D && !E) || (A && !B && C && !D && !E)),
	
	One = ((!A && B && C && !D && E) || (A && !B && C && !D && E)),
	One_sen = ((!A && !B && C && !D && E) || (A && !B && !C && !D && E)),
	
	X0 = ((!A && !B && C && D && !E) || (!A && !B && C && !D && E)),
	X0_sen =(A && !B && C && D && E),
	
	Fe = ((A && !B && C && !D && !E) || (A && !B && !C && !D && E)),
	Fe_sen =(A && !B && !C && !D && !E);
	
	
	
	
	

endmodule
