// task example
module task_mod;
task mytask1 (output int x, output logic y , input int a, input logic b);
   $display("mytask1:x=%0d,y=%0d,a=%d,b=%d",x,y,a,b);
endtask

task mytask2;
  int x;
  logic y;
  int a;
  logic b;
  a=10;  b=1;
  x=a;   y=b;
  mytask1(x,y,a,b);
endtask

initial 
 begin 
   mytask2; 
 end
endmodule
