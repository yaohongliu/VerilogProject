// Name: Yaohong Sabotinova
// 8-bit ALU

module ALU8(Cout,out,A,B,sel);
input [7:0] A,B;
input [3:0] sel;
output [7:0] out;
output Cout;

reg [7:0] result;
wire [8:0] w;

assign out = result;
assign w = {1'b0,A} + {1'b0,B};
assign Cout = w[8];
always@(*)
begin
    case(sel)
    4'b0000:
        result = A+B; //addtion
    4'b0001:
        result = A-B; //subtraction
    4'b0010:
        result = A*B; //multiplication
    4'b0011:
        result = (A<B)?8'd1:8'd0; //less than comparision
    4'b0100:
        result = A; //transfer A
    4'b0101:
        result = A+1; //increment A
    4'b0110:
        result = A-1; // decrement A
    4'b0111:
        result = ~A; // 1'complement of A
    4'b1000:
        result = A&B; //logical and
    4'b1001:
        result = A|B; //logical or
    4'b1010:
        result = A^B; //logical xor
    4'b1011:
        result = ~(A^B); // logical nor
    4'b1100:
        result = ~(A&B); // logical nand
    4'b1101:
        result = ~(A^B); // logical xnor
    4'b1110:
        result = (A>B)?8'd1:8'd0; //greater comparision
    4'b1111:
        result = (A==B)?8'd1:8'd0; // euqal comparison
    default: result = A+B;
    endcase

end

endmodule