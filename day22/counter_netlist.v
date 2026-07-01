//2 input pads
//8 output pads
//Total ports= 10
// VDD=1 & VSS=1
//Total pads=10/4 = 3 each side(left,top,right,bottom)

//INPUTS
PADDI in1(.PAD(wreq),.Y(wreq));
PADDI in2(.PAD(wclk),.Y(wclk));
PADDI in3(.PAD(wrst_n),.Y(wrst_n));
PADDI in4(.PAD(rreq),.Y(rreq));
PADDI in5(.PAD(rclk,),.Y(rclk,));
PADDI in6(.PAD(rrst_n),.Y(rrst_n));
PADDI in7(.PAD(wdata[0]),.Y(wdata[0]));
PADDI in8(.PAD(wdata[1]),.Y(wdata[1]));
PADDI in9(.PAD(wdata[2]),.Y(wdata[2]));
PADDI in10(.PAD(wdata[3]),.Y(wdata[3]));
PADDI in11(.PAD(wdata[4]),.Y(wdata[4]));
PADDI in12(.PAD(wdata[5]),.Y(wdata[5]));
PADDI in13(.PAD(wdata[6]),.Y(wdata[6]));
PADDI in14(PAD(wdata[7]),.Y(wdata[7]));

//OUTPUTS
PADDO out1(.A(count[0]),.PAD(count[0]));
PADDO out2(.A(count[1]),.PAD(count[1]));
PADDO out3(.A(count[2]),.PAD(count[2]));
PADDO out4(.A(count[3]),.PAD(count[3]));
PADDO out5(.A(count[4]),.PAD(count[4]));
PADDO out6(.A(count[5]),.PAD(count[5]));
PADDO out7(.A(count[6]),.PAD(count[6]));
PADDO out8(.A(count[7]),.PAD(count[7]));
PADDO out9(.A(wfull),.PAD(wfull));
PADDO out10(.A(rempty),.PAD(rempty));

