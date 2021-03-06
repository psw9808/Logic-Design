`timescale 1ns/1ns
module demux14_tb();
	wire [3:0] y[3:0];
	reg [3:0] a;
	reg [1:0] sel;
	integer i;
	
	demux14 d1(a,sel,y[3:0]);
	
	initial begin
		a=$random; sel=0;
		for(i=0; i<8; i=i+1) begin
			#1 sel = sel + 1;
		end
	end
endmodule