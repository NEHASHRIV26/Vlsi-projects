// Example
class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  rand bit  write_read;
 
 function new();

  endfunction 
  
endclass:Bus
 // module to randomize
module ranomize_01;
 Bus bus = new;
 
 initial begin 
 repeat(10)  begin
  if (bus.randomize() == 1)
     // Randomization successful
     $display("addr=%h data = %h\n", bus.addr,bus.data, bus.write_read);
   else
     $display ("Randomization failed\n"); 
  end
 end
endmodule
