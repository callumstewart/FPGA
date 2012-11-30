`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:03:47 11/21/2012 
// Design Name: 
// Module Name:    Output 
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
module Output(
    input Fd,
    input Fs,
    input Fe,
    input X0,
    input One,
    input Zero,
    output reg Fs_ack,
    output reg Fe_ack,
    output reg Fd_ack,
    output reg X0_ack,
    output reg one_ack,
    output reg zero_ack,
    output Ch1_Up,
    output Ch1_Down,
    output Ch2_Up,
    output Ch2_Down
    );
	 
	 reg source;
	 reg data1;
	 reg channel1;
	 reg channel2;
	 reg up;
	 reg down;
	 
	 
	 always @(posedge Fs)
		begin
			source = 1;
			data1 = 0;
			
			#10 Fs_ack = 1;
		end
		
	
	
	always @(posedge X0)
		begin
		
		
			source = 0;
			data1 = 1;
			
			#10 X0_ack = 1;
		end
		
		
		
		always @(posedge Fe)
		begin
			#10 Fe_ack = 1;
			source = 0;
			data1 = 0;
			channel1 = 0;
			channel2 = 0;
			up = 0;
			down = 0;
			
			
		end
		
		always @(posedge Zero)
		begin
		
		
			if (source == 1)
			begin
				channel1 = 1;
				channel2 = 0;
			end
			else 
			if (data1 == 1)
			begin
				down = 1;
				up = 0;
		   end
			
		#10 zero_ack = 1;
		end


		always @(posedge One)
		begin
		
		
			if (source == 1)
			begin
				channel2 = 1;
				channel1 = 0;
			end
			else 
			if (data1 == 1)
			begin
				up = 1;
				down = 0;
		   end
			
		#10 one_ack = 1;
		end


	assign
	
		Ch1_Up = channel2 && up,
		Ch1_Down = channel1 && down,
		Ch2_Up = channel1 && up,
		Ch2_Down = channel2 && down;
		
endmodule
