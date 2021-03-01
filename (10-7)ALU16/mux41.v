module mux41(output reg[15:0] z, input[15:0] a,b,c,d, input[1:0] sel);
	always@(*) begin
	case(sel)
		2'b00: z=a;
		2'b01: z=b;
		2'b10: z=c;
		2'b11: z=d;
	endcase
	end
endmodule
