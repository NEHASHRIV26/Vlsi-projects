read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl traffic.v
elaborate
read_sdc constraints_trafficc.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > trafficc_netlist_1.v
write_sdc > trafficc_tool.sdc
report_area > traffic.txt
