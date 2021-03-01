module csa16b1(input[15:0] a1,b1, input cin, output[15:0] sum, output cout);
	wire[1:0] c;
	wire[15:0] sum0,sum1;
	cla16b c0(a1,b1,0,sum0,c[0]);
	cla16b c1(a1,b1,1,sum1,c[1]);
	mux1b m1(c[0],c[1],cin,cout);
	mux16b m2(sum0,sum1,cin,sum);
endmodule