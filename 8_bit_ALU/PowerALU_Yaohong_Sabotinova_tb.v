module ALU8_tb;

reg [7:0] A,B;
reg [3:0] sel;

wire [7:0] out;
wire Cout;

 ALU8 test_unit(
            .A(A),
			.B(B),  // ALU 8-bit Inputs                 
            .sel(sel),// ALU Selection
            .out(out), // ALU 8-bit Output
            .Cout(Cout) // Carry Out Flag
     );
    initial 
	
		begin

		$dumpfile("PowerALU_Yaohong_Sabotinova_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,alu01);  // Variables that will be in vcd file
       
		// // sel = 4'b0000;
		//  A = 8'b00000001;
		//  B = 8'b00000010;
 		$monitor("%b + %b + %b = %b %b", A, B, sel, Cout,out);
		#0 A = 8'b00100000; B = 8'b00010010; sel = 4'b0000;
		#50 A = 8'b00011000; B = 8'b00000100; sel = 4'b0001;
		#50 A = 8'b00000010; B = 8'b00100100; sel = 4'b0010;
		#50 A = 8'b00000100; B = 8'b10000000; sel = 4'b0011;
		#50 A = 8'b00000011; B = 8'b00001000; sel = 4'b0100;
		#50 A = 8'b00010100; B = 8'b00101000; sel = 4'b0101;
		#50 A = 8'b00000100; B = 8'b00100000; sel = 4'b0110;		
		#50 A = 8'b00100000; B = 8'b00011000; sel = 4'b0111;
		#50 A = 8'b01000001; B = 8'b00011001; sel = 4'b1000;
		#50 A = 8'b01000100; B = 8'b00001100; sel = 4'b1001;
		#50 A = 8'b00000110; B = 8'b00010000; sel = 4'b1011;
		#50 A = 8'b00010000; B = 8'b00000001; sel = 4'b1100;
		#50 A = 8'b00000010; B = 8'b00000011; sel = 4'b1101;
		#50 A = 8'b00010100; B = 8'b00000010; sel = 4'b1110;
		#50 A = 8'b00110000; B = 8'b00000100; sel = 4'b1111;
		#50;
 
    end
ALU8 alu01(Cout,out,A,B,sel);

endmodule













