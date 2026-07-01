// class mem_driver
class mem_trans_drv #(addr_width=`awidth, data_width=`dwidth);
   transaction mem_trans, mem_trans_mb;
   mailbox mbox2drv;
   virtual mem_if mem_if_drv; 
   function new(mailbox inbox, virtual mem_if v_if);
    this.mbox2drv=inbox;
    this.mem_if_drv=v_if;
  endfunction
  extern task run();
  extern task send_to_dut(transaction trans_drv);
endclass
// driver run task 
task mem_trans_drv :: run; 
    begin
      mem_trans =new();
      mem_trans_mb=new;
        @(negedge mem_if_drv.reset);
         $display("driver-mbox size=%0d", mbox2drv.num());
         repeat (`no_of_trans) begin
        // Write transaction 
        mbox2drv.get(mem_trans_mb);
        send_to_dut(mem_trans_mb);
        
        // read transaction 
       // $display("driver-mbox size=%0d", mbox2drv.num());
        mbox2drv.get(mem_trans_mb);
        send_to_dut(mem_trans_mb);
       end
   end
endtask

task mem_trans_drv :: send_to_dut(input transaction trans_drv); 
   begin     // write 
     @(posedge mem_if_drv.clk)
     if (trans_drv.trans_type==WRITE) begin 
       $display($time, " Drive to dut WRITE addr=%0h, wr_data = %h,  trans_type=%s \n",trans_drv.addr, trans_drv.wr_data, trans_drv.trans_type.name());
       mem_if_drv.mem_drv.cs=1;
       mem_if_drv.mem_drv.we=1;
       mem_if_drv.mem_drv.re=0;
       mem_if_drv.mem_drv.addr=trans_drv.addr;
       mem_if_drv.mem_drv.data_in=trans_drv.wr_data;
       @(posedge mem_if_drv.clk) 
       mem_if_drv.mem_drv.we=0;
       mem_if_drv.mem_drv.cs=0;
     end 
     //read
     if (trans_drv.trans_type==READ) begin 
       mem_if_drv.mem_drv.cs=1;
       mem_if_drv.mem_drv.we=0;
       mem_if_drv.mem_drv.re=1;
       mem_if_drv.mem_drv.addr=trans_drv.addr;
       repeat (2) @(posedge mem_if_drv.clk) 
       trans_drv.rd_data= mem_if_drv.mem_drv.data_out;
       mem_if_drv.mem_drv.re=0;
       mem_if_drv.mem_drv.cs=0;
       $display($time, " Driver to dut READ addr=%0h, rd_data = %h,  trans_type=%s \n",trans_drv.addr, trans_drv.rd_data, trans_drv.trans_type.name());
     end      
   end
endtask
