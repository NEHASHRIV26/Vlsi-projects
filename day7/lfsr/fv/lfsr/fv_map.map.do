
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point out[3] out[3] -type PO PO
add mapped point out[2] out[2] -type PO PO
add mapped point out[1] out[1] -type PO PO
add mapped point out[0] out[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point out[0]/q out_reg[0]/Q -type DFF DFF
add mapped point out[3]/q out_reg[3]/Q -type DFF DFF
add mapped point out[2]/q out_reg[2]/Q -type DFF DFF
add mapped point out[1]/q out_reg[1]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
