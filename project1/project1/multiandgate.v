module multiandgate(input[15:0] a,input b, output[15:0] y);
	and a0(y[0],a[0],b);
	and a1(y[1],a[1],b);
	and a2(y[2],a[2],b);
	and a3(y[3],a[3],b);
	and a4(y[4],a[4],b);
	and a5(y[5],a[5],b);
	and a6(y[6],a[6],b);
	and a7(y[7],a[7],b);
	and a8(y[8],a[8],b);
	and a9(y[9],a[9],b);
	and a10(y[10],a[10],b);
	and a11(y[11],a[11],b);
	and a12(y[12],a[12],b);
	and a13(y[13],a[13],b);
	and a14(y[14],a[14],b);
	and a15(y[15],a[15],b);
endmodule