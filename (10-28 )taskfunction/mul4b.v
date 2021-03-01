module mul4b(input[3:0] a,b , output[7:0] z);
	assign z=a*b;
endmodule

module mul4b_tb();
	reg [3:0] a,b;
	wire [7:0] out1,out2;
	
	mul4b u1(a,b,out1);
	mul4bfunc u2(a,b,out2);
	
	initial begin
		a=0; b=0;
	end
	
	always begin
		#5 a=$random ; b=$random;
	end
	
endmodule

module mul4bfunc(a,b,z);
	input [3:0] a,b;
	output reg [7:0] z;
	
	always@(*) begin
		z = funcabc(a,b);
	end
	
	
	function[7:0] funcabc(input[3:0] a,b);
	begin
		funcabc = a*b;
	end
	endfunction

endmodule