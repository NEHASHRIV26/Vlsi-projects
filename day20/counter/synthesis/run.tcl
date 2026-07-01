set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib

set_db library  slow.lib
    
read_hdl {./count8.v}

elaborate

read_sdc ./constraints_count8.sdc

set_db use_scan_seqs_for_non_dft false


set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > count8_netlist.v
write_sdc  > count8_tool.sdc
   
gui_show

report timing > count8_timing.rpt
report power > count8_power.rpt
report area > count8_cell.rpt
report gates > count8_gates.rpt
