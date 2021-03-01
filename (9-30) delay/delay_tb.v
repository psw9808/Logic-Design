module delay_tb();
  wire z;
  reg a;
  
  not #(2,1) (z,a);
  
  initial
    a=0;
    
  always
    #5 a=~a;
    
endmodule
