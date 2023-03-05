
module division(Q,M,result,A);
	input [31:0] Q,M;
	output [31:0] result, A;
	
	wire [32:0] ac1;
	wire [31:0] qc1;
	
	wire [32:0] ac2;
	wire [31:0] qc2;
	
	wire [32:0] ac3;
	wire [31:0] qc3;
	
	wire [32:0] ac4;
	wire [31:0] qc4;
	
	wire [32:0] ac5;
	wire [31:0] qc5;
	
	wire [32:0] ac6;
	wire [31:0] qc6;
	
	wire [32:0] ac7;
	wire [31:0] qc7;
	
	wire [32:0] ac8;
	wire [31:0] qc8;
	
	wire [32:0] ac9;
	wire [31:0] qc9;
	
	wire [32:0] ac10;
	wire [31:0] qc10;
	
	cycle cycle1(33'b000000000000000000000000000000000, { {1{M[31]}} , M[31:0] } , Q, ac1,qc1);
	cycle cycle2(ac1, { {1{M[31]}} , M[31:0] } , qc1, ac2,qc2);
	cycle cycle3(ac2, { {1{M[31]}} , M[31:0] } , qc2, ac3,qc3);
	cycle cycle4(ac3, { {1{M[31]}} , M[31:0] } , qc3, ac4,qc4);
	cycle cycle5(ac4, { {1{M[31]}} , M[31:0] } , qc4, ac5,qc5);
	cycle cycle6(ac5, { {1{M[31]}} , M[31:0] } , qc5, ac6,qc6);
	cycle cycle7(ac6, { {1{M[31]}} , M[31:0] } , qc6, ac7,qc7);
	cycle cycle8(ac7, { {1{M[31]}} , M[31:0] } , qc7, ac8,qc8);
	cycle cycle9(ac8, { {1{M[31]}} , M[31:0] } , qc8, ac9,qc9);
	cycle cycle10(ac9, { {1{M[31]}} , M[31:0] } , qc9, ac10,qc10);
	
	wire [32:0] ac11;
	wire [31:0] qc11;
	
	wire [32:0] ac12;
	wire [31:0] qc12;
	
	wire [32:0] ac13;
	wire [31:0] qc13;
	
	wire [32:0] ac14;
	wire [31:0] qc14;
	
	wire [32:0] ac15;
	wire [31:0] qc15;
	
	wire [32:0] ac16;
	wire [31:0] qc16;
	
	wire [32:0] ac17;
	wire [31:0] qc17;
	
	wire [32:0] ac18;
	wire [31:0] qc18;
	
	wire [32:0] ac19;
	wire [31:0] qc19;
	
	wire [32:0] ac20;
	wire [31:0] qc20;
	
	cycle cycle11(ac10, { {1{M[31]}} , M[31:0] } , qc10, ac11,qc11);
	cycle cycle12(ac11, { {1{M[31]}} , M[31:0] } , qc11, ac12,qc12);
	cycle cycle13(ac12, { {1{M[31]}} , M[31:0] } , qc12, ac13,qc13);
	cycle cycle14(ac13, { {1{M[31]}} , M[31:0] } , qc13, ac14,qc14);
	cycle cycle15(ac14, { {1{M[31]}} , M[31:0] } , qc14, ac15,qc15);
	cycle cycle16(ac15, { {1{M[31]}} , M[31:0] } , qc15, ac16,qc16);
	cycle cycle17(ac16, { {1{M[31]}} , M[31:0] } , qc16, ac17,qc17);
	cycle cycle18(ac17, { {1{M[31]}} , M[31:0] } , qc17, ac18,qc18);
	cycle cycle19(ac18, { {1{M[31]}} , M[31:0] } , qc18, ac19,qc19);
	cycle cycle20(ac19, { {1{M[31]}} , M[31:0] } , qc19, ac20,qc20);
	
	wire [32:0] ac21;
	wire [31:0] qc21;
	
	wire [32:0] ac22;
	wire [31:0] qc22;
	
	wire [32:0] ac23;
	wire [31:0] qc23;
	
	wire [32:0] ac24;
	wire [31:0] qc24;
	
	wire [32:0] ac25;
	wire [31:0] qc25;
	
	wire [32:0] ac26;
	wire [31:0] qc26;
	
	wire [32:0] ac27;
	wire [31:0] qc27;
	
	wire [32:0] ac28;
	wire [31:0] qc28;
	
	wire [32:0] ac29;
	wire [31:0] qc29;
	
	wire [32:0] ac30;
	wire [31:0] qc30;
	
	cycle cycle21(ac20, { {1{M[31]}} , M[31:0] } , qc20, ac21,qc21);
	cycle cycle22(ac21, { {1{M[31]}} , M[31:0] } , qc21, ac22,qc22);
	cycle cycle23(ac22, { {1{M[31]}} , M[31:0] } , qc22, ac23,qc23);
	cycle cycle24(ac23, { {1{M[31]}} , M[31:0] } , qc23, ac24,qc24);
	cycle cycle25(ac24, { {1{M[31]}} , M[31:0] } , qc24, ac25,qc25);
	cycle cycle26(ac25, { {1{M[31]}} , M[31:0] } , qc25, ac26,qc26);
	cycle cycle27(ac26, { {1{M[31]}} , M[31:0] } , qc26, ac27,qc27);
	cycle cycle28(ac27, { {1{M[31]}} , M[31:0] } , qc27, ac28,qc28);
	cycle cycle29(ac28, { {1{M[31]}} , M[31:0] } , qc28, ac29,qc29);
	cycle cycle30(ac29, { {1{M[31]}} , M[31:0] } , qc29, ac30,qc30);
	
	wire [32:0] ac31;
	wire [31:0] qc31;
	
	wire [32:0] ac32;
	
	cycle cycle31(ac30, { {1{M[31]}} , M[31:0] } , qc30, ac31,qc31);
	cycle cycle32(ac31, { {1{M[31]}} , M[31:0] } , qc31, A,result);


endmodule




module cycle(a,m,q,newA, newQ);
input [32:0] a,m;
input [31:0] q;
output reg [32:0] newA;
output reg [31:0] newQ;
wire cSub;
reg [32:0] restoredA;
reg [31:0] tempQ;
reg [32:0] tempA;
wire [32:0] su;
reg [32:0] tempSub;

	
	subtract33 sub2(tempA, m, cSub, su);
	
	always @(*) begin
		tempQ = q;
		tempA = a;
		tempA = tempA << 1;
		if (tempQ[31] == 1) begin
			tempA[0] = 1'b1;
		end
		tempQ = tempQ << 1;
		
		restoredA = tempA;
		
		if (su[32] == 0) begin
			tempQ[0] = 1;
			newA = su;
		end else begin
			newA = restoredA;
		end
		
		newQ = tempQ;
	end

endmodule



//////////// 33 Bit Add/Negate/Subtract ///////////////////

module fullAdder33(x, y, cout, sum);
	 input [32:0] x,y;
	 output cout;
	 output [32:0] sum;
	 
	 wire c1;
	 bcell b0(x[0], y[0], 1'b0 , c1 , sum[0] );
	 wire c2;
	 bcell b1(x[1], y[1], c1 , c2 , sum[1] );
	 wire c3;
	 bcell b2(x[2], y[2], c2 , c3 , sum[2] );
	 wire c4;
	 bcell b3(x[3], y[3], c3, c4 , sum[3] );
	 wire c5;
	 bcell b4(x[4], y[4], c4 , c5 , sum[4] );
	 wire c6;
	 bcell b5(x[5], y[5], c5 , c6 , sum[5] );
	 wire c7;
	 bcell b6(x[6], y[6], c6 , c7 , sum[6] );
	 wire c8;
	 bcell b7(x[7], y[7], c7 , c8 , sum[7] );
	 wire c9;
	 bcell b8(x[8], y[8], c8 , c9 , sum[8] );
	 wire c10;
	 bcell b9(x[9], y[9], c9 , c10 , sum[9] );
	 wire c11;
	 bcell b10(x[10], y[10], c10 , c11 , sum[10] );
	 wire c12;
	 bcell b11(x[11], y[11], c11 , c12 , sum[11] );
	 wire c13;
	 bcell b12(x[12], y[12], c12 , c13 , sum[12] );
	 wire c14;
	 bcell b13(x[13], y[13], c13 , c14 , sum[13] );
	 wire c15;
	 bcell b14(x[14], y[14], c14 , c15, sum[14] );
	 wire c16;
	 bcell b15(x[15], y[15], c15 , c16, sum[15] );
	 wire c17;
	 bcell b16(x[16], y[16], c16 , c17, sum[16] );
	 wire c18;
	 bcell b17(x[17], y[17], c17 , c18, sum[17] );
	 wire c19;
	 bcell b18(x[18], y[18], c18 , c19 , sum[18] );
	 wire c20;
	 bcell b19(x[19], y[19], c19 , c20, sum[19] );
	 wire c21;
	 bcell b20(x[20], y[20], c20 , c21, sum[20] );
	 wire c22;
	 bcell b21(x[21], y[21], c21 , c22, sum[21] );
	 wire c23;
	 bcell b22(x[22], y[22], c22 , c23, sum[22] );
	 wire c24;
	 bcell b23(x[23], y[23], c23 , c24, sum[23] );
	 wire c25;
	 bcell b24(x[24], y[24], c24 , c25, sum[24] );
	 wire c26;
	 bcell b25(x[25], y[25], c25 , c26, sum[25] );
	 wire c27;
	 bcell b26(x[26], y[26], c26 , c27, sum[26] );
	 wire c28;
	 bcell b27(x[27], y[27], c27 , c28, sum[27] );
	 wire c29;
	 bcell b28(x[28], y[28], c28 , c29, sum[28] );
	 wire c30;
	 bcell b29(x[29], y[29], c29 , c30 , sum[29] );
	 wire c31;
	 bcell b30(x[30], y[30], c30 , c31 , sum[30] );
	 wire c32;
	 bcell b31(x[31], y[31], c31 , c32 , sum[31] );
	 
	 bcell b32(x[32], y[32], c32 , cout , sum[32] );

endmodule


module subtract33(RY, BUSin, cout, result);
	input [32:0] RY, BUSin;
	output cout;
	output [32:0] result;
	wire [32:0] conn;
	wire coutNeg;

	
	NEGATE33 negat(BUSin,coutNeg,conn);
	fullAdder33 a1(RY,conn,cout,result);
	

endmodule

module NEGATE33(Rin, cout, Rout);
	input [32:0] Rin;
	output [32:0] Rout;
	output cout;
	
	fullAdder33 ad(~Rin, 33'b000000000000000000000000000000001,cout,Rout);

endmodule

