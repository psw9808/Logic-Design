
module sram_tb();
	reg[15:0] inbits;
	reg[6:0] addr;
	reg clk,rst,we,re;
	wire[15:0] outbits;
	integer i;
	
	sram16x128 u1(inbits,addr,clk,rst,we,re,outbits);
	
	initial begin
		clk=0; rst=0; we=1; re=0;
		inbits = $random;
		
		for(i=0;i<128;i=i+1)begin
			#1 clk = ~clk;
			addr = i;
			inbits = $random;
		end
		
		re = 1; we = 0;
		
		for(i=0;i<128;i=i+1)begin
			#1 clk = ~clk;
			addr = i;
		end
		
	end

endmodule