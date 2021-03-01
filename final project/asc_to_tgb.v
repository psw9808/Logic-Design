module asc_to_tgb(input[6:0] asc, output reg[5:0] tgb);
	always@(*) begin
	if(asc==0)
		tgb <= 0;
	else if(asc<48)
		tgb <= asc-32;
	else if(asc<65)
		tgb <= asc-46;
	else if(asc<97)
		tgb <= asc-53;
	else
		tgb <= asc-59;
	end
endmodule