module register (D, clr, clk, write, Q);

	input [31:0] D;
	input clr, clk, write;
	output reg [31:0] Q;
	
	
	always @(posedge clk)
	begin
		if (clr)
			Q <= 0;
		else
			if (write)
				Q <= D;
			else
				Q <= Q;
	end
endmodule