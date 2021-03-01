`timescale 1ns/1ns
module adder_tb();
	wire[3:0] sum;
	wire c_out;
	reg [3:0]a,b;
	reg	[1:0]c_in;
	
	bit4adder adder(a,b,c_in,sum,c_out);
	
	initial begin
	a=$random;
	b=$random;
	c_in=0;
	end
endmodule