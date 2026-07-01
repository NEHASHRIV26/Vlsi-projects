read_libs /home/vlsi19/45nm_Library/lib/slow_vdd1v0_basicCells.lib
read_hdl fifo.v
elaborate
read_sdc fifo_constraints.sdc
syn_generic
syn_map
syn_opt
write_hdl > fifo_netlist.v
write_sdc  > fifo_tool.sdc
gui_show
report timing > fifo_timing.rpt
report power > fifo_power.rpt
report area > fifo_cell.rpt
report gates > fifo_gates.rpt
   
