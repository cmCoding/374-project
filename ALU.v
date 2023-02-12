module bcell(xi, yi, ci, cnext, si);

	input xi,yi,ci;
	output cnext,si;

	assign cnext = (xi & yi) | ((xi | yi) & ci);
	assign si = xi ^ yi ^ ci;

endmodule




module fullAdder(x, y, cout, sum);
	 input [31:0] x,y;
	 output cout;
	 output reg [31:0] sum;
	 
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
	 
	 bcell b31(x[31], y[31], c31 , cout , sum[31] );


endmodule



module ALU(RY,
			  BUSin, 
			  NOT, OR, AND, SHR, SHRA, SHL, ADD,
			  ALUout);
			  
	input [31:0] RY, BUSin;
	input NOT, OR, AND, SHR, SHRA, SHL, ADD;   //control signals, will add more as instructions are added
	reg c;
	output reg [31:0] ALUout;
	
	always @(NOT or OR or AND or BUSin or RY or SHR or SHRA or SHL or ADD)
	begin
		if (NOT == 1) 	ALUout = ~BUSin; 			else
		if (OR == 1)  	ALUout = RY | BUSin; 	else
		if (AND == 1) 	ALUout = RY & BUSin; 	else
		if (SHR == 1) 	ALUout = BUSin >> 1; 	else
		if (SHRA == 1)	ALUout = $signed(BUSin) >>> 1; 	else
		if (SHL == 1) 	ALUout = BUSin << 1;		else
		if (ADD == 1)	ALUout = sums(RY,BUSin,c,ALUout); else
							ALUout = 32'hxxxxxxxx;
		end
	
	function [31:0] sums;
		input [31:0] x,y;
		
		reg [31:0] plc;
		reg c;
		begin
			c <= 0;
			fullAdder a(x,y,c,plc);
			sums = plc;
		end
	endfunction
	
	
endmodule


