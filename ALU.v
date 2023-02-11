module ALU(RY,
			  BUSin, 
			  NOT,
			  ALUout);
			  
	input [31:0] RY, BUSin;
	input NOT;   //control signals, will add more as instructions are added
	output reg [31:0] ALUout;
	
	
	always @(NOT)
	begin
		if (NOT == 1) ALUout = ~BUSin; else
						  ALUout = 32'hxxxxxxxx;
		
	end
	
endmodule
