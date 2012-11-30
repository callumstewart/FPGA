`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:07:32 11/15/2012 
// Design Name: 
// Module Name:    Sender 
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
module Sender(
    input ack,
	 input reset,
    input Ch1,
    input Ch2,
    input Up,
	 input go,
    input Down,
    output Bit0_Out,
    output Bit1_Out,
	 output comp,
	 output dt
    );
	 
	 wire dt1, bit0_nought1, d_x00, d_x01;
	 wire fs_clear, nought_clear, one_clear, x0_clear;
		reg fs_senac = 0;
		reg dt1_senac = 0;
		reg dt2_senac = 0;
		reg x0d_senac = 0;
		reg dt2reg = 0;
		reg dt1reg =0;
		reg x0_d = 0;
		reg Fe_d =0;
		reg d_fe = 0;
		reg fe_senac = 0;
		reg Fe_go;
		
		
	 FsRefined FS_FSM (
    .A(fs_A), 
    .B(fs_B), 
    .C(fs_C), 
    .reset(reset), 
    .ack(ack), 
    .senack(fs_senac), 
    .cclear(fs_clear), 
    .Fs(go), 
    .Dt(dt1), 
    .bit0(bit0_fs), 
    .bit1(bit1_fs)
    );
	 
	 Nought Nought_FSM (
    .ack(ack), 
    .reset(reset), 
    .senack(dt1_senac), 
    .nought(dt1reg), 
    .A(n1_A), 
    .B(n1_B), 
    .Cclear(nought_clear), 
    .Dt(d_x00), 
    .bit0(bit0_nought1)
    );
	
	 One One_FSM (
    .ack(ack), 
    .reset(reset), 
    .senack(dt2_senac), 
    .one(dt2reg), 
    .A(o1_A), 
    .B(o1_B), 
    .Cclear(one_clear), 
    .Dt(d_x01), 
    .bit1(bit1_one1)
    );
	 
	 X0 X0_FSM (
    .ack(ack), 
    .X0(x0_d), 
    .senack(x0d_senac), 
    .reset(reset), 
    .A(x0_A), 
    .B(x0_B), 
    .C(x0_C), 
    .Cclear(x0_clear), 
    .Dt(d_x0), 
    .bit0(bit0_x0), 
    .bit1(bit1_x1)
    );
	 
	 Fe Fe_FSM (
    .ack(ack), 
    .Fe(d_fe), 
    .senack(fe_senac), 
    .reset(reset), 
    .A(fe_A), 
    .B(fe_B), 
    .C(fe_C), 
    .Cclear(fe_clear), 
    .Dt(fe_compl), 
    .bit0(bit0_fe), 
    .bit1(bit1_fe)
    );
	 
	 
	 always @*
	 begin
	 
	 if (go == 1)
	 begin
	 fs_senac = 0;
		dt1_senac = 0;
		dt2_senac = 0;
		x0d_senac = 0;
		dt2reg = 0;
		dt1reg =0;
		x0_d = 0;
		Fe_d =0;
		d_fe = 0;
		fe_senac = 0;
		Fe_go = 0;
		end
		else
	
	 
	
	 
	 if (Ch2 ==1 && dt1 ==1) 
	 begin
	 dt2reg = dt1&&Ch2;
	 fs_senac = dt1 && 1;
	 

	 
	 end 
	
	else if(Ch1 ==1 && dt1 == 1) begin
	 
	dt1reg = dt1&&Ch1;
	fs_senac = dt1 && 1;
	
	
	
	 end
	
	else if (Down == 1 && d_x0 == 1 && Fe_d ==0)
	begin
	
	
	dt1reg = d_x0&&Down;
   Fe_d = 1;
	
	x0d_senac = d_x0 && 1;
	
	
	end
	
	else if(Up == 1 && d_x0 == 1 && Fe_d ==0)
	begin

	
		
	dt2reg = d_x0&&Up;
	Fe_d = 1;
	
	x0d_senac = d_x0 && 1;
	end
	
	else
	if ((d_x00 == 1 || d_x01 ==1) && (Fe_d ==0))
	begin
	x0_d = 1;
	dt2_senac = 1;
	dt1_senac = 1;
	
	end
	else
	if (Fe_d == 1 && (d_x00 == 1 || d_x01 ==1))
	begin
	
	dt2_senac = 1;
	dt1_senac = 1;
	
	Fe_go = 1;
	
	
	
	end
	else
	if (Fe_go == 1 && d_x00 == 0 && d_x01 ==0)
	begin
	d_fe = 1;
	Fe_go = 0;
	
	   
	end
	
	else if(fe_compl == 1)
	begin
	fe_senac = 1;
	
	
	   
	
	
	end
	
	else
	if (nought_clear == 1)
		begin
			dt1reg = 0;
		end
	else if (one_clear == 1)
		begin
			dt2reg = 0;
		end
	else if (x0_clear == 1)
		begin
			x0_d = 0;
		end
	else if (fe_clear ==1)
		begin
			d_fe = 0;
		end
	
	end
	 assign
	 
	 Bit0_Out = (bit0_fs || bit0_nought1 || bit0_x0 || bit0_fe),
	 Bit1_Out = (bit1_fs|| bit1_one1|| bit1_x1 || bit1_fe),
	 dt = d_x00,
	 comp = fe_compl;
	// dt = fs_d || x0_d || d_x00 || d_x01 || d_fe1 || d_fe2;
endmodule
