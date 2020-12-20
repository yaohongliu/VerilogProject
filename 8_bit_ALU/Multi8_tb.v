module Multi8_tb;

reg [7:0] a,b;

wire [15:0] z;



   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Multi8_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,m01);  // Variables that will be in vcd file

        $monitor("%b + %b = %b", a,b,z);
		#0 	a = 8'b00000101; b = 8'b00001010;
		#50 a = 8'b00000100; b = 8'b00000000;
		#50 a = 8'b00010100; b = 8'b00010000;
		#50 a = 8'b10000101; b = 8'b00010010;
		#50 a = 8'b10000001; b = 8'b00011010;
		#50 a = 8'b10010101; b = 8'b00010010;
		#50 a = 8'b10010000; b = 8'b00011010;
		#50 a = 8'b10010101; b = 8'b00010000;
        #50 a = 8'b10010001; b = 8'b00010001;
		#50 a = 8'b10010100; b = 8'b00010010;
		#50 $finish;
     end


Multi8 m01(z,a,b);

endmodule