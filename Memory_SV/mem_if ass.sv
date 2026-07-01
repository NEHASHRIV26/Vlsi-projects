//mem_if.sv: interface for memory
interface mem_if #(awidth=`awidth, dwidth=`dwidth) (input bit clk, reset);

  logic [awidth-1:0] addr;
  logic [dwidth-1:0] data_in, data_out;
  logic cs,re,we;

  modport mem_drv (input data_out, output addr, data_in, cs, re, we);
  modport mem_mon (input data_out, addr, data_in, cs, re, we);

//assertions for protocol check
property bus_check;
@(negedge clk) disable iff (reset| ~cs)
(cs & we & ~re) or (cs & ~we & re)
endproperty

property rd_check;
@(negedge clk) disable iff (reset| ~cs)
(cs & ~we & re) |=> (cs & ~we & re) and $stable(addr);
endproperty
//asserting the property
assert property (bus_check);
assert property (rd_check);

endinterface: mem_if













endinterface: mem_if

