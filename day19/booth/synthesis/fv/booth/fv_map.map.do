
//input ports
add mapped point clk clk -type PI PI
add mapped point load load -type PI PI
add mapped point reset reset -type PI PI
add mapped point M[3] M[3] -type PI PI
add mapped point M[2] M[2] -type PI PI
add mapped point M[1] M[1] -type PI PI
add mapped point M[0] M[0] -type PI PI
add mapped point Q[3] Q[3] -type PI PI
add mapped point Q[2] Q[2] -type PI PI
add mapped point Q[1] Q[1] -type PI PI
add mapped point Q[0] Q[0] -type PI PI

//output ports
add mapped point P[7] P[7] -type PO PO
add mapped point P[6] P[6] -type PO PO
add mapped point P[5] P[5] -type PO PO
add mapped point P[4] P[4] -type PO PO
add mapped point P[3] P[3] -type PO PO
add mapped point P[2] P[2] -type PO PO
add mapped point P[1] P[1] -type PO PO
add mapped point P[0] P[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point A[2]/q A_reg[2]/Q -type DFF DFF
add mapped point A[1]/q A_reg[1]/Q -type DFF DFF
add mapped point A[0]/q A_reg[0]/Q -type DFF DFF
add mapped point P[1]/q P_reg[1]/Q -type DFF DFF
add mapped point P[2]/q P_reg[2]/Q -type DFF DFF
add mapped point P[3]/q P_reg[3]/Q -type DFF DFF
add mapped point Count[1]/q Count_reg[1]/Q -type DFF DFF
add mapped point P[0]/q P_reg[0]/Q -type DFF DFF
add mapped point Count[0]/q Count_reg[0]/Q -type DFF DFF
add mapped point Q_minus_one/q Q_minus_one_reg/Q -type DFF DFF
add mapped point M_temp[3]/q M_temp_reg[3]/Q -type DFF DFF
add mapped point M_temp[2]/q M_temp_reg[2]/Q -type DFF DFF
add mapped point M_temp[0]/q M_temp_reg[0]/Q -type DFF DFF
add mapped point M_temp[1]/q M_temp_reg[1]/Q -type DFF DFF
add mapped point Count[2]/q Count_reg[2]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
