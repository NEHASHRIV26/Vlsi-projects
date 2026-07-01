read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl lfsr.v
elaborate
read_sdc constraints_lfsr1.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > lfsr1_netlist-1ghz.v
write_sdc > lfsr1_tool.sdc
