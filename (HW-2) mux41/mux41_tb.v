`timescale 1ns/1ns
module mux41_tb();
	wire [3:0] y;
	reg [3:0] a,b,c,d;
	reg [1:0] sel;
	integer i;
	
	mux41 m1 (a,b,c,d,sel,y);
	
	initial begin
		a=$random;
		b=$random;
		c=$random;
		d=$random;
		sel=0;
		for(i=0; i<5; i=i+1)
			#1 sel = sel+1;
	end	
endmodule