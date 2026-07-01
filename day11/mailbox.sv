// class transaction
class transaction #(addr_width=8, data_width=8);
  rand bit [addr_width-1:0] addr;
  rand bit [data_width-1:0] wr_data;
       bit [data_width-1:0] rd_data;
  rand bit trans_type;
endclass

// Generator class
class generator;
  transaction txn_g;
  mailbox mbox_g;
  function new(mailbox mbox);
    this.mbox_g=mbox;
  endfunction
  // gen task
  task run(int count);
    begin 
      repeat(count) begin
        txn_g =new();
        assert(txn_g.randomize);
        mbox_g.put(txn_g);
        $display(" GEN:%0d, addr=%0d, wdata=%0d, rd_data=%0d, tt=%0d", mbox_g.num(), txn_g.addr, txn_g.wr_data, txn_g.rd_data, txn_g.trans_type);
      end
    end
  endtask
endclass



// driver class
class driver;
  transaction txn_d;
  mailbox mbox_d;
  function new(mailbox mbox);
    this.mbox_d=mbox;
  endfunction
   // task run to get trans and drive
  task run(int count);
  begin
    txn_d = new;
    repeat(count) begin
       mbox_d.get(txn_d);
      $display(" DRIVER:%0d, addr=%0d, wdata=%0d, rd_data=%0d, tt=%0d", mbox_d.num(), txn_d.addr, txn_d.wr_data, txn_d.rd_data, txn_d.trans_type);
     // @(posedge bus. clk);
     //bus.addr<=txn_d.addr;
     //...
   end
   end
  endtask
endclass

// top module
module top;
  mailbox mbox=new;
  generator gen_h=new(mbox);
  driver drv_h=new(mbox);
  initial begin 
    gen_h.run(4);
    drv_h.run(4);
  end
endmodule

