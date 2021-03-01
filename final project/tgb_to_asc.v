module tgb_to_asc(input[5:0] tgb, output reg[6:0] asc);
	always@(*) begin
	if(tgb<2)
		asc <= tgb+32;
	else if(tgb<12)
		asc <= tgb+46;
	else if(tgb<38)
		asc <= tgb+53;
	else
		asc <= tgb+59;
	end
endmodule