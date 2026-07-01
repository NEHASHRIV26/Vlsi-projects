// In line constraints 
class Transaction;
  rand bit [31:0] addr,data;
  constraint addr_range {addr inside {[0:100],[1000:2000]};}
endclass

module inline;
  Transaction tran_h;
  initial  begin
    tran_h=new();
    assert(tran_h.randomize() with {addr >= 50; addr<=1500; data<10;});
      $display("randomize successful addr %0d   data %0d",tran_h.addr ,tran_h.data);
    assert(tran_h.randomize() with {addr==2000; data>100;});
      $display("randomize successful addr %0d  data %0d" ,tran_h.addr,tran_h.data);
  end
endmodule

