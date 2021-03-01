module clock_divider(Clock, Reset, c1);
   input Clock, Reset;
    reg[2:0]count=3'b000;
   output reg c1;

   always@(posedge Clock)
   begin
    if(~Reset)
     c1 <= 1'b1;
    else begin
		count = count+1;
		c1 <= count[2];
		end
	end
endmodule