module Datapath(mdatain, encIn, clk, clr, read);

	
	
	input [31:0] mdatain;
	input [31:0] encIn;
	input clk, clr, read;
	wire [31:0] R0out, R1out, R2out,  R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out;
	wire [31:0] HIout, LOout, ZHIout, ZLOout, INPORTout, PCout, CSIGNout;
	wire [31:0] MDRout;
	wire [31:0] busMuxOut;
	
	reg write;
	
	
	//Register File
	//R0
	register r0(busMuxOut, clr, clk, R0in, R0out);
	//R0
	register r1(busMuxOut, clr, clk, R1in, R1out);
	//R0
	register r2(busMuxOut, clr, clk, R2in, R2out);
	//R0
	register r3(busMuxOut, clr, clk, R3in, R3out);
	//R0
	register r4(busMuxOut, clr, clk, R4in, R4out);
	//R0
	register r5(busMuxOut, clr, clk, R5in, R5out);
	//R0
	register r6(busMuxOut, clr, clk, R6in, R6out);
	//R0
	register r7(busMuxOut, clr, clk, R7in, R7out);
	//R0
	register r8(busMuxOut, clr, clk, R8in, R8out);
	//R0
	register r9(busMuxOut, clr, clk, R9in, R9out);
	//R0
	register r10(busMuxOut, clr, clk, R10in, R10out);
	//R0
	register r11(busMuxOut, clr, clk, R11in, R11out);
	//R0
	register r12(busMuxOut, clr, clk, R12in, R12out);
	//R0
	register r13(busMuxOut, clr, clk, R13in, R13out);
	//R0
	register r14(busMuxOut, clr, clk, R14in, R14out);
	//R0
	register r15(busMuxOut, clr, clk, R15in, R15out);
	
	//Other Registers
	register HI(busMuxOut, clr, clk, HIin, HIout);
	register LO(busMuxOut, clr, clk, LOin, LOout);
	register ZHI(busMuxOut, clr, clk, ZHIin, ZHIout);
	register ZLO(busMuxOut, clr, clk, ZLOin, ZLOout);
	register PC(busMuxOut, clr, clk, PCin, PCout);
	register INPORT(busMuxOut, clr, clk, INPORTin, INPORTout);
	register CSIGN(busMuxOut, clr, clk, CSIGNin, CSIGNout);
	
	//Create MDR
	MDRUnit MDR(busMuxOut, mdatain, read, clr, clk, MDRin, MDRout);
	
	
	Bus busOne(encIn, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, 
				R12out, R13out, R14out, R15out, HIout, LOout, ZHIout, ZLOout, PCout, MDRout, INPORTout, CSIGNout, busMuxOut);

endmodule