module T21720979(Clock, Reset, c1, w, Pushn, LEDn, Digit1, Digit0);
   input Clock, Reset, w, Pushn;
   output wire LEDn, c1;
   output wire [1:7]Digit1, Digit0; // 7bit
   reg LED;
   wire [3:0]BCD1, BCD0;

   clock_divider C1(Clock, Reset, c1);

   always@(posedge Clock) // D flip flop
   begin    // pushn? 0??? reset? 1??
     if(!Pushn || Reset) 
        LED <= 0; // LED? 0 ?? ?? 
     else if(w)
        LED <= 1; // LED? ?? 
   end 

   assign LEDn = ~LED; // LEDn? 0??, LED? 1?? on
   BCDcount counter(c1, Reset, LED, BCD1, BCD0);
   seg7 seg1(BCD1, Digit1);
   seg7 seg0(BCD0, Digit0);

endmodule

module clock_divider(Clock, Reset, c1);
   input Clock, Reset;
    reg[2:0]count=3'b000;
   output reg c1;

   always@(posedge Clock)
   begin
    if(Reset)
     c1 <= 1'b1;
    else begin
		count = count+1;
		c1 <= count[2];
		end
	end
endmodule

module BCDcount(Clock, Clear, E, BCD1, BCD0);
   input Clock, Clear, E;
   output reg[3:0] BCD1, BCD0;

   always @(posedge Clock)
   begin
     if(Clear) // reset? 1?? ?? ?? 0?? ???
       begin
         BCD1 <= 0;
         BCD0 <= 0;
       end
     else if(E) // Enable ? 1?? 
        if(BCD0 == 4'b1001)//?? ??? 9?? 
          begin
			BCD0 <= 0; // ?? ?? 0 ??? 
			if(BCD1 == 4'b1001)// ?? ??? 9?? 
			  BCD1 <= 0; // ?? ?? 0 ??? 
			else
			  BCD1 <= BCD1 + 1; // 
			end
        else // ?? ??? 9? ???? 
           BCD0 <= BCD0 + 1;
			  // else if ?? ? ?? ??? ????
		  else if (BCD1 == 1 && BCD0 == 9)
		      begin
				   BCD1 <= 1;
					BCD0 <= 9; 
			   end
     end

	  endmodule
	  
	  module seg7(bcd, leds);
   input [3:0] bcd;
   output reg [1:7] leds;

always@(bcd)
  case(bcd)
    0: leds = 7'b1111110;
    1: leds = 7'b0110000;
    2: leds = 7'b1101101;
    3: leds = 7'b1111001;
    4: leds = 7'b0110011;
    5: leds = 7'b1011011;
    6: leds = 7'b1011111;
    7: leds = 7'b1110000;
    8: leds = 7'b1111111;
    9: leds = 7'b1111011;
    default: leds = 7'bx;
   endcase

endmodule
