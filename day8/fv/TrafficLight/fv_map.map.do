
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI

//output ports
add mapped point LED_NS[2] LED_NS[2] -type PO PO
add mapped point LED_NS[1] LED_NS[1] -type PO PO
add mapped point LED_NS[0] LED_NS[0] -type PO PO
add mapped point LED_WE[2] LED_WE[2] -type PO PO
add mapped point LED_WE[1] LED_WE[1] -type PO PO
add mapped point LED_WE[0] LED_WE[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point count[2]/q count_reg[2]/Q -type DFF DFF
add mapped point count[3]/q count_reg[3]/Q -type DFF DFF
add mapped point count[1]/q count_reg[1]/Q -type DFF DFF
add mapped point count[0]/q count_reg[0]/Q -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q -type DFF DFF
add mapped point state[3]/q state_reg[3]/Q -type DFF DFF
add mapped point state[5]/q state_reg[5]/Q -type DFF DFF
add mapped point state[4]/q state_reg[4]/Q -type DFF DFF
add mapped point state[2]/q state_reg[2]/Q -type DFF DFF
add mapped point state[1]/q state_reg[1]/Q -type DFF DFF
add mapped point LED_NS[0]/q LED_NS_reg[0]/Q -type DLAT DLAT
add mapped point LED_NS[1]/q LED_NS_reg[1]/Q -type DLAT DLAT
add mapped point LED_WE[2]/q LED_WE_reg[2]/Q -type DLAT DLAT
add mapped point LED_NS[2]/q LED_NS_reg[2]/Q -type DLAT DLAT
add mapped point LED_WE[1]/q LED_WE_reg[1]/Q -type DLAT DLAT
add mapped point LED_WE[0]/q LED_WE_reg[0]/Q -type DLAT DLAT



//Black Boxes



//Empty Modules as Blackboxes
