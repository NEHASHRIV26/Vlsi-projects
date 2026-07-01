module alu(input [3:0]a,b,input [3:0]c,
output reg[15:0]y);
always @(a or b or c)
begin
case(c)
4'b0001: y=(a+b);
4'b0010: y=(a-b);
4'b0011: y=(a*b);
4'b0100: y=(a/b);
4'b0101: y=(a&b);
4'b0110: y=(a|b);
4'b0111: y=(a^b);
4'b1000: y=~(a^b);
4'b1001: y=~(a&b);
4'b1010: y=~(a|b);
4'b1011: y=~a;
default:y=4'b0000;
endcase
end
endmodule



