// Randomization and constraint methods
class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  //constraint to generate word aigned accesses
  //always set addr[1:0] to 0
  constraint word_align {addr[1:0] == 2'b00;}
  
  function void pre_randomize();
    $display("pre-randomize values addr=%0b, data=%0b", addr, data);
  endfunction
  function void post_randomize();
    $display("post-randomize values addr=%0b, data=%0b", addr, data);
  endfunction 
endclass:Bus

// module – class instance
module ranomize_01;
 Bus bus_01 = new;
 initial begin 
   bus_01.rand_mode(1); // Enable randomization
   bus_01.srandom(2); // seed for randomization 
   bus_01.word_align.constraint_mode(1); // constraint mode
   repeat(10)  begin
     // Randomize
     if (bus_01.randomize())
       $display("Randomization successful");
     else
       $display ("Randomization failed\n"); 
   end
 end
endmodule

