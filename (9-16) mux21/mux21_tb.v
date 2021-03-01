`timescale 1ns/1ns
module mux21_tb();
	wire [3:0] y;
	reg  [3:0] a,b;
	reg sel;
	integer i; // 인트는 모듈안에 사용 불가 테스트 벤치에서만 사용
	
	mux21 u1(a,b,sel,y);
	
	initial begin
		a=$random; b=$random; sel=0; // 질문 : 랜덤은 이진수만 되나요? -> 직접 해보시길 바랍니다.
		for(i=0; i<5 ; i=i+1)
			#1 sel = sel + 1; //sel은 1bit 이진수기 때문에 0과1 반복 , 이 부분에 함정 있다 한번 찾아보길
	end
	
	/*
	always
		#1 a=~a;
		
	always
		#2 b=~b;
		
	always
		#4 sel = ~sel;
	*/
endmodule