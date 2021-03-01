`timescale 1ns/1ns
module inverter_tb();
  wire y,r;
  reg b;
  
  inverter u1 (b,r);
  inverter u2 (r,y);
  
  initial begin
    b = 0;
//    $display("the value of b at time %t is : %b",$time,b);
    $monitor("the value of b at time %t is : %b",$time,b);
  end
  
  always
    #1 b=~b;
  
endmodule