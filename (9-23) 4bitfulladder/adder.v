module adder(a,b,c_in,sum,c_out);
	input a,b,c_in;
	output sum,c_out;
	
	wire s1,s2,c1;
	
	xor x1 (s1,a,b);
	and a1 (c1,a,b);
	xor x2 (sum,s1,c_in);
	and a2 (s2,s1,c_in);
	xor x3 (c_out,s2,c1);
	
endmodule