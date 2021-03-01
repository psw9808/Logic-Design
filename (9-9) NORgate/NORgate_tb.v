`timescale 1ns/1ns
module NORgate_tb();
  wire z_4559;
  reg clk1, clk2;

  NORgate N1(clk1,clk2,z_4559);

  initial begin
    clk1 = 0;
    clk2 = 0;
  end

  always begin
    #1 clk1 = ~clk1;
    #1 clk1 = ~clk1;
       clk2 = ~clk2;
  end

endmodule