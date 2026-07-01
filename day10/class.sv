class parent;
    integer address;

    function new();
           address= 10;
    endfunction

    virtual task print();
          $display("address %0d",address);
    endtask
endclass


class child extends parent;
    integer data = 1;

    function new();
        // call the parent new
        super.new(); // constructor chaining
        $display("Done calling the parent new");
        data = 100;
    endfunction

    // Override the parent class print
    task print();
        $display("data is %0d",data);
        $display("Call the parent print");
        super.print();
    endtask
endclass

module c_super;
  initial begin
    child c_h;
    c_h = new;
    c_h.print();
  end
endmodule

