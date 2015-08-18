`timescale 1ns/1ps
module FullAdder(in_x, in_y, in_z, out_S, out_C);
	input in_x, in_y, in_z;
	output out_S, out_C;
	wire wr_c1, wr_c2, wr_s1;

	HalfAdder HA1(in_x, in_y, wr_s1, wr_c1);
	HalfAdder HA2(wr_s1, in_z, out_S, wr_c2);

	or OR2(out_C, wr_c1, wr_c2);
endmodule