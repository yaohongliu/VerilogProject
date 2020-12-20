module add_sub_tb;

reg [7:0] A,B;
reg Cin;
wire Cout;
wire [7:0] Sum;


   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("add_sub_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,as01);  // Variables that will be in vcd file

        $monitor("%b + %b + %b = %b%b", A, B, Cin, Cout,Sum);
		#0 	A = 8'b00000101; B = 8'b00001010; Cin = 1'b0;
		#50 A = 8'b00000100; B = 8'b00000000; Cin = 1'b1;
		#50 A = 8'b00010100; B = 8'b00010000; Cin = 1'b0;
		#50 A = 8'b10000101; B = 8'b00010010; Cin = 1'b1;
		#50 A = 8'b10000001; B = 8'b00011010; Cin = 1'b0;
		#50 A = 8'b10010101; B = 8'b00010010; Cin = 1'b1;
		#50 A = 8'b10010000; B = 8'b00011010; Cin = 1'b0;
		#50 A = 8'b10010101; B = 8'b00010000; Cin = 1'b1;
        #50 A = 8'b10010001; B = 8'b00010001; Cin = 1'b0;
		#50 A = 8'b10010100; B = 8'b00010010; Cin = 1'b1;
		#50 $finish;
     end


add_sub as01(Cout,Sum,A,B,Cin);

endmodule