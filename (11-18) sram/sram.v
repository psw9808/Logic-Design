module sram16x128(
	input[15:0] inbits,
	input[6:0] addr,
	input clk, rst, we, re,
	output[15:0] outbits
);
	integer i;
	reg[15:0] memoryblock[127:0];
	reg[15:0] memout;
	assign outbits = memout;
	
always@(posedge clk) begin
	if(rst)begin
		for(i=0; i<128; i=i+1)begin
			memoryblock[i] = 0;    // initialize each memory value 0
		end
		memout = 0;
	end
	else if(re) begin
		memout = memoryblock[addr];
	end
	else if(we) begin
		memoryblock[addr] = inbits;
	end
	else begin
		memout = 0;
	end
end

endmodule
