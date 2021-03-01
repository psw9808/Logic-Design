`timescale 1ns/1ns
module mux1b(input a1,b1,cin, output reg cout);
	always@(*)begin
		if(cin==0)
			#3 assign cout = a1;
		else
			#3 assign cout = b1;
	end
endmodule