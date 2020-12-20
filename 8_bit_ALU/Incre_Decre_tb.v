module Incre_Decre_tb;

reg [7:0] a;
reg sel;

wire [7:0] b;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("Incre_Decre_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,id01);  // Variables that will be in vcd file

        $monitor("%b +%b = %b", a,sel, b);
		#0 	a = 8'b00000101;sel=1;
		#50 a = 8'b00000100;sel=0;
		#50 a = 8'b00010100;sel=1;
		#50 a = 8'b10000101;sel=0;
		#50 a = 8'b10000001;sel=1;
		#50 a = 8'b10010101;sel=0;
		#50 a = 8'b10010000;sel=1;
		#50 a = 8'b10010101;sel=0;
        #50 a = 8'b10010001;sel=1;
		#50 a = 8'b10010100;sel=0;
		#50 $finish;
     end


Incre_Decre id01(a,b,sel);

endmodule