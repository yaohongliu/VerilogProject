// Name: Yaohong Sabotinova
// 8-bit adder and sustractor 

module add_sub(Cout,Sum,A,B,Cin);
input [7:0] A,B;
input Cin; //Cin = 0 for add; Cin = 1 for subtraction
output Cout;
output [7:0] Sum;

wire [7:0] w;
wire [7:0] k;

xor(k[0],B[0],Cin);
xor(k[1],B[1],Cin);
xor(k[2],B[2],Cin);
xor(k[3],B[3],Cin);
xor(k[4],B[4],Cin);
xor(k[5],B[5],Cin);
xor(k[6],B[6],Cin);
xor(k[7],B[7],Cin);


FA FA0(w[0],Sum[0],A[0],k[0],Cin);

FA FA1(w[1],Sum[1],A[1],k[1],w[0]);
FA FA2(w[2],Sum[2],A[2],k[2],w[1]);
FA FA3(w[3],Sum[3],A[3],k[3],w[2]);
FA FA4(w[4],Sum[4],A[4],k[4],w[3]);
FA FA5(w[5],Sum[5],A[5],k[5],w[4]);
FA FA6(w[6],Sum[6],A[6],k[6],w[5]);
FA FA7(Cout,Sum[7],A[7],k[7],w[6]);

endmodule