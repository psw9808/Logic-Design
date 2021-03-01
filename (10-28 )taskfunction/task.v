module add4b(a,b,out);
	input [3:0] a,b;
	output [3:0] out;
	
	assign out=a+b;
endmodule

module add4b_tb();
	reg[3:0] a,b;
	wire[3:0] out;
	
	add4b u1(a,b,out);
	
	initial begin a=0; b=0; end

	always
		taskinitinput();
	
	task taskinitinput();
		begin
			#5 a=$random; b=$random; 
		end
	endtask
endmodule