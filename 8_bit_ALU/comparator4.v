// Name: Yaohong Sabotinova
// 4-bit comparator

module comparator4(a,b,eq,gt,lt,e,g,l); //sub- module for 4-bit magnitude comparator

input [3:0]a,b;
input eq,gt,lt;
output e,g,l;
wire [3:0]x,bbar;
// ,abar;

wire w1,w2,w3,w4,w5,ebar,gbar;
// w5,w6,w7,w8;

xnor z3(x[3],a[3],b[3]);
xnor z2(x[2],a[2],b[2]);
xnor z1(x[1],a[1],b[1]);
xnor z0(x[0],a[0],b[0]);

not n3(bbar[3],b[3]);
not n2(bbar[2],b[2]);
not n1(bbar[1],b[1]);
not n0(bbar[0],b[0]);

// not na3(abar[3],a[3]);
// not na2(abar[2],a[2]);
// not na1(abar[1],a[1]);
// not na0(abar[0],a[0]);


and q1(w1,a[3],bbar[3]);
and q2(w2,x[3],a[2],bbar[2]);
and q3(w3,x[3],x[2],a[1],bbar[1]);
and q4(w4,x[3],x[2],x[1],a[0],bbar[0]);

// and qa1(w5,b[3],abar[3]);
// and qa2(w6,x[3],b[2],abar[2]);
// and qa3(w7,x[3],x[2],b[1],abar[1]);
// and qa4(w8,x[3],x[2],x[1],b[0],abar[0]);

or o1(g,w1,w2,w3,w4);//greater than
and a1(e,x[0],x[1],x[2],x[3]); //equal
// and o2(l,w5,w6,w7,w8); //less than
not n4(ebar,e);
not n5(gbar,g);
and a2(l,ebar,gbar);

endmodule