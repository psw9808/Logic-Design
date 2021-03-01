`timescale 1ns/1ns
module clb(input[3:0] a,b, input c, output[3:0] out);
	wire[3:0] g,p;
	wire s00, s10,s11, s20,s21,s22, s30,s31,s32,s33;
	
	and #7 n0(g[0],a[0],b[0]), n1(g[1],a[1],b[1]), n2(g[2],a[2],b[2]), n3(g[3],a[3],b[3]);
	xor #6 x0(p[0],a[0],b[0]), x1(p[1],a[1],b[1]), x2(p[2],a[2],b[2]), x3(p[3],a[3],b[3]);
	
	or #7 o00(out[0],g[0],s00);
	and #7 n00(s00,p[0],c);
	
	or #7 o10(out[1],g[1],s10,s11);
	and #7 n10(s10,p[1],g[0]), n11(s11,p[1],p[0],c);
	
	or #7 o20(out[2],g[2],s20,s21,s22);
	and #7 n20(s20,p[2],g[1]), n21(s21,p[2],p[1],g[0]), n22(s22,p[2],p[1],p[0],c);
	
	or #7 o30(out[3],g[3],s30,s31,s32,s33);
	and #7 n30(s30,p[3],g[2]), n31(s31,p[3],p[2],g[1]), n32(s32,p[3],p[2],p[1],g[0]), n33(s33,p[3],p[2],p[1],p[0],c);

endmodule