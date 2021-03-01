`timescale 1ns/100ps
module tb();
	wire[15:0] out4559;
	wire overflow;
	reg[15:0] a,b;
	reg[1:0] sel;
	
	alu a1(a,b,sel,out4559,overflow);
	
	initial begin
		a=$random; 
		b=$random;
		sel=0;
	end
	
	always begin
		#2.5 sel = sel+1;
	end
	
	always begin
		#10 a=$random; 
			b=$random;
	end
endmodule