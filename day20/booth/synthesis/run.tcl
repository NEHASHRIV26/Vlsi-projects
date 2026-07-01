read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl booth.v
elaborate
read_sdc booth_sdc.sdc
syn_generic
syn_map
syn_opt
write_hdl > booth_netlist.v
write_sdc  > booth_sdc.sdc
gui_show
report timing > booth_timing.rpt
report power > booth_power.rpt
report area > booth_cell.rpt
report gates > booth_gates.rpt
   
