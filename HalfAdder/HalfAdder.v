`timescale 1ns/1ps
module HalfAdder(x, y, S, C);

	input x, y;
	output S, C;

	or OR1(S, x, y);
	and AND1(C, x, y);

endmodule