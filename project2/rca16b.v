module rca16b(input[15:0] a1,b1, input cin, output[15:0] sum, output cout);
	bit16adder u1(a1, b1, cin, sum, cout);
endmodule