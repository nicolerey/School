`timescale 1ns/1ps
module tb_FourBitAdder;
	reg [3:0] A;
	reg [3:0] B;
	reg C_in;
	wire [3:0] S;
	wire C_out;

	FourBitAdder UUT(A, B, C_in, S, C_out);

	initial begin
		$dumpfile("FourBitAdder.vpd");
		$dumpvars;

		A = 4'd7; B = 4'd3; C_in = 0;
		#10;
		A = 4'd2; B = 4'd5; C_in = 0;
		#10;
		A = 4'd0; B = 4'd0; C_in = 0;
		#10;
		A = 4'd2; B = 4'd2; C_in = 0;
		#10;
		A = 4'd1; B = 4'd0; C_in = 0;
		#10;
		A = 4'd3; B = 4'd5; C_in = 0;
		#10;

		$finish;
	end
endmodule