// mem_sb.sv: class mem scoreboard
class mem_trans_sb #(addr_width=`awidth, data_width=`dwidth);
   transaction mem_trans_mb;
   bit [data_width-1:0] wr_data[integer];
   bit [data_width-1:0] rd_data[integer];
   mailbox mbox2sb;
  function new(mailbox inbox);
    this.mbox2sb=inbox;
  endfunction
  extern task run();
  extern task data_check();
endclass

// scoreaboard run task 
task mem_trans_sb :: run; 
   integer count=0;
   begin
       mem_trans_mb=new;
       forever begin 
         mbox2sb.get(mem_trans_mb);
         $display($time, " Score Board addr=%0h wr_data = %0h, rd_data=%0h, trans _type=%s \n", mem_trans_mb.addr, mem_trans_mb.wr_data, mem_trans_mb.rd_data, mem_trans_mb.trans_type.name());
         if (mem_trans_mb.trans_type==WRITE)
           wr_data[mem_trans_mb.addr]= mem_trans_mb.wr_data;
         else 
           rd_data[mem_trans_mb.addr]= mem_trans_mb.rd_data;
       end
   end
endtask

// data check task
task mem_trans_sb :: data_check; 
  bit [addr_width-1:0] addr_t;
  integer no_wr_entries, no_rd_entries;
  begin 
    no_wr_entries=wr_data.num();
    no_rd_entries=rd_data.num();
    for (addr_t=0; addr_t< 2**addr_width; addr_t++) begin
      if (wr_data.exists(addr_t)) begin
        if (wr_data[addr_t] === rd_data[addr_t])
         $display($time, " Addr=%0h, Write data=%0h MATCHED with READ data=%0h", addr_t, wr_data[addr_t], rd_data[addr_t]);
        else
         $display($time, " ERROR-Addr=%0h, Write data=%0h NOT MATCHED with READ data=%0h", addr_t, wr_data[addr_t], rd_data[addr_t]);
       no_wr_entries--;
       no_rd_entries--;
       $display($time, " Write entries=%0d Read entries=%0d", no_wr_entries, no_rd_entries);
       end //if
       if (no_wr_entries == 0)
          break;
     end //for
  end
endtask

