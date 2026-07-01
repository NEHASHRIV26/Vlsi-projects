module ad_tb;

reg x0,y0,x1,y1,x2,y2,x3,y3,cin;
wire c0,s0,c1,s1,c2,s2,s3;

ad uut(
    .x0(x0), .y0(y0),
    .x1(x1), .y1(y1),
    .x2(x2), .y2(y2),
    .x3(x3), .y3(y3),
    .cin(cin),
    .c0(c0), .s0(s0),
    .c1(c1), .s1(s1),
    .c2(c2), .s2(s2),
    .s3(s3)
);

initial
begin
    $monitor("x=%b%b%b%b y=%b%b%b%b cin=%b -> sum=%b%b%b%b",
             x3,x2,x1,x0,
             y3,y2,y1,y0,
             cin,
             s3,s2,s1,s0);

    x3=0; x2=0; x1=0; x0=1;
    y3=0; y2=0; y1=0; y0=1;
    cin=0; #10;

    x3=0; x2=0; x1=1; x0=1;
    y3=0; y2=0; y1=0; y0=1;
    cin=0; #10;

    x3=1; x2=0; x1=1; x0=0;
    y3=0; y2=1; y1=0; y0=1;
    cin=0; #10;

    x3=1; x2=1; x1=1; x0=1;
    y3=1; y2=1; y1=1; y0=1;
    cin=1; #10;

    $finish;
end

endmodule
