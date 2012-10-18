
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
module clkDivider(clk,reset,clkDivOut);
   input clk,reset;
   output clkDivOut;
	reg[15:0] counter;
	 
	 always @(posedge clk or posedge reset)
	 begin
	 if(reset)
	 counter<=16'd0;
	 
	  else
		if(counter==16'd5000)
		counter<=16'd0;
		
		
		else
		counter<=counter+1;
		end

assign clkDivOut = (counter == 16'd5000);


endmodule
