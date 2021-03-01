`timescale 1ns/1ns
module mux16b(input[15:0] a1,b1, input cin, output reg[15:0] cout);
	always@(*)begin
		if(cin==0)
			#3 assign cout = a1;
		else
			#3 assign cout = b1;
	end
endmodule