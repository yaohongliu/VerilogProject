module mux4_tb;

reg A,B,C,D;
reg [1:0] sel;
wire out;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("mux4_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,mux01);  // Variables that will be in vcd file
        $dumpvars(1,A,B,C,D,sel);  // Variables that will be in vcd file

        $monitor("%b + %b + %b +%b +%b= %b", A, B, C,D,sel,out);
		#0 sel[1] = 1'b0; sel[0] = 1'b0;A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
		#50 sel[1] = 1'b0; sel[0] = 1'b0;A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
        #50 sel[1] = 1'b0; sel[0]= 1'b1;A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
		#50 sel[1] = 1'b0; sel[0]= 1'b1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
        #50 sel[1]= 1'b1; sel[0]= 1'b0; A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
		#50 sel[1]= 1'b1; sel[0]= 1'b0; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
        #50 sel[1] = 1'b1; sel[0] = 1'b1; A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
		#50 sel[1] = 1'b1; sel[0] = 1'b1;A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;

        #50 $finish;
     end

mux4 mux01(out,A,B,C,D,sel);

endmodule