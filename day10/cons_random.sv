// Example
class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  rand bit  write_read;

constraint word_align {addr[4:0] == 5'b00000 ;}
constraint word {data[3:0] == 4'b11111 ;}

 
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
     $display("addr=%h data = %b\n", bus.addr,bus.data, bus.write_read);
   else
     $display ("Randomization failed\n"); 
  end
 end
endmodule

