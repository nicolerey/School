`timescale 1ns/1ps
module FourBitAdder(in_A, in_B, in_C, out_S, out_C);
	input [3:0] in_A;
	input [3:0] in_B;
	input  in_C;
	output [3:0] out_S;
	output out_C;
	wire [2:0] wr;

	FullAdder FA1(in_A[0], in_B[0], in_C, out_S[0], wr[0]);
	FullAdder FA2(in_A[1], in_B[1], wr[0], out_S[1], wr[1]);
	FullAdder FA3(in_A[2], in_B[2], wr[1], out_S[2], wr[2]);
	FullAdder FA4(in_A[3], in_B[3], wr[2], out_S[3], out_C);
endmodule