
module comparator8_tb;

reg [7:0] a,b;
wire eq,gt,lt;

    initial 
	
		begin

		$dumpfile("comparator8_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,comp01);  // Variables that will be in vcd file

 		$monitor("%b+ %b = %b%b%b", a, b, eq, gt,lt);
		#0  a = 8'b00001000; b =8'b00010000;
		#50 a = 8'b01000010;b = 8'b00010010;
		#50 a = 8'b01000010;b = 8'b01000010;
        #50 a = 8'b01100010;b = 8'b10110010;
        #50 a = 8'b11001011;b = 8'b01010010;
		#50 a = 8'b01000110;b = 8'b01100010;
        #50 a = 8'b01101110;b = 8'b10010010;
        #50 a = 8'b11001110;b = 8'b00010010;
		#50;
 
    end
comparator8 comp01(eq,gt,lt,a,b);

endmodule













