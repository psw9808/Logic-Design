`timescale 1ns/1ns
module bit1fulladder(input a,b,c_in, output sum, c_out);
	wire s1,s2,c1;
	and #7 a1(c1,a,b), a2(s2,s1,c_in);
	xor #6 x1(s1,a,b), x2(sum,s1,c_in), x3(c_out,s2,c1);
endmodule