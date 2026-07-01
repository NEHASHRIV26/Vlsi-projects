// Example
class Bus;
  randc bit [2:0] addr;
  randc bit [4:0] data;
  rand bit  write_read;
 
 function new();

  endfunction 
  
endclass:Bus
 // module to randomize
module ranomize_01;
 Bus bus = new;
 
 initial begin 
 repeat(50)  begin
  if (bus.randomize() == 1)
     // Randomization successful
     $display("addr=%d data = %d\n", bus.addr,bus.data, bus.write_read);
   else
     $display ("Randomization failed\n"); 
  end
 end
endmodule

