read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl alu.v
elaborate
read_sdc alu1.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > alu1_netlist_1.v
write_sdc > alu1_tool.sdc
