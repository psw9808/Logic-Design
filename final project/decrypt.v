module decrypt(input[13:0] enc ,output[6:0] G1,G2);
	wire[13:0] dec;
	wire[5:0] E,F;
	rsa431 u5(enc,dec);
	big_to_tgb u6(dec,E,F);
	tgb_to_asc u7(E,G1);
	tgb_to_asc u8(F,G2);
endmodule