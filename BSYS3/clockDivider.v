
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:05 10/03/2012 
// Design Name: 
// Module Name:    clockDivider 
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
module clockDivider(clk,reset,clkDivOut);
    input clk;
    input reset;
    output clkDivOut;
	 reg clkDivOut;
	 
	 parameter period = 24;
	 parameter halfPeriod = period/2;
	 reg[3:0] countValue;
	 
	 always@(posedge clk)
		begin
		if (reset) begin
			countValue = 0;
			clkDivOut <= 0;
		end
		else begin
			if (countValue == period -1) begin
			countValue = 0;
			clkDivOut <= 0;
			end
			else countValue = countValue +1;
		if (countValue == halfPeriod) clkDivOut <= 1;
			end
		end
    


endmodule
