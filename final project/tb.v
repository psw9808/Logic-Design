`timescale 1ns/1ns
module tb();
	reg[6:0] A[145:0],G[145:0],A1,A2;	//make array size[146]
	wire[6:0] G1,G2,G3,G4,G5,G6,p,q;
	wire[5:0] H1,H2;
	wire[13:0] enc,dec,d;
	reg[13:0] enc2,enc3,n,e;
	integer input1,input2,input3,output1,output2,output3,i;
	
	findPQ f1(n,p,q);		//find p and q
	findD f2(p,q,e,d);		//find d
	
	encrypt u1(A1,A2,enc);		//PART 1 module (encrypt & decrypt)
	decrypt u2(enc,G1,G2);
	
	decrypt u3(enc2,G3,G4);		//PART 2 module (decrypt)
	
	rsa233 u4(enc3,dec);		//PART 3 module (rsa decrypt & Dtgbase & Dascii)
	big_to_tgb u5(dec,H1,H2);
	tgb_to_asc u6(H1,G5);
	tgb_to_asc u7(H2,G6);
	
initial begin
	
	n = 10573;		//initialize n,e value
	e = 89;
	#1;
	$display("p_4559 : %d",p);		//display p and q
	$display("q_4559 : %d",q);
	$display("d_4559 : %d",d);		//display d
	
	input1=$fopen("proj3-input1.txt","r");
	output1=$fopen("output1.txt","w");
	
	for(i=0;i<73;i=i+1)begin  	//--------------- this is PART 1 ---------------
		$fscanf(input1,"%7b%7b",A[i*2],A[i*2+1]);  // first I read input file by 7 bits in input array A
		A1 = A[i*2];
		A2 = A[i*2+1];								//give scanned value in wire A1,A2 to input module
		#1;
		G[i*2] = G1;								//write module output value G1,G2 to output array G
		G[i*2+1] = G2;
		$display("PART1_4559 : %c",G[i*2]);
		$display("PART1_4559 : %c",G[i*2+1]);
		$fdisplay(output1,"%7b  '%c' ",G[i*2],G[i*2]);		//write result in output1.txt
		$fdisplay(output1,"%7b  '%c' ",G[i*2+1],G[i*2+1]);
		#1;
	end
	
	$fclose(input1);
	$fclose(output1);
	input2=$fopen("proj3-input2.txt","r");
	output2=$fopen("output2.txt","w");
	
	for(i=0;i<73;i=i+1)begin	//--------------- this is PART 2 ---------------
		$fscanf(input2,"%5d",enc2);		//scan the encrypted message from input2.txt
		if($feof(input2))				//if end of file set enc2 value to 0
		enc2 = 0;
		#1;
		G[i*2] = G3;
		G[i*2+1] = G4;
		$display("PART2_4559 : %c",G[i*2]);
		$display("PART2_4559 : %c",G[i*2+1]);
		$fdisplay(output2," '%c' ",G[i*2]);
		$fdisplay(output2," '%c' ",G[i*2+1]);
		#1;
	end
	
	$fclose(input2);
	$fclose(output2);
	input3=$fopen("proj3-input3.txt","r");
	output3=$fopen("output3.txt","w");
	
	
	for(i=0;i<73;i=i+1)begin	//--------------- this is PART 3 ---------------
		$fscanf(input3,"%5d",enc3);		//scan the encrypted message from input3.txt
		if($feof(input3))				//if end of file set enc3 value to 0
		enc3 = 0;
		#1;
		G[i*2] = G5;
		G[i*2+1] = G6;
		$display("PART3_4559 : %c",G[i*2]);
		$display("PART3_4559 : %c",G[i*2+1]);
		$fdisplay(output3," '%c' ",G[i*2]);
		$fdisplay(output3," '%c' ",G[i*2+1]);
		#1;
	end
	
	$fclose(input3);
	$fclose(output3);
end
endmodule