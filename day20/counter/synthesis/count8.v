module count8(
    input clk,
    input rst,
    input u_d,
    output [7:0] counter
);

reg [7:0] counter_u_d;

always @(posedge clk or posedge rst)
begin
    if(rst)
        counter_u_d <= 8'b0;
    else if(u_d)
        counter_u_d <= counter_u_d + 8'd1;
    else
        counter_u_d <= counter_u_d - 8'd1;
end

assign counter = counter_u_d;

endmodule
