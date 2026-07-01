module mealy(input clk,rst,din, output reg dout_1001,dout_1100,dout_1101);
parameter s0=0,s1=1,s2=2,s3=3,s4=4;
reg [2:0] state;

always @(posedge clk or posedge rst)
begin
if(rst)begin 
 state<=0;
   dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
end else begin
case(state)
  s0:begin
    dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
  if(din)
    state<=s1;
  else
    state<=s0;
  end
  s1:begin
    if(din)begin
    state<=s3; dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
    end else begin
    state<=s2; dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
  end
  end
  s2:begin
    if(din)begin
    state<=s1; dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
    end else begin
    state<=s4; 
    dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
  end
  end
  s3:begin
    if(din)begin
    state<=s1; dout_1001=1'b0;dout_1100=1'b1;dout_1101=1'b0;
    end else begin
    state<=s4; dout_1001=1'b0;dout_1100=1'b0;dout_1101=1'b0;
  end
  end
  s4:begin
    if(din)begin
    state<=s1; dout_1001=1'b1;dout_1100=1'b0;dout_1101=1'b1;
    end else begin
    state<=s0; dout_1001=1'b0;dout_1100=1'b1;dout_1101=1'b0;
  end
  end
default:begin
   dout_1001=1'b0;dout_1100=1'b0; state<=s0;dout_1101=1'b1;
   end
endcase
end
end
endmodule

