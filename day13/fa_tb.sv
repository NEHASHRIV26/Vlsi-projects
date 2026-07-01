//memory_tb.sv: memory testbench module
`timescale 1ns/1ps

// include RTL file
`include "fa.v"

// include test bench files
`include "globals1.sv"

import globals1::*;
`include "fa_gen.sv"
`include "fa_if.sv"
`include "fa_drv.sv"
`include "fa_mon.sv"
`include "fa_sb.sv"
`include "fa_pgtest.sv"

// testbench
module fa_tb;
 
  // Memory(DUT) instantiation
   memory #(`awidth, `dwidth) memory_inst(mem_if_r.addr,mem_if_r.cs,mem_if_r.re,mem_if_r.we,mem_if_r.clk,mem_if_r.reset,mem_if_r.data_in,mem_if_r.data_out);
  // test instantiation using program block
  mem_test test(mem_if_r);  
// clock generation 
 initial begin
   clk = 0;
   forever
     #5 clk = ~clk;
 end
 assign #1 dut_clk = clk;
 //reset generation 
 initial begin
   reset = 1;
   mem_if_r.addr=0;
   mem_if_r.cs=0;
   mem_if_r.re=0;
   mem_if_r.we=0;
   #12
   reset = 0;

 end
 //dump waves
 initial begin
   //$dumpvars;
   //$dumpfile("mem.vcd");
   $recordfile("mem.trn");
   $recordvars;
 end
endmodule
 
