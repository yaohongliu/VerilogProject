// Name: Yaohong Sabotinova
// 8-bit comparator

module comparator8(eq,lt,gt,a,b);
input [7:0] a, b; 
output eq,gt,lt;
wire e,g,l;

comparator4 c1(a[7:4],b[7:4], {1'b1},{1'b0},{1'b0},eq,gt,lt);
comparator4 c2(a[3:0],b[3:0],eq,gt,lt,e,g,l);

endmodule
