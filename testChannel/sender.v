`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:03:55 11/14/2012 
// Design Name: 
// Module Name:    sender 
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
module sender(
	 input X0,
	 input Fe,
	 input Fs,
	 input Fd,
	 input nought,
	 input one,
    input ack,
    output reg bit0,
    output reg bit1
    );

		always @(posedge X0)
			begin
				#20 assign bit0 = 1;
				wait (ack)
				#20 assign bit1 = 1;
				wait (!ack)
				#20 assign bit1 = 0;
				wait (ack)
				#20 assign bit0 = 0;
				wait (!ack)
				assign bit1 = 0;
			end
			
		always @(posedge Fe)
			begin
				#20 assign bit1 = 1;
				wait (ack)
				#20 assign bit0 = 1;
				wait (!ack)
				#20 assign bit0 = 0;
				wait (ack)
				#20 assign bit1 = 0;
				wait (!ack)
				assign bit1 = 0;
			end
			
			always @(posedge Fs)
			begin
				#20 assign bit0 = 1;
				wait (ack)
				#20 assign bit1 = 1;
				wait (!ack)
				#20 assign bit0 = 0;
				wait (ack)
				#20 assign bit1 = 0;
				wait (!ack)
				assign bit1 = 0;
			end
			
			always @(posedge Fd)
			begin
				#20 assign bit1 = 1;
				wait (ack)
				#20 assign bit0 = 1;
				wait (!ack)
				#20 assign bit1 = 0;
				wait (ack)
				#20 assign bit0 = 0;
				wait (!ack)
				assign bit0 = 0;
			end
			
			always @(posedge nought)
			begin
				#20 assign bit0 = 1;
				wait (ack)
				#20 assign bit0 = 0;
				wait (!ack)
				assign bit0 = 0;
				
			end
			
			always @(posedge one)
			begin
				#20 assign bit1 = 1;
				wait (ack)
				#20 assign bit1 = 0;
				wait (!ack)
				assign bit1 = 0;
			end
endmodule
