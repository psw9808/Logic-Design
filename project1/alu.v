module alu(input[15:0] a,b,input[1:0] sel, output[15:0] out4559, output overflow);
	wire[15:0] addout,subout,mulout,divout;
	wire addof,subof,mulof,divof;
	add a1(a,b,addout,addof);
	sub s1(a,b,subout,subof);
	mul m1(a,b,mulout,mulof);
	div d1(a,b,divout,divof);
	
	mux41 mux1(addout,subout,mulout,divout,sel,out4559);
	bit1mux41 mux2(addof,~subof,mulof,divof,sel,overflow);
	
endmodule