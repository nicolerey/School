`timescale 1ns/1ps
module tb_FullAdder;
	reg in_x, in_y, in_z;
	wire out_s, out_c;

	FullAdder UUT(in_x, in_y, in_z, out_s, out_c);

	initial begin
		$dumpfile("FullAdder.vpd");
		$dumpvars;

		in_x = 0; in_y = 0; in_z = 0;
		#10
		in_x = 1'b1; in_y = 0; in_z = 1'b1;
		#10
		in_x = 0; in_y = 1'b1; in_z = 0;
		#10
		in_x = 1'b1; in_y = 1'b1; in_z = 0;
		#10
		in_x = 0; in_y = 0; in_z = 1'b1;
		#10

		$finish;
	end
endmodule