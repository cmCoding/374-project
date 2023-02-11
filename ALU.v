module ALU(RY,
			  BUSin, 
			  NOT, OR, AND, SHR, SHRA, SHL,
			  ALUout);
			  
	input [31:0] RY, BUSin;
	input NOT, OR, AND, SHR, SHRA, SHL;   //control signals, will add more as instructions are added
	output reg [31:0] ALUout;
	
	
	always @(NOT or OR or AND or BUSin or RY or SHR or SHRA or SHL)
	begin
		if (NOT == 1) 	ALUout = ~BUSin; 			else
		if (OR == 1)  	ALUout = RY | BUSin; 	else
		if (AND == 1) 	ALUout = RY & BUSin; 	else
		if (SHR == 1) 	ALUout = BUSin >> 1; 	else
		if (SHRA == 1)	ALUout = $signed(BUSin) >>> 1; 	else
		if (SHL == 1) 	ALUout = BUSin << 1;		else
							ALUout = 32'hxxxxxxxx;
	end
endmodule