module findPQ(input[13:0] n, output reg[6:0] p,q);
	always@(*) begin
		if(n%2==0) p = 2;
		else if(n%3==0) p = 3;
		else if(n%5==0) p = 5;
		else if(n%7==0) p = 7;
		else if(n%11==0) p = 11;
		else if(n%13==0) p = 13;
		else if(n%17==0) p = 17;
		else if(n%19==0) p = 19;
		else if(n%23==0) p = 23;
		else if(n%29==0) p = 29;
		else if(n%31==0) p = 31;
		else if(n%37==0) p = 37;
		else if(n%41==0) p = 41;
		else if(n%43==0) p = 43;
		else if(n%47==0) p = 47;
		else if(n%53==0) p = 53;
		else if(n%59==0) p = 59;
		else if(n%61==0) p = 61;
		else if(n%67==0) p = 67;
		else if(n%71==0) p = 71;
		else if(n%73==0) p = 73;
		else if(n%79==0) p = 79;
		else if(n%83==0) p = 83;
		else if(n%89==0) p = 89;
		else if(n%97==0) p = 97;
		else if(n%101==0) p = 101;
		else if(n%103==0) p = 103;
		else if(n%107==0) p = 107;
		else if(n%109==0) p = 109;
		else if(n%113==0) p = 113;
		else if(n%127==0) p = 127;
		q = n/p;
	end
endmodule