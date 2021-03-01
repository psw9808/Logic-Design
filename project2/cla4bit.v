module cla4bit(input[3:0] a,b, input c_in, output[3:0] sum, output c_out);
	wire[3:0] c;
	clb c1(a,b,c_in,c);
	bit1fulladder a0(a[0],b[0],c_in,sum[0],);
	bit1fulladder a1(a[1],b[1],c[0],sum[1],);
	bit1fulladder a2(a[2],b[2],c[1],sum[2],);
	bit1fulladder a3(a[3],b[3],c[2],sum[3],);
	assign c_out = c[3];
endmodule