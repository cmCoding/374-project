module encoder (encIn, encOut);
	input [31:0] encIn;
	output reg [4:0] encOut;
	
	
	always @(encIn)
	begin
	if (encIn == 32'b00000000000000000000000000000001) encOut = 5'b00000; else
	if (encIn == 32'b00000000000000000000000000000010) encOut = 5'b00001; else
	if (encIn == 32'b00000000000000000000000000000100) encOut = 5'b00010; else
	if (encIn == 32'b00000000000000000000000000001000) encOut = 5'b00011; else
	if (encIn == 32'b00000000000000000000000000010000) encOut = 5'b00100; else
	if (encIn == 32'b00000000000000000000000000100000) encOut = 5'b00101; else
	if (encIn == 32'b00000000000000000000000001000000) encOut = 5'b00110; else
	if (encIn == 32'b00000000000000000000000010000000) encOut = 5'b00111; else
	if (encIn == 32'b00000000000000000000000100000000) encOut = 5'b01000; else
	if (encIn == 32'b00000000000000000000001000000000) encOut = 5'b01001; else
	if (encIn == 32'b00000000000000000000010000000000) encOut = 5'b01010; else
	if (encIn == 32'b00000000000000000000100000000000) encOut = 5'b01011; else
	if (encIn == 32'b00000000000000000001000000000000) encOut = 5'b01100; else
	if (encIn == 32'b00000000000000000010000000000000) encOut = 5'b01101; else
	if (encIn == 32'b00000000000000000100000000000000) encOut = 5'b01110; else
	if (encIn == 32'b00000000000000001000000000000000) encOut = 5'b01111; else
	if (encIn == 32'b00000000000000010000000000000000) encOut = 5'b10000; else
	if (encIn == 32'b00000000000000100000000000000000) encOut = 5'b10001; else
	if (encIn == 32'b00000000000001000000000000000000) encOut = 5'b10010; else
	if (encIn == 32'b00000000000010000000000000000000) encOut = 5'b10011; else
	if (encIn == 32'b00000000000100000000000000000000) encOut = 5'b10100; else
	if (encIn == 32'b00000000001000000000000000000000) encOut = 5'b10101; else
	if (encIn == 32'b00000000010000000000000000000000) encOut = 5'b10110; else
	if (encIn == 32'b00000000100000000000000000000000) encOut = 5'b10111; else
	if (encIn == 32'b00000001000000000000000000000000) encOut = 5'b11000; else
	if (encIn == 32'b00000010000000000000000000000000) encOut = 5'b11001; else
	if (encIn == 32'b00000100000000000000000000000000) encOut = 5'b11010; else
	if (encIn == 32'b00001000000000000000000000000000) encOut = 5'b11011; else
	if (encIn == 32'b00010000000000000000000000000000) encOut = 5'b11100; else
	if (encIn == 32'b00100000000000000000000000000000) encOut = 5'b11101; else
	if (encIn == 32'b01000000000000000000000000000000) encOut = 5'b11110; else
	if (encIn == 32'b10000000000000000000000000000000) encOut = 5'b11111; else
																	   encOut = 5'bx;
	end
endmodule

module mux (R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN,select,muxOut);
	input [31:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15;
	input [31:0] HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN;
	input [4:0] select;
	output reg [31:0] muxOut;
	//reg [31:0] muxOut;
	
	always @(select)
	begin
		if (select == 5'b00000) muxOut = R0; else
		if (select == 5'b00001) muxOut = R1; else
		if (select == 5'b00010) muxOut = R2; else
		if (select == 5'b00011) muxOut = R3; else
		if (select == 5'b00100) muxOut = R4; else
		if (select == 5'b00101) muxOut = R5; else
		if (select == 5'b00110) muxOut = R6; else
		if (select == 5'b00111) muxOut = R7; else
		if (select == 5'b01000) muxOut = R8; else
		if (select == 5'b01001) muxOut = R9; else
		if (select == 5'b01010) muxOut = R10; else
		if (select == 5'b01011) muxOut = R11; else
		if (select == 5'b01100) muxOut = R12; else
		if (select == 5'b01101) muxOut = R13; else
		if (select == 5'b01110) muxOut = R14; else
		if (select == 5'b01111) muxOut = R15; else
		if (select == 5'b10000) muxOut = HI; else
		if (select == 5'b10001) muxOut = LO; else
		if (select == 5'b10010) muxOut = ZHI; else
		if (select == 5'b10011) muxOut = ZLO; else
		if (select == 5'b10100) muxOut = PC; else
		if (select == 5'b10101) muxOut = MDR; else
		if (select == 5'b10110) muxOut = INPORT; else
		if (select == 5'b10111) muxOut = CSIGN; else
									  muxOut = 32'hxxxxxxxx;
	
	end
endmodule


module Bus (encIn,R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN,BusMuxOut);
	input [31:0] encIn;
	input [31:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15;
	input [31:0] HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN;
	wire [4:0] select;
	output [31:0] BusMuxOut;
	
	encoder enc(encIn, select);
	mux multiplexer(R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN,select,BusMuxOut);
	
endmodule
