module ad(
    input x0,y0,x1,y1,x2,y2,x3,y3,cin,
    output c0,s0,c1,s1,c2,s2,s3,cout
);

fa fa0(.a(x0), .b(y0), .c(cin), .sum(s0), .carry(c0));
fa fa1(.a(x1), .b(y1), .c(c0),  .sum(s1), .carry(c1));
fa fa2(.a(x2), .b(y2), .c(c1),  .sum(s2), .carry(c2));
fa fa3(.a(x3), .b(y3), .c(c2),  .sum(s3), .carry(cout));

endmodule
