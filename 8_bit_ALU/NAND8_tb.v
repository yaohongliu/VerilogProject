module NAND8_tb;

reg [7:0] a,b;
wire [7:0] z;

   initial
   
     begin
     
        $dumpfile("NAND8_tb.vcd");
        $dumpvars(0,nandO1);
        $monitor("%b + %b = %b", a, b, z);
		#0 	a = 8'b00010010; b = 8'b01000101;
		#50 a = 8'b00010110; b = 8'b01010101;
		#50	a = 8'b10010010; b = 8'b01000111;
		#50 a = 8'b00010011; b = 8'b01000100;
		#50 a = 8'b00011010; b = 8'b00000101;
		#50 a = 8'b00110010; b = 8'b11000101;
		#50 a = 8'b00010110; b = 8'b01000001;
		#50 $finish;
     end

NAND8 nandO1(a,b,z);

endmodule