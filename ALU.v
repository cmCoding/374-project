module ALU(RY,
			  BUSin, 
			  NOT, OR, AND,
			  ALUout);
			  
	input [31:0] RY, BUSin;
	input NOT, OR, AND;   //control signals, will add more as instructions are added
	output reg [31:0] ALUout;
	
	
	always @(NOT or OR or AND or BUSin or RY)
	begin
		if (NOT == 1) ALUout = ~BUSin; else
		if (OR == 1)  ALUout = RY | BUSin; else
		if (AND == 1) ALUout = RY & BUSin; else
						  ALUout = 32'hxxxxxxxx;
	end
	
endmodule
