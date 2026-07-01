// local variable access using method 
class base_class; 
  local int value_loc; 
  task set(int value_m); 
    value_loc = value_m; 
    $display("value_loc=%d", value_loc); 
  endtask 
endclass 

// Instance in a program
module main; 
  initial 
   begin 
    base_class b_object = new(); 
    b_object.set(123); 
  end 
endmodule 

