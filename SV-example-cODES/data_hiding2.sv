//local variable access from outside class 
//'base' is not accessible from scope 'main' 
class base_class; 
   local int value; 
   //function new();
   //endfunction 
endclass 

module main; 
  initial 
    begin 
     base_class b_object = new(); 
     b_object.value = 123; 
     $display ("Value=%d", b_object.value);
  end 
endmodule 

