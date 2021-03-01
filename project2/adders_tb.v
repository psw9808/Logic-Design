`timescale 1ns/1ns
module adders_tb();
	reg [15:0] in1, in2;
	reg cin1;
	wire [15:0] sum1_4559, sum2_4559, sum3_4559, sum4_4559;
	wire cout1, cout2, cout3, cout4;
	
 // different adders
	rca16b u1(.a1(in1), .b1(in2), .cin(cin1), .sum(sum1_4559), .cout(cout1));
	cla16b u2(.a1(in1), .b1(in2), .cin(cin1), .sum(sum2_4559), .cout(cout2));
	csa16b1 u3(.a1(in1), .b1(in2), .cin(cin1), .sum(sum3_4559), .cout(cout3));
	csa16b2 u4(.a1(in1), .b1(in2), .cin(cin1), .sum(sum4_4559), .cout(cout4));
	
	initial begin
		in1 = 0; in2 = 0; cin1 = 0;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1[14:0] = $random; in2[14:0] = $random;
		#50 in1 = 16'b1010_1010_1010_1010; in2 = 16'b0101_0101_0101_0101;
		#250 cin1 = 1;
	 end
endmodule