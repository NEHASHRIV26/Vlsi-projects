# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/   

set_db library slow.lib
read_hdl count8.v
elaborate 
read_sdc constraints_count8.sdc

set_db dft_scan_style muxed_scan 
set_db dft_prefix dft_
define_dft shift_enable -name SE -active high -create_port SE
check_dft_rules


syn_generic
syn_map
syn_opt

check_dft_rules
set_db design:count8 .dft_min_number_of_scan_chains 1
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -create_ports 
#connect_scan_chains -auto_create_chains -preview
connect_scan_chains -auto_create_chains
syn_opt -incr

report_scan_chains
write_dft_atpg -library /home/install/FOUNDRY/digital/90nm/dig/vlog/slow.v
write_hdl > count8_netlist_dft.v
write_sdc > count8_dft.sdc
write_sdf -nonegchecks -edges check_edge -timescale ns -recrem split > delays_dft.sdf
write_scandef > count8_scanDEF.scandef
report_timing > count8_timing.rep
report_area > count8_area.rep
report_gates > count8_GateCount.rep
report_power > count8_power.rep
report_timing_summary > count8_timing_summary.rep
gui_show



