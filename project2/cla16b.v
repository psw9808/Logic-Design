module cla16b(input[15:0] a1,b1, input cin, output[15:0] sum, output cout);
	wire[2:0] c;
	cla4bit u0(a1[3:0],b1[3:0],cin,sum[3:0],c[0]);
	cla4bit u1(a1[7:4],b1[7:4],c[0],sum[7:4],c[1]);
	cla4bit u2(a1[11:8],b1[11:8],c[1],sum[11:8],c[2]);
	cla4bit u3(a1[15:12],b1[15:12],c[2],sum[15:12],cout);
endmodule