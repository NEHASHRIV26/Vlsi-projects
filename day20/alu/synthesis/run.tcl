read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl alu.v
elaborate
read_sdc constraints_aluu.sdc
syn_generic
syn_map
syn_opt
write_hdl > alu_netlist.v
write_sdc  > alu_tool.sdc
gui_show
report timing > alu_timing.rpt
report power > alu_power.rpt
report area > alu_cell.rpt
report gates > alu_gates.rpt
   
