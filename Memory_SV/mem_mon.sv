// mem_mon.sv: class mem monitor
class mem_trans_mon #(addr_width=`awidth, data_width=`dwidth);
   transaction mem_trans_mb;
   mailbox mon2mbox;
   virtual mem_if mem_if_m; 


//coverage

covergroup mem_trans_cov;
    //coverpoint mem_trans_mb;
    option.per_instance=1;
    option.at_least=1;
    addr: coverpoint mem_trans_mb.addr {
         bins addr_low={[0:'h00ff]};
         bins addr_med={[16'h0100:16'h0fff]};
         bins addr_high={[16'h1000:16'hffff]};         }
    w_data:coverpoint mem_trans_mb.wr_data {
         bins wr_data_low={[0:32'h00ff_ffff]};
         bins wr_data_med={[32'h0100_0000:32'h0fff_ffff]};
         bins wr_data_high={[32'h1000_0000:32'hffff_ffff]};         }
    r_data:coverpoint mem_trans_mb.rd_data {
         bins rd_data_low={[0:32'h00ff_ffff]};
         bins rd_data_med={[32'h0100_0000:32'h0fff_ffff]};
         bins rd_data_high={[32'h1000_0000:32'hffff_ffff]};         }
    trans_type:coverpoint mem_trans_mb.trans_type {
         bins write = {WRITE};
         bins read  ={READ};          }
    addr_x_trans_type : cross addr, trans_type;
    endgroup



  function new(mailbox inbox, virtual mem_if v_if);
    this.mon2mbox=inbox;
    this.mem_if_m=v_if;
    this.mem_trans_cov=new;
 endfunction


 extern task run();
endclass

// montor run task 
task mem_trans_mon :: run; 
   integer count=0;
     begin
       mem_trans_mb=new;
         forever begin 
         @(posedge mem_if_m.clk)
       // write trans capture   
 if (mem_if_m.mem_mon.cs &   
 mem_if_m.mem_mon.we & ~mem_if_m.mem_mon.re) begin 
           mem_trans_mb=new;
             mem_trans_mb.addr=mem_if_m.mem_mon.addr;
             mem_trans_mb.wr_data=mem_if_m.mem_mon.data_in;
             mem_trans_mb.trans_type=WRITE;
             mon2mbox.put(mem_trans_mb); //put write trans to mailbox
             $display($time, " Monitor WRITE addr=%0h wr_data = %0h, trans_type=%s \n", mem_trans_mb.addr, mem_trans_mb.wr_data, mem_trans_mb.trans_type.name());
         end 

mem_trans_cov.sample();
          // read trans capture
           if (mem_if_m.mem_mon.cs & ~mem_if_m.mem_mon.we & mem_if_m.mem_mon.re) begin 
             count++;
             if (count%2==0) begin 
               mem_trans_mb=new;
               mem_trans_mb.addr=mem_if_m.mem_mon.addr;
               mem_trans_mb.rd_data=mem_if_m.mem_mon.data_out;
               mem_trans_mb.trans_type=READ;
               mon2mbox.put(mem_trans_mb); //put read trans to mailbox
               $display($time, " Monitor READ addr=%0h rd_data = %0h, trans_type=%s count=%0d\n", mem_trans_mb.addr, mem_trans_mb.rd_data, mem_trans_mb.trans_type.name(), count);
               count=0;
mem_trans_cov.sample();

            end
           end 
        end
    end
endtask
