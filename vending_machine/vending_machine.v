`timescale 1ns/1ps
module vending_machine(Clk, nrst, p1, p5, item3p, item2p, change, disp);
	input Clk, nrst, p1, p5, item3p, item2p;
	output reg change, disp;
	reg pstate, nstate;
	
	parameter A = 4'd0;
	parameter B = 4'd1;
	parameter C = 4'd2;
	parameter D = 4'd3;
	parameter E = 4'd4;
	parameter F = 4'd5;
	parameter G = 4'd6;
	parameter H = 4'd7;

	always @ (posedge Clk)
	begin
		if(nrst)
			begin
				change = 1'b0;
				disp = 1'b0;
				pstate = A;
			end
		else
			pstate = nstate;
	end

	always @ (*)
	begin
		case(pstate)
			A:
				begin
					if(p5==1 && item2p==1)
						nstate = D;
					else if(p5==1 && item3p==1)
						nstate = C;
					else if(p1==1)
						nstate = B;
				end
			B:
				begin
					if(p1==1 && item2p==1)
						nstate = A;
					else if(p1==1)
						nstate = E;
					else if(p5==1 && item3p==1)
						nstate = G;
					else if(p5==1 && item2p==1)
						nstate = H;
				end
			C:
				nstate = A;
			D:
				nstate = C;
			E:
				begin
					if(p1==1 && item3p==1)
						nstate = A;
					else if(p5==1 && item3p==1)
						nstate = F;
				end
			G:
				nstate = A;
			H:
				nstate = C;
		endcase
	end

	always @ (*)
	begin
		case(pstate)
			A:
				begin
					if(p5==1)
						begin
							change = 1'b1;
							disp = 1'b1;
						end
				end
			B:
				begin
					if(p1==1 && item2p==1)
						begin
							change = 1'b0;
							disp = 1'b1;
						end
					else if(p5==1)
						begin
							change = 1'b1;
							disp = 1'b1;
						end
				end
			C, D, F, G:
				begin
					change = 1'b1;
					disp = 1'b0;
				end
			E:
				begin
					if(p1==1 && item3p==1)
						begin
							change = 1'b0;
							disp = 1'b1;
						end
					else if(p5==1 && item3p==1)
						begin
							change = 1'b1;
							disp = 1'b1;
						end
				end
		endcase
	end
endmodule