`timescale 1ns/1ns
module count8_tb;
reg clk,rst,u_d;
wire [7:0] counter;

count8 dut(clk,rst,u_d,counter);
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    u_d = 1;
    #10 rst = 0;
#10 rst = 1;
#10 rst = 0;

    #2000 u_d= 0;
 #2000 u_d= 1;
 #2000 u_d= 0;
    #50 $finish;
end


always @(counter)
begin
    if(u_d)
        $display("Time=%0t Up Counting Count=%d", $time, counter);
    else
        $display("Time=%0t Down Counting Count=%d", $time, counter);
end

endmodule
