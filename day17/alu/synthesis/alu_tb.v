`timescale 1ns/1ns
module alu_tb;
reg[3:0]a,b,c;
wire[15:0]y;

alu h1(a,b,c,y);
initial
begin
a=1010;
b=1011;
#10; c=4'b0001;
#10; c=4'b0010;
#10; c=4'b0011;
#10; c=4'b0100;
#10; c=4'b0101;
#10; c=4'b0110;
#10; c=4'b0111; 
#10; c=4'b1000;
#10; c=4'b1001;
#10; c=4'b1010;
#10; c=4'b1011;
end
endmodule
