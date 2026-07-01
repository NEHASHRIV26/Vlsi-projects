
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point din din -type PI PI

//output ports
add mapped point dout_1001 dout_1001 -type PO PO
add mapped point dout_1100 dout_1100 -type PO PO
add mapped point dout_1101 dout_1101 -type PO PO

//inout ports




//Sequential Pins
add mapped point dout_1100/q dout_1100_reg/Q -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q -type DFF DFF
add mapped point dout_1101/q dout_1101_reg/Q -type DFF DFF
add mapped point dout_1001/q dout_1001_reg/Q -type DFF DFF
add mapped point state[2]/q state_reg[2]/Q -type DFF DFF
add mapped point state[1]/q state_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
