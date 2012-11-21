`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:10 11/20/2012 
// Design Name: 
// Module Name:    Reciever 
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
module Reciever(
	 input reset,
    input ZERO_IN,
    input ONE_IN,
    input ONE_ACK,
    input ZERO_ACK,
    input FS_ACK,
    input FE_ACK,
    input X0_ACK,
    input FD_ACK,
    output ACK,
    output Fs,
    output Fe,
    output Fd,
    output X0,
    output ZERO_OUT,
    output ONE_OUT,
	 output A,
	 output B,
	 output C,
	 output D,
	 output E
    );
	 
	 
	 assign
	 
	 A = ((!B && C && D && !E && FS_ACK) || (B && !C && !D && E && X0_ACK) || (B && !C && D && !E && FE_ACK) || (!B && C && !D && E && FD_ACK) || (A&&B) || (A&&C) || (A&&D) || (A&&E)) && reset,
	 B = ((!A && B && C && !D && !E && !ONE_IN)||(!A && !C  && !D && !E && ONE_IN) || (!A && !C && D && E && !ZERO_IN) || (A && B && C) || (!A && B && D) || (!A && B && ONE_IN) || (B && !C && E)) && reset,
	 C = ((!A && B && !C && !D && !E && !ONE_IN) || (!A && B && !D && !E && ZERO_IN) ||(!A && !B && D && E && !ONE_IN)|| ((A && C && D) || !A && C && !D && !ONE_ACK) || (!A && C && E) || (B && C && !D) || (!B && C && D) || (C && D && ZERO_IN) ) && reset,
	 D = ((!A && !B && !C && !D && E && !ZERO_IN) || (!A && !B && !C && E && ONE_IN) || (!A && B && C && !E && !ONE_IN) ||( (A && D && E) || (!A && C && D) || (!A && D && !E && !ZERO_ACK) || (B && D && !E) || (!B && D && E) || (D && E && ONE_IN)) ) && reset,
	 E = ((!A && !B && !C&& !D && ZERO_IN) || (!A && B && C && !D && !ZERO_IN ) || (A && D && E ) || (!A && B && E) || (!A && E && ZERO_IN) || (C && !D && E) || (!A && !B && !C && D && E && !ZERO_IN)) && reset,
	 
	 
	 Fs = (!A && !B && C && D && !E),
	 X0 = (!A && B && !C && !D && E),
	 Fe = (!A && B && !C && D && !E),
	 Fd = (!A && !B && C && !D && E),
	 
	 ZERO_OUT = (!A && !B && !C && D && !E),
	 ONE_OUT = (!A && !B && C && !D && !E),
	 
	 ACK = ((!A && !B && !C && !D && E) || (!A && B && !C && !D && !E) || (!A && !B && C && D && E) || (!A && B && !C && D && E) || (!A && B && C && D && !E) || (!A && B && C && !D && E)  );


endmodule
