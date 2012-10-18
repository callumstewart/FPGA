`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:19 10/03/2012 
// Design Name: 
// Module Name:    seg7 
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
module seg7(bcd,led,led2);
    input [4:0] bcd;
    output [7:0]led;
	 reg [7:0] led;
	 output [7:0]led2;
	 reg [7:0] led2;
   
	 
		reg [3:0] bcd2;

always @(bcd)
	begin	
	if ((bcd >= 5'd10) && (bcd < 5'd20))
		begin
		led2 = 8'b10011111;
		bcd2 <= (bcd - 10);
		end 
	else if ((bcd >= 5'd20) && (bcd < 5'd30))
		begin
		led2 = 8'b00100101;
		bcd2 <= (bcd - 20);
		end 
	else if (bcd == 5'd30)
		begin
		led2 = 8'b00001101;
		bcd2 <= (bcd - 30);
		end 
	else
		begin
		led2 = 8'b00000011;
		bcd2 <= bcd;
		end
		
		
		
		end
	
	
		
		
		always @(bcd2)
		begin
		
		case (bcd2)       //abcdefg
			0: led = 8'b00000011;
	   	
			1: led = 8'b10011111;
			2: led = 8'b00100101;
			3: led = 8'b00001101;
			4: led = 8'b10011001;
			5: led = 8'b01001001;
			6: led = 8'b01000001;
			7: led = 8'b00011111;
			8: led = 8'b00000001;
			9: led = 8'b00001001;
			
			
		
			
			default: led = 8'b11111111;
			
		endcase
		
		end
	
endmodule
