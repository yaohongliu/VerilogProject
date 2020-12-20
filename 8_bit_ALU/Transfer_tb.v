module Transfer_tb;

reg [7:0] a;

wire [7:0] b;


   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Transfer_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,t01);  // Variables that will be in vcd file

        $monitor("%b = %b", a, b);
		#0 	a = 8'b00000101;
		#50 a = 8'b00000100;
		#50 a = 8'b00010100;
		#50 a = 8'b10000101;
		#50 a = 8'b10000001;
		#50 a = 8'b10010101;
		#50 a = 8'b10010000;
		#50 a = 8'b10010101;
        #50 a = 8'b10010001;
		#50 a = 8'b10010100;
		#50 $finish;
     end


Transfer t01(a,b);

endmodule