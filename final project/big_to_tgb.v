module big_to_tgb(input[13:0] big, output reg[5:0] a,b);
	always@(*) begin
		a = big/100;
		b = big-a*100;
	end
endmodule