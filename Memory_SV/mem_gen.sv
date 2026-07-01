// class generator

class mem_trans_gen #(addr_width=`awidth, data_width=`dwidth);
 transaction mem_trans,mem_trans_mb;
   mailbox gen2mbox;
    function new(mailbox inbox);
    this.gen2mbox=inbox;
  endfunction
  extern task run(string test_name);
endclass

 // generator task 
task mem_trans_gen :: run(string test_name); 
 begin
      if (test_name == "multi_wr_rd") begin 
       repeat (`no_of_trans) begin
        mem_trans =new();
          mem_trans_mb=new;

        // Write transaction 
        assert(mem_trans.randomize() with {trans_type==WRITE;});
        gen2mbox.put(mem_trans);
        $display("Generator addr=%h wr_data = %h, trans_type=%s \n", mem_trans.addr, mem_trans.wr_data, mem_trans.trans_type.name());

        // Read transaction 
        assert(mem_trans_mb.randomize() with {addr==mem_trans.addr; trans_type==READ;});
        gen2mbox.put(mem_trans_mb);
        $display("Generator addr=%0h, rd_data=%0h, trans_type=%s \n", mem_trans_mb.addr, mem_trans_mb.rd_data, mem_trans_mb.trans_type.name());   
       end    
        $display("Gen -mbox size=%0d", gen2mbox.num());
      end
    end
endtask

