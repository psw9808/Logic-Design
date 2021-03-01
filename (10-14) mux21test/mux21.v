module mux21(a,b,sel,z);
	input a,b,sel;
	output z;
	reg y;
	assign z=y;
	
	always@(*) begin
		if (sel)
			y=a;
		else
			y=b;
	end
endmodule