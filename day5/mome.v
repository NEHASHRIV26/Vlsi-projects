module mome(input clk,rst,din,output reg dout);
parameter s0=0,s1=1,s2=2,s3=3,s4=4;
reg[1:0] state;

always@(posedge clk or posedge rst)
begin
if(rst)
begin
state<=s0;
dout<=0;
end
else begin

case(state)
s0:begin
if(din)begin
state<=s1;dout<=1'b0;
end
else begin
state<=s0;dout<=1'b0;
end
end

s1:begin
if(din)begin
state<= s3; dout<=1'b0;
end
else begin
state<=s2; dout<=1'b0;
end
end

s2:begin
if(din) begin
state<= s1; dout<=1'b0;
end
else begin
state<=s4; dout<=1'b0;
end
end

s3:begin
if(din) begin
state<= s1; dout<=1'b0;
end
else begin
state<=s4; dout<=1'b0;
end
end

s4:begin
if(din) begin
state<= s1; dout<=1'b0;
end
else begin
state<=s0; dout<=1'b1;
end
end

default: begin
dout<=0; state<=s0;
end
endcase
end
end
endmodule








