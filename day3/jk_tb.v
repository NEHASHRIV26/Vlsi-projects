module jk_tb;
reg clk,rst,j,k;
wire q;
jk jki(.j(j), .k(k), .q(q), .clk(clk));
initial
clk=1'b1;
always #10 clk=~clk;
initial begin
#10 rst=1'b01;j=1'b01;k=1'b0;
#10 rst=1'b01;j=1'b00;k=1'b0;
#10 rst=1'b00;j=1'b01;k=1'b1;
#10 rst=1'b00;j=1'b01;k=1'b0;
#10 rst=1'b00;j=1'b00;k=1'b1;
#10 rst=1'b00;j=1'b01;k=1'b1;
end
initial
#100 $finish;
endmodule
