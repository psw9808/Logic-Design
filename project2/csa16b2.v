module csa16b2(input[15:0] a1,b1, input cin, output[15:0] sum, output cout);
	wire[1:0] c;
	wire[15:0] sum0,sum1;
	bit16adder u0(a1, b1, 0, sum0, c[0]);
	bit16adder u1(a1, b1, 1, sum1, c[1]);
	mux1b m1(c[0],c[1],cin,cout);
	mux16b m2(sum0,sum1,cin,sum);
endmodule