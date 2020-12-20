module comparator4_tb;

reg [3:0] a,b;
reg eq,gt,lt;
wire e,g,l;

    initial 
	
		begin

		$dumpfile("comparator4_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,comp0);  // Variables that will be in vcd file

 		$monitor("%b + %b = %b%b%b", a, b, e, g,l);
		#0 a = 4'b0000; b =4'b0010;
		#50 a = 4'b0101;b = 4'b0011;
		#50 a = 4'b0101;b = 4'b0010;
        #50 a = 4'b0101;b = 4'b0111;
        #50 a = 4'b1101;b = 4'b0011;
		#50;
 
    end
comparator4 comp0(a,b,eq,gt,lt,e,g,l);

endmodule