`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:02:35 11/14/2012 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
    input X0,
	 input Fe,
	 input Fs,
	 input Fd,
	 input nought,
	 input one,
	 output ackt,
	 output bitt1,
	 output bitt2
    );

	wire ack, bitty1, bitty2;
		
			
	sender send (
	 .X0(X0),
	 .Fe(Fe),
	 .Fs(Fs),
	 .Fd(Fd),
	 .nought(nought),
	 .one(one),
    .ack(ack), 
    .bit0(bitty1), 
    .bit1(bitty2)
    );
	 
	reciever rec (
    .bit0_in(bitty1), 
    .bit1_in(bitty2), 
    .ack_out(ack)
    );
	 
	 assign ackt = ack;
	 assign bitt1 = bitty1;
	 assign bitt2 = bitty2;
			
			

endmodule
