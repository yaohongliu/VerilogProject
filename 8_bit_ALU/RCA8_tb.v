module RCA8_tb;

reg [7:0] A,B;
reg Cin;
wire Cout;
wire [7:0] Sum;

   initial
   
     begin
		$display("Simulation running..."); // Display info on monitor
        $dumpfile("RCA8_tb.vcd"); // Simulation results -> GTKWave
        $dumpvars(0,RCA01);  // Variables that will be in vcd file

        $monitor("%d + %d + %d = %d %d", A, B, Cin, Cout,Sum);
		#0 	A = 4'd3; B = 4'd6; Cin = 1'b0;
		#50 A = 4'd12; B = 4'd8; Cin = 1'b1;
		#50 A = 4'd2; B = 4'd9; Cin = 1'b0;
		#50 A = 4'd5; B = 4'd7; Cin = 1'b1;
		#50 A = 4'd5; B = 4'd11; Cin = 1'b0;
		#50 A = 4'd1; B = 4'd12; Cin = 1'b1;
		#50 A = 4'd7; B = 4'd3; Cin = 1'b0;
		#50 A = 4'd8; B = 4'd6; Cin = 1'b1;
		#50 $finish;
     end

RCA8 RCA01(Cout,Sum,A,B,Cin);
 
endmodule