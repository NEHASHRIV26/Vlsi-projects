// multiple driver issues 
module dff_2a (
 output logic q1,q2,
 input logic d1, d2, clk, rst_n);
 
 always_ff @(posedge clk or rst_n)
 if (!rst_n) 
   q1 <= '0;
 else 
   q1 <= d1;
  
 always_ff @(posedge clk or rst_n)
 if (!rst_n) 
   q2 <= '0;
 else 
   q2 <= d2;

 endmodule 


// testbench 
module dff_tb ;
 logic q1,q2, d1, d2, clk, rst_n;
 dff_2a dff_inst(q1, q2,d1, d2, clk, rst_n);
  //clk 
 always #5 clk=~clk;
 // test 
 initial begin 
  $dumpvars;
  $dumpfile("dff.vcd");
  
  rst_n=0;clk=0;
  #10;
  rst_n=1;
  #10; d1=0; d2=1;
  #10; d1=1; d2=0;
  #10; d1=1;d2=1;
  #40; $finish;
 end 
endmodule 







