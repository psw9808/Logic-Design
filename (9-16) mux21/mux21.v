module mux21 (a ,b,sel,y);
	input [3:0] a,b;
	input sel;
	output reg [3:0] y;	//아웃풋 선언시 reg로 해야한다.
	/*
	always@(*) begin  //여기서 * 은 모든 인풋값을 지칭할때 사용
		case(sel) begin
		1'b1: y=b;
		1'b0: y=a;
		endcase
	end
	*/
	// <if/else문>
	always@(*) begin
		if(sel)
			y=b;
		else if (~sel)
			y=a;
	end
	
	
	//assign y = ~sel?a:b;       // 기본적으로 ? 앞에 (변수)만 적을 경우 (변수==1) 과 같다
	
	//assign y= (a&~sel)|(b&sel);

/*	
	wire a0 ,a1, sn;
	
	//not u1 (sn, sel);
	and u2 (a0,a,~sel), u3 (a1,b,sel);
	or  u4 (y,a0,a1);
*/
endmodule

