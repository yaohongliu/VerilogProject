// Name: Yaohong Sabotinova
// 8-bit adder and sustractor 

module Multi8(z,a,b); 
output [15:0]z;
input [7:0]a,b; 

reg [15:0]z;
reg [15:0]y;
integer i; 

always @(a , b)
begin 
  y=a;
  z=0; // needs to zeroed
  for(i=0;i<8;i=i+1)
  begin
    if(b[i])
      z=z+y; // must be a blocking assignment
    y=y<<1;
  end
end
endmodule