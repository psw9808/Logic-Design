module div(input[15:0] a,b, output reg[15:0] out, output reg overflow);
	reg[31:0] R;
	
	always@(a,b)begin
		R = 0;
		R = a;
		if(a<b)begin
			out = 0;
			overflow = 1;
		end
		else begin
			repeat(16) begin
				R = R<<1;
				if(R[31:16]>=b) begin
					R[0] = 1;
					R[31:16] = R[31:16]-b;
				end
			end
			out = R[15:0];
			overflow = 0;
		end
	end
endmodule