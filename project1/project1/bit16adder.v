module bit16adder(input[15:0] a, b,input c_in, output[15:0] sum, output c_out);
	wire c1,c2,c3;
	bit4adder a0(a[3:0],b[3:0],c_in,sum[3:0],c1);
	bit4adder a1(a[7:4],b[7:4],c1,sum[7:4],c2);
	bit4adder a2(a[11:8],b[11:8],c2,sum[11:8],c3);
	bit4adder a3(a[15:12],b[15:12],c3,sum[15:12],c_out);
endmodule	
