module rsa431(input[13:0] big, output reg[13:0] out);
	always@(*) begin
		out = big%10403;				// 1
		out = (out*out)%10403;			// 2
		out = (out*out)%10403;			// 4
		out = (out*out)%10403;			// 8
		out = (out*(big%10403))%10403;	// 9
		out = (out*(big%10403))%10403;	// 10
		out = (out*(big%10403))%10403;	// 11
		out = (out*(big%10403))%10403;	// 12
		out = (out*(big%10403))%10403;	// 13
		out = (out*out)%10403;			// 26
		out = (out*out)%10403;			// 52
		out = (out*(big%10403))%10403;	// 53
		out = (out*out)%10403;			// 106
		out = (out*(big%10403))%10403;	// 107
		out = (out*out)%10403;			// 214
		out = (out*(big%10403))%10403;	// 215
		out = (out*out)%10403;			// 430
		out = (out*(big%10403))%10403;	// 431
	end
endmodule