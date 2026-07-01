module lfsr_tb;
reg clk,rst;
wire [3:0] out;

lfsr dut(.clk(clk), .rst(rst), .out(out));
initial
begin 
clk=1;
   forever #5 clk = ~clk;
end

initial
begin
rst=1;
#10 
rst=0;
#100;
#10 rst=1;
#10 rst=0;

$stop;
end 
endmodule





