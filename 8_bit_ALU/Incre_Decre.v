// Name: Yaohong Sabotinova 
//increment and decrement

module Incre_Decre(a,b,sel); 
output [7:0] b;
input [7:0] a; 
input sel;

reg [7:0] b;


always @(*)
begin 
  if (sel == 0) // sel =0 for increment
  begin 
    b = a + 1'b1;
  end
  else if(sel== 1)// sel = 1 for decrement 
  begin
    b = a - 1'b1;
  end
end

endmodule