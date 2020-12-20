// Name: Yaohong Sabotinova 

module Complement(a,b); 
output [7:0]b;
input [7:0]a; 

// reg [15:0]z;
reg [7:0] y;
reg [7:0] b;
integer i; 

always @(*)
begin 
  y=a;
  b=0;
  for(i=0;i<8;i=i+1)
  begin
    if(y[i] == 0)
      b[i]= 1; 
  end
end
endmodule