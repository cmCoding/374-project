
module mux2to1(BusMuxOut, Mdatain, Read, out);
	input [31:0] BusMuxOut, Mdatain;
	input Read;
	output reg [31:0] out;
	
	
	always @(Read or BusMuxOut or Mdatain)
	begin
		if (Read == 0)
			out = BusMuxOut;
		else
			out = Mdatain;
	end
	
endmodule

module MDR(D, clr, clk, MDRin, MDRout);

	input [31:0] D;
	input clr, clk, MDRin;
	output [31:0] MDRout;
	reg [31:0] MDRout;
	
	
	always @(posedge clk)
	begin
		if (clr)
			MDRout <= 0;
		else
			if (MDRin)
				MDRout <= D;
			else
				MDRout <= MDRout;
	end
endmodule


module MDRUnit(inBus, inData, read, clear, clk, MDRin, MDRout);
	input [31:0] inBus, inData;
	input read, clk, clear, MDRin;
	wire [31:0] connector;
	output [31:0] MDRout;
	
	
	mux2to1 multiplexer(inBus, inData, read, connector);
	MDR MDRreg(connector, clear, clk, MDRin, MDRout);
	
endmodule