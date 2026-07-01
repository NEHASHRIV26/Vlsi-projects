module fa_tb;

reg a, b, c;
wire sum, carry;

fa uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry)
);

initial
begin
    $display("a b c | sum carry");
    $monitor("%b %b %b | %b    %b", a, b, c, sum, carry);

    a=0; b=0; c=0; #10;
    a=0; b=0; c=1; #10;
    a=0; b=1; c=0; #10;
    a=0; b=1; c=1; #10;
    a=1; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=0; #10;
    a=1; b=1; c=1; #10;

    $finish;
end

endmodule
