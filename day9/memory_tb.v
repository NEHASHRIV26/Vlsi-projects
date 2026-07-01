// Memory Test bench code
module memory_tb(); 
  parameter addr_width=16;
  parameter data_width=32; 
  integer count;
  reg cs,clk,reset,re,we;
  reg [addr_width-1:0] addr;
  reg [data_width-1:0] data_in;
  wire [data_width-1:0] data_out;

// memory instance
 memory #(addr_width, data_width) memory_inst(addr,cs,re,we,clk,reset,data_in,data_out);
 
 initial begin
   clk=0;    reset=0;
#1 cs=0; 
#1 cs=1;
#1 cs=0;
#2 reset=1;
#2  reset=0;
 end
// clock generation
always #5 clk=~clk;
// calling write and read tasks
 initial begin
 for(count=0; count< 'h10;count=count+1)  begin  
      write_task(count);
      read_task(count);  
 end
 $finish; // end the test
end
// monitor the log
initial
   $monitor($time,"  addr=%hdata_in=%h,data_out=%h", addr, data_in,data_out);
   
   // dump the vcd 
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
end
// write task
task write_task;
input [addr_width-1:0] addr_in;
begin
 @(posedge clk);
  cs=1; we=1; re=0;        //data_in=$random;
  data_in=$random;
  addr=addr_in;
  @(posedge clk);
  we=0;
end
endtask

//read task
task read_task;
input [addr_width-1:0] addr_in;
begin
   @(posedge clk)
   cs=1; we=0;re=1;
   addr =addr_in;
   @(posedge clk)
   re = 0;


 end
endtask
endmodule
