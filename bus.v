module encoder (encIn, encOut);
	input [31:0] encIn;
	output reg [4:0] encOut;
	
	
	always @(encIn)
	begin
	if (encIn == 32'b00000000000000000000000000000001) encOut = 5'b00000; else
	if (encIn == 32'b00000000000000000000000000000010) encOut = 5'b00001; else
	if (encIn == 32'b00000000000000000000000000000100) encOut = 5'b00010; else
																	   encOut = 5'bx;
	end
endmodule

module mux (R0,R1,MDR,select,muxOut);
	input [31:0] R0,R1,MDR;
	input [4:0] select;
	output reg [31:0] muxOut;
	
	always @(select or R0 or R1 or MDR)
	begin
		if (select == 5'b00000) muxOut = R0; else
		if (select == 5'b00001) muxOut = R1; else
		if (select == 5'b00010) muxOut = MDR; else
									  muxOut = 32'hxxxxxxxx;
	
	end
endmodule


module Bus (encIn,R0,R1,MDR,BusMuxOut);
	input [31:0] encIn;
	input [31:0] R0,R1,MDR;
	wire [4:0] select;
	output [31:0] BusMuxOut;
	
	encoder enc(encIn, select);
	mux multiplexer(R0,R1,MDR,select,BusMuxOut);
	
endmodule