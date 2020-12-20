// Name: Yaohong Sabotinova
// 4-1 mux

module mux4(out,A,B,C,D,sel);
input A,B,C,D;
input [1:0] sel;
output out;

assign out = A & (~sel[1] & ~sel[0]) |B & (~sel[1] & sel[0]) |C & ( sel[1] & ~sel[0]) |D & ( sel[1] & sel[0]);


endmodule