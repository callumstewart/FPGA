`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:04:46 11/14/2012 
// Design Name: 
// Module Name:    reciever 
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
module reciever(
    input bit0_in,
    input bit1_in,
    output reg ack_out
    );
		
		initial begin
		ack_out = 0;
		end
	
		
		always @(posedge bit0_in or posedge bit1_in or negedge bit0_in or negedge bit1_in)
			begin
			
			#50 ack_out = !ack_out;
		
			end

	
endmodule
