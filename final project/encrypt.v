module encrypt(input[6:0] A1,A2 ,output[13:0] enc);
	wire[13:0] D;
	wire[5:0] B,C;
	asc_to_tgb u1(A1,B);
	asc_to_tgb u2(A2,C);
	tgb_to_big u3(B,C,D);
	rsa71 u4(D,enc);
endmodule