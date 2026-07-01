module set_membership;
  class frame;
    rand bit [7:0] src_port;
    rand bit [7:0] des_port;
    constraint c {
       src_port inside { [8'h0:8'hA],8'h10,8'h18 }; // inclusive
       !(des_port inside { [8'h4:8'hBB] }); // exclusive
    }
    function void post_randomize();
      begin
        $display("src port : %0x",src_port);
        $display("des port : %0x",des_port);
      end
    endfunction
  endclass
  initial begin
    frame frame_h = new();
    integer i,j = 0;
    for (j=0;j < 4; j++) begin
      $display("-------------------------------");
      $display("Randomize Value");
      $display("-------------------------------");
      i = frame_h.randomize();
    end   
    $display("-------------------------------");
  end
endmodule

