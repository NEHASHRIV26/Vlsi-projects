//memory_tb.sv: memory testbench module
`timescale 1ns/1ps
// include RTL file
`include "memory.v"
// include test bench files
`include "globals1.sv"
import globals1::*;
`include "mem_gen.sv"
`include "mem_if.sv"
`include "mem_drv.sv"
`include "mem_mon.sv"
`include "mem_sb.sv"
`include "mem_pgtest.sv"

// testbench
module memory_tb;
    reg clk, reset;
  // memory interface
   mem_if mem_if_r(clk, reset); // physical interface
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
 

