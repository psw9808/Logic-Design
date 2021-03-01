module counter_tb();
	reg rst,on,clk;
	wire [3:0] count;
	
	counter c1(rst,on,clk,count);
	
	initial begin
		rst=1; on=0; clk=0;
		#2 rst = 0;
		#2 on = 1;
	end
	
	always begin
		#1 clk = ~clk;
	end
	
endmodule