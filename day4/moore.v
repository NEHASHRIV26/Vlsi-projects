module moore(input clk,rst,din,output reg dout);
parameter s1=1,s2=2,s3=3,s4=4;
reg[1:0]state;

always@(posedge rst or posedge clk)
begin
if(rst)
begin
state<=0;
dout<=0;
end
else begin
case(state)

s1:begin
dout<=1'b0;
if(din)
state<=s2;
else
state<=s1;
end

s2:begin
if(din) begin
state<=s3;dout<=1'b0;
end
else begin
state<=s2;dout<=1'b1;
end
end

s3:begin
if(din) begin
state<=s4;dout<=1'b1;
end
else begin
state<=s3;dout<=1'b0;
end
end

s4:begin
if(din) begin
state<=s2;dout<=1'b1;
end
else begin
state<=s3;dout<=1'b0;
end
end

default: begin
dout<=0; state<=s1;
end
endcase
end
end
endmodule
















