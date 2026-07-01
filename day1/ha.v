module ha (a,b,s,c);
input a,b;
output s,c;

assign {c,s} = a + b;

endmodule


module ha_tb;
reg a,b;
wire s,c;

ha dut(a,b,s,c);

initial 
begin
a=0; b=0;
#50 $finish;
end 

always #5 a = ~a;
always #10 b = ~b;

endmodule
