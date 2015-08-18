`timescale 1ns/1ps
module tb_HalfAdder;
	reg x, y;
	wire S, C;

	HalfAdder UUT(x, y, S, C);

	initial begin
		$dumpfile("HalfAdder.vpd");
		$dumpvars;

		x = 0; y = 0;
		#10
		x = 1'b1;
		#10
		y = 1'b1; x = 0;
		#10
		x = 1'b1;
		#10

		$finish;
	end
endmodule