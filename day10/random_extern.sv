// Randomization and constraint methods
class Bus;
  rand bit [15:0] addr;
  rand bit [31:0] data;
  int cycles=10;
  //constraint to generate word aligned accesses
  //always set addr[1:0] to 0
  constraint word_align {addr[1:0] == 2'b00;}

  function void post_randomize();
    $display("post-randomize values addr=%0b, data=%0b", addr, data);
  endfunction 

  extern function exercise_illegal;  
 endclass:Bus



//extern function
function Bus :: exercise_illegal;
 int res;
 begin 
  //Disable constraint,generate illegal address 
    word_align.constraint_mode(0);  
   $display("Word aligned address constraint disabled\n");
    repeat (cycles) begin
        res = randomize() ; 
    end
  // Re-enable word alignment constraint
   $display("Word aligned address constraint Enabled\n");
    word_align.constraint_mode(1); 
    repeat (cycles) begin
        res = randomize() ; 
    end
   end
 endfunction 

// Module testbench
module Transaction;
  Bus bus1 = new;
  initial begin 
    $display("RANDOM Mode enabled\n");
    bus1.rand_mode(1); 
    bus1.exercise_illegal();
    $display("RANDOM Mode Disabled\n");
    bus1.rand_mode(0); 
    bus1.exercise_illegal();
  end
 
endmodule







