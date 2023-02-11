module datapath(mdatain, encIn, clk, clr, readMDR, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, 
	R11in, R12in, R13in, R14in, R15in, HIin, LOin, ZHIin, ZLOin, PCin, INPORTin,
	CSIGNin, MDRin, Yin, R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,
	LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN, RY, 
	NOT, OR, AND, 
	busMuxOut);
	
	input [31:0] encIn, mdatain;
	input clk, clr, readMDR;
	
	//Control Signal Inputs
	input NOT, OR, AND;
	
	output [31:0] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,
	LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN, RY;
	output [31:0] busMuxOut;
	
	//Register File
	//R0
	input R0in;
	register r0(busMuxOut, clr, clk, R0in, R0);
	//R1
	input R1in;
	register r1(busMuxOut, clr, clk, R1in, R1);
	
	input R2in;
	register r2(busMuxOut, clr, clk, R2in, R2);
	
	input R3in;
	register r3(busMuxOut, clr, clk, R3in, R3);
	
	input R4in;
	register r4(busMuxOut, clr, clk, R4in, R4);
	
	input R5in;
	register r5(busMuxOut, clr, clk, R5in, R5);
	
	input R6in;
	register r6(busMuxOut, clr, clk, R6in, R6);
	
	input R7in;
	register r7(busMuxOut, clr, clk, R7in, R7);
	
	input R8in;
	register r8(busMuxOut, clr, clk, R8in, R8);
	
	input R9in;
	register r9(busMuxOut, clr, clk, R9in, R9);
	
	input R10in;
	register r10(busMuxOut, clr, clk, R10in, R10);
	
	input R11in;
	register r11(busMuxOut, clr, clk, R11in, R11);
	
	input R12in;
	register r12(busMuxOut, clr, clk, R12in, R12);
	
	input R13in;
	register r13(busMuxOut, clr, clk, R13in, R13);
	
	input R14in;
	register r14(busMuxOut, clr, clk, R14in, R14);
	
	input R15in;
	register r15(busMuxOut, clr, clk, R15in, R15);
	
	input HIin;
	register rHI(busMuxOut, clr, clk, HIin, HI);
	
	
	input LOin;
	register rLO(busMuxOut, clr, clk, LOin, LO);
	
	//input ZHIin;
	//register rZHI(busMuxOut, clr, clk, ZHIin, ZHI);
	
	//input ZLOin;
	//register rZLO(busMuxOut, clr, clk, ZLOin, ZLO);
	
	input PCin;
	register rPC(busMuxOut, clr, clk, PCin, PC);
	
	input INPORTin;
	register rINPORT(busMuxOut, clr, clk, INPORTin, INPORT);
	
	input CSIGNin;
	register rCSIGN(busMuxOut, clr, clk, CSIGNin, CSIGN);
	
	input MDRin;
	MDRUnit MDR_u(busMuxOut, mdatain, readMDR, clr, clk, MDRin, MDR);
	
	
	// Need to create Y register for the intermediate register between the bus and ALU
	input Yin;
	register rY(busMuxOut, clr, clk, Yin, RY);
	
	//ALU Output registers
	//Wire from the output of the ALU into the input of ZLO
	wire [31:0] aluOut;
	
	ALU aluUnit(RY, busMuxOut, NOT, OR, AND, aluOut);
	
	input ZHIin;
	register rZHI(busMuxOut, clr, clk, ZHIin, ZHI);
	
	input ZLOin;
	register rZLO(aluOut, clr, clk, ZLOin, ZLO);
	
	
	Bus internalBus(encIn,R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,HI,LO,ZHI,ZLO,PC,MDR,INPORT,CSIGN,busMuxOut);
	
	

endmodule
