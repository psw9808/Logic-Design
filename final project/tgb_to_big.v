module tgb_to_big(input[5:0] a,b, output reg[13:0] big);
	always@(*) begin
		big <= a*100+b;
	end
endmodule