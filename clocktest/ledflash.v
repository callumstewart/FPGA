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
    output led
    );
	 
	 wire clkDivOut;
	 
	 clkDivider clky (
    .clk(mclk), 
    .reset(rs), 
    .clkDivOut(clkDivOut)
    );
	
	reg ledreg;
	always @(posedge clkDivOut)
	begin
		if (rs)
			ledreg <=0;
		else
			ledreg <= ~led;
		end
	

assign led = ledreg;
endmodule
