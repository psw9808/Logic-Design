module demux14(a,sel,y[3:0]);
	input [3:0]a;
	input [1:0]sel;
	output reg [3:0] y[3:0];
	
	always@(*) begin
		case(sel)
		2'b00:begin
			y[0]=a;
			y[1]=0;
			y[2]=0;
			y[3]=0;
		end
		2'b01:begin
			y[0]=0;
			y[1]=a;
			y[2]=0;
			y[3]=0;
		end
		2'b10:begin
			y[0]=0;
			y[1]=0;
			y[2]=a;
			y[3]=0;
		end
		2'b11:begin
			y[0]=0;
			y[1]=0;
			y[2]=0;
			y[3]=a;
		end
		endcase
	end
endmodule