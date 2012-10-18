`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:53 10/03/2012 
// Design Name: 
// Module Name:    switcher 
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
module switcher(clkDiv,led1,led2,anode,ledx);
    input clkDiv;
    input [7:0] led1;
    input [7:0] led2;
    output [3:0] anode;
    output [7:0] ledx;
	 
	 reg [3:0] anode;
	 reg [7:0] ledx;
	 reg S;
	 
	 initial begin
	 S = 1'b0;
	 end
	 
	 
	 always @(posedge clkDiv) begin
	 if(S == 0) begin
		anode <= 4'b1011;
		ledx  <= led1;
		S <= 1'b1;
	 end
	 else if(S == 1)
	 begin
	   anode <= 4'b0111;
		ledx  <= led2;
		S <= 1'b0;
	end
	end
    


endmodule
