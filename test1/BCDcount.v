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