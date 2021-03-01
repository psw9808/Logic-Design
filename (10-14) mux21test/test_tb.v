module test();
	reg a,b,sel;
	wire z;
	
	mux21 m1(a,b,sel,z);
	
	initial begin
		a=1; b=0;
		sel=0;
	end
	
	always begin
		#1 sel=~sel;
	end
endmodule