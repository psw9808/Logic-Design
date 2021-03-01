module ALU16(output[15:0] z, input[15:0] a,b, input[1:0] sel);
	wire[15:0] y1,y2,y3,y4;
	
	add n1(y1,a,b);
	sub n2(y2,a,b);
	mul n3(y3,a,b);
	div n4(y4,a,b);
	mux41 m1(z,y1,y2,y3,y4,sel);
	
endmodule
