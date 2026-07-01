module sr_tb;
reg clk,rst,s,r;
wire q;
sr sri(.s(s), .r(r), .q(q), .clk(clk));
initial
clk=1'b1;
always #10 clk=~clk;
initial begin
#10 rst=1'b01;s=1'b01;r=1'b0;
#10 rst=1'b01;s=1'b00;r=1'b0;
#10 rst=1'b00;s=1'b01;r=1'b1;
#10 rst=1'b00;s=1'b01;r=1'b0;
#10 rst=1'b00;s=1'b00;r=1'b0;
#10 rst=1'b00;s=1'b01;r=1'b0;
end
initial
#100 $finish;
endmodule
