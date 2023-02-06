module datapath(mdatain, encIn, clk, clr, readMDR, R0in, R1in, MDRin, busMuxOut, R0out, R1out, MDRout);
	input [31:0] encIn, mdatain;
	input clk, clr, readMDR;
	output [31:0] R0out, R1out, MDRout;
	output [31:0] busMuxOut;
	
	//Register File
	//R0
	input R0in;
	register r0(busMuxOut, clr, clk, R0in, R0out);
	//R1
	input R1in;
	register r1(busMuxOut, clr, clk, R1in, R1out);
	
	input MDRin;
	MDRUnit MDR(busMuxOut, mdatain, readMDR, clr, clk, MDRin, MDRout);
	
	Bus internalBus(encIn, R0out, R1out, MDRout, busMuxOut);
endmodule
