
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point u_d u_d -type PI PI

//output ports
add mapped point counter[7] counter[7] -type PO PO
add mapped point counter[6] counter[6] -type PO PO
add mapped point counter[5] counter[5] -type PO PO
add mapped point counter[4] counter[4] -type PO PO
add mapped point counter[3] counter[3] -type PO PO
add mapped point counter[2] counter[2] -type PO PO
add mapped point counter[1] counter[1] -type PO PO
add mapped point counter[0] counter[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point counter_u_d[7]/q counter_u_d_reg[7]/Q -type DFF DFF
add mapped point counter_u_d[6]/q counter_u_d_reg[6]/Q -type DFF DFF
add mapped point counter_u_d[3]/q counter_u_d_reg[3]/Q -type DFF DFF
add mapped point counter_u_d[4]/q counter_u_d_reg[4]/Q -type DFF DFF
add mapped point counter_u_d[2]/q counter_u_d_reg[2]/Q -type DFF DFF
add mapped point counter_u_d[5]/q counter_u_d_reg[5]/Q -type DFF DFF
add mapped point counter_u_d[1]/q counter_u_d_reg[1]/Q -type DFF DFF
add mapped point counter_u_d[0]/q counter_u_d_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
