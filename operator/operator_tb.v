module operator_tb();
	reg[5:0] out4559;
	reg[4:0] in1,in2;
	
	initial begin
		
		//1
		in1 = 1; in2 = 2; out4559=in1+in2;
		#2 in1= 5'b1101; in2= 5'bx1100;
		
		//2
		#3 in1= 5'bx; in2= -2; out4559= in1 && in2;
		#2 out4559= in1 || in2;
		#2  out4559= in1 & in2;
		#2  out4559= in1 | in2;
		
		#3 in1= -10; in2= -2;  out4559= in1 && in2;
		#2  out4559= in1 || in2;
		#2  out4559= in1 & in2;
		#2  out4559= in1 | in2;
		
		//3
		#3 in1= 5'b100z; in2= 5'b1100;  out4559= (in1<in2);
		
		//4
		#3 in1= 5'b1xxz; in2= 5'b1xxx;  out4559= (in1 === in2);
		#2  out4559= in1 == in2;
		
		//5
		#3 in1= 5'b1001x;  out4559= &in1;
		#2  out4559= ^in1;
		
		//6
		#3 in1= 5'b10011;  out4559 = in1+6'b100000;
		#2 in2= 1;  out4559= {in2,in1};
	end
	
	
	
endmodule