// base packet
class Packet; 
   int addr;
   function new (int addr);
      this.addr = addr;
   endfunction

   virtual function display ();
    $display ("[Parent] addr=0x%0h", addr);
   endfunction
endclass

 // extended packet
class ExtPacket extends Packet; 
  int data;
  function new (int addr, data);
      super.new (addr);
      this.data = data;
   endfunction
 
  function display ();
    $display ("[Child] addr=0x%0h data=0x%0h", addr, data);
  endfunction
endclass

// Testbench module
module inheritance;
  Packet      bc;    // bc stands for BaseClass
  ExtPacket   sc;   // sc stands for SubClass
  initial begin
    bc = new (32'hface_cafe);    bc.display ();
    sc = new (32'hfeed_feed, 32'h1234_5678);  
    sc.display ();
  end
endmodule
