module rsa233(input[13:0] big, output reg[13:0] out);
	always@(*) begin
		out = big%10573;				// 1
		out = (out*out)%10573;			// 2
		out = (out*out)%10573;			// 4
		out = (out*(big%10573))%10573;	// 5
		out = (out*(big%10573))%10573;	// 6
		out = (out*(big%10573))%10573;	// 7
		out = (out*out)%10573;			// 14
		out = (out*out)%10573;			// 28
		out = (out*(big%10573))%10573;	// 29
		out = (out*out)%10573;			// 58
		out = (out*out)%10573;			// 116
		out = (out*out)%10573;			// 232
		out = (out*(big%10573))%10573;	// 233
	end
endmodule