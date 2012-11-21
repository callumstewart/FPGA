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
	 
	 reg source = 0;
	 reg data1 = 0;
	 reg channel1 = 0;
	 reg channel2 = 0;
	 reg up = 0;
	 reg down = 0;
	 
	 
	 initial
	 
	 begin
		Fe_ack = 0;
		Fd_ack = 0;
		X0_ack = 0;
		one_ack = 0;
		zero_ack = 0;
		Fs_ack = 0;
	 end
	 
	 always @*
		begin
			if (Fs  == 1)
				begin
					data1 = 0;
					#10 Fs_ack = 1;
					source = 1;
					
				end
			else
				if(X0 == 1)
					begin
						source = 0;
						#10 X0_ack = 1;
						data1 = 1;
					end
			else 
				if(One == 1)
					begin
						if(source == 1)
							begin
								channel2 = 1;
							end
					else
						if(data1 == 1)
							begin
								up = 1;
							end
					#10 one_ack = 1;
					end
			else
				if(Zero == 1)
					begin
						if(source == 1)
							begin
								channel1 = 1;
							end
					else
						if(data1 == 1)
							begin
								down = 1;
							end
					#10 zero_ack = 1;
					end
			else
				if (Fd == 1)
					begin
						#10 Fd_ack = 1;
					end
			else
				if (Fe == 1)
					begin
						source = 0;
						data1 = 0;
						channel1 = 0;
						channel2 = 0;
						up = 0;
						down = 0;
						
						#5 Fe_ack = 1;
						
					end
	end


	assign
	
		Ch1_Up = channel1 && up,
		Ch1_Down = channel1 && down,
		Ch2_Up = channel2 && up,
		Ch2_Down = channel2 && down;
		
endmodule
