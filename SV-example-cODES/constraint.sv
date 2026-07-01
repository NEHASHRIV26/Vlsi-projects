// Implication constraints
class Transaction;
  typedef enum{RUNT, NORMAL, OVERSIZE} size_h;
  rand bit [15:0] length;
  rand size_h size;
constraint test_sizes{
  size==NORMAL -> {length dist{[64:127]:=10,[128:511]:=10,[512:1500]:=10};}
  if(size==RUNT) {length >= 0; length <= 63;}
  else if(size==OVERSIZE) {length >= 1501; length <= 5000;} }
  function void post_randomize();
  begin
    $display("length: %0d",length);
    case(size)
      RUNT:    $display("test size_h is RUNT");
      NORMAL:  $display("test size_h is NORMAL");
      OVERSIZE:$display("test size_h is OVERSIZE");
    endcase
  end
  endfunction
endclass
// Instance in module
module conditional;
  initial  begin
  Transaction tran_h=new();
  integer value_rand,count=0;
  for(count=0; count<4; count++)    begin
    $write("randomize value\n");
    value_rand=tran_h.randomize();
    end
  end
endmodule
