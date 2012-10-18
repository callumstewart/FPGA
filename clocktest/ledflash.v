`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:11 10/04/2012 
// Design Name: 
// Module Name:    ledflash 
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
module ledflash(
    input mclk,
    input rs,
    output reg led
    );
	 
	 wire clkDivOut;
	 
	 clkDivider clky (
    .clk(mclk), 
    .reset(rs), 
    .clkDivOut(clkDivOut)
    );
	
	
	always @(posedge clkDivOut or posedge rs)
	begin
		if (rs)
			begin
			led <=0;
			end
		else
			begin
			led <= ~led;
			end
	end
	


endmodule
