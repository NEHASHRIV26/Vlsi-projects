module mult_tb;

reg [1:0] a,b;
wire [3:0] c;

mult dut(
    .a(a),
    .b(b),
    .c(c)
);

initial
begin
    a = 0;
    b = 0;

    $monitor($time," ns : a=%0d b=%0d c=%0d",a,b,c);

    #1 a=2; b=1;
    #1 a=0; b=1;
    #1 a=2; b=2;
    #1 a=2; b=3;

    #10 $finish;
end

endmodule
