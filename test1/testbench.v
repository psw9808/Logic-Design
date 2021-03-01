module mux41_tb();
	reg Clock, Reset, w, Pushn;
	
	T21720979 test(Clock, Reset, c1, w, Pushn, LEDn, Digit1, Digit0);
	
	initial begin
		Reset = 1;
		Clock = 0;
	end
	
	always begin
		#1 Clock = ~Clock;
	end
endmodule