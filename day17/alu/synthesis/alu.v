module alu(input [3:0]a,b,c, input clk,rst,
output reg[15:0]y);
always @(posedge clk or posedge rst)
begin
    if(rst)
        y <= 0;
    else
    begin
        case(c)
            4'b0001: y <= a+b;
            4'b0010: y <= a-b;
            4'b0011: y <= a*b;
            4'b0100: y <= (b!=0) ? a/b : 0;
            4'b0101: y <= a&b;
            4'b0110: y <= a|b;
            4'b0111: y <= a^b;
            4'b1000: y <= ~a;
            4'b1001: y <= a&b;
            4'b1010: y <= a|b;
            4'b1011: y <= ~a;
            default: y <= 16'b0;
        endcase
    end
end
endmodule



