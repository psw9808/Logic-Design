module sub(input[15:0] a,b, output[15:0] out, output overflow);
	bit16adder a1(a, ~b, 1, out, overflow);
endmodule