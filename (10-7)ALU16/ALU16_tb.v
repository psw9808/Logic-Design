module ALU16_tb();
	wire[15:0] z;
	reg[15:0] a,b;
	reg[1:0] sel;
	
	ALU16 ALU1(z,a,b,sel);
	
	initial begin
		sel = 0;
		a=$random; 
		b=$random;
	end
	
	always begin
		#1 sel=sel+1;
		a=$random; 
		b=$random;
	end

endmodule