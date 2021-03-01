module rsa71(input[13:0] big, output reg[13:0] out);
	always@(*) begin
		out = big%10403;				// 1
		out = (out*out)%10403;			// 2
		out = (out*out)%10403;			// 4
		out = (out*out)%10403;			// 8
		out = (out*out)%10403;			// 16
		out = (out*out)%10403;			// 32
		out = (out*(big%10403))%10403;	// 33
		out = (out*(big%10403))%10403;	// 34
		out = (out*(big%10403))%10403;	// 35
		out = (out*out)%10403;			// 70
		out = (out*(big%10403))%10403;	// 71
	end
endmodule