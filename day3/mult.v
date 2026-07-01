
module mult(a,b,c);
input[1:0]a,b;
output[3:0]c;

wire c1_temp,c2_temp,c3_temp,c4_temp;
assign c[0]=a[0]&b[0];
assign c1_temp=a[0]&b[1];
assign c2_temp=a[1]&b[0];
assign c4_temp=a[1]&b[1];

ha ha1(c1_temp,c2_temp,c[1],c3_temp);
ha ha2(c3_temp,c4_temp,c[2],c[3]);
endmodule
