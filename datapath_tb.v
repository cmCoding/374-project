`timescale 1ns/10ps
module datapath_tb;
	wire [31:0] MDRout, R0out, R1out; // add any other signals to see in your simulation
	reg Read, R0in, R1in, MDRin;
	reg Clock, Clear;
	reg [31:0] Mdatain;
	reg [31:0] encIn;
	wire [31:0] busMuxOut;

	parameter Default = 4'b0000, Reg_load1a = 4'b0001, Reg_load1b = 4'b0010, Reg_load2a = 4'b0011,
				Reg_load2b = 4'b0100, Reg_load3a = 4'b0101, Reg_load3b = 4'b0110, T0 = 4'b0111,
				T1 = 4'b1000, T2 = 4'b1001, T3 = 4'b1010, T4 = 4'b1011, T5 = 4'b1100;
	reg [3:0] Present_state = Default;


datapath DUT(Mdatain, encIn, Clock, Clear, Read, R0in, R1in, MDRin, busMuxOut, R0out, R1out, MDRout);





// add test logic here
initial
	begin
		Clock = 0;
		forever #10 Clock = ~ Clock;
	end


always @(posedge Clock) // finite state machine; if clock rising-edge
	begin
		case (Present_state)
			Default : Present_state = Reg_load1a;
			Reg_load1a : Present_state = Reg_load1b;
			Reg_load1b : Present_state = Reg_load2a;
			Reg_load2a : Present_state = Reg_load2b;
			Reg_load2b : Present_state = Reg_load3a;
			Reg_load3a : Present_state = Reg_load3b;
			Reg_load3b : Present_state = T0;
			T0 : Present_state = T1;
			T1 : Present_state = T2;
			T2 : Present_state = T3;
			T3 : Present_state = T4;
			T4 : Present_state = T5;
		endcase
	end




always @(Present_state) // do the required job in each state
	begin
		case (Present_state) // assert the required signals in each clock cycle
			Default: begin
				// initialize the signals
				R0in <=0; MDRin <= 0; R1in <= 0;
				Read <= 0; 
				Mdatain <= 32'h00000000;
				encIn <= 32'h00000000;
			end
			Reg_load1a: begin
				Mdatain <= 32'h00000012;
			end
			Reg_load1b: begin
				Read <= 1; MDRin <= 1;
			end
			Reg_load2a: begin
				encIn <= 32'h00000004;
			end
			Reg_load2b: begin
				R0in <= 1;
			end
			Reg_load3a: begin
				
			end
			Reg_load3b: begin
//Read <= 0; MDRin <= 0;
//			   encIn <= 32'h00000001; 
//				R0in <= 1; 
			end

			T1: begin
				//R0in <= 0;
			end
			T2: begin
			
			end
			T3: begin
				
			end
			T4: begin
				
			end
			T5: begin
				
			end
		endcase
	end
endmodule
