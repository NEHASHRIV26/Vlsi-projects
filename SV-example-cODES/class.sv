class packet;
    bit [3:0] command;
    bit [3:0] address;
    bit [3:0] master_id;
    integer time_requested;
    // Constructor
    function new(); //initialization
          command = 0;
           address = 4'b0;
           master_id = 4'bx;
      endfunction
   //Class methods
    task values();
         command = 1; address=8; master_id=9;
         $display("task values com=%0d, address=%0d, id=%0d", command, address, master_id);
    endtask
    task issue_request (int time_requested);
       $display("task time_requested =%0d", time_requested);
    endtask
    function int current_status(int status);
         $display("function status=%0d", status);
         return(status);
   endfunction
endclass


// module
module class_packet_instance;
  packet P;  //declare a variable of class Packet
  int curr_stat;
  initial   begin
   P = new();  // Initialize packet
   // object properties
   P.command = 1;
   P.address = $random;
   // object methods
   curr_stat = P.current_status(10);
   P.values();
   P.issue_request(20);
  end
endmodule
