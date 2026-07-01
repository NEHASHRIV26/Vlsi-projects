module mealy_tb;
reg clk,rst,din;
wire dout;
integer i;

mealy dut(clk,rst,din,dout);
initial
forever #10 clk=~clk;

initial
begin
rst=1'b1; clk=1'b0; din=0;
rst=1'b0;
for(i=0;i<50;i=i+1)
begin
@(posedge clk);
din=$random;
end
#200; $finish;
end
endmodule
