module FA_tb;

reg A,B,Cin;
wire Cout,Sum;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("FA_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,FA01);  // Variables that will be in vcd file
        $dumpvars(1,A,B,Cin);  // Variables that will be in vcd file

        $monitor("%b + %b + %b = %b%b", A, B, Cin, Cout,Sum);
		#0 	A = 1'b0; B = 1'b0; Cin = 1'b0;
		#50 A = 1'b0; B = 1'b0; Cin = 1'b1;
		#50 A = 1'b0; B = 1'b1; Cin = 1'b0;
		#50 A = 1'b0; B = 1'b1; Cin = 1'b1;
		#50 A = 1'b1; B = 1'b0; Cin = 1'b0;
		#50 A = 1'b1; B = 1'b0; Cin = 1'b1;
		#50 A = 1'b1; B = 1'b1; Cin = 1'b0;
		#50 A = 1'b1; B = 1'b1; Cin = 1'b1;
		#50 $finish;
     end

FA FA01(Cout,Sum,A,B,Cin);

endmodule