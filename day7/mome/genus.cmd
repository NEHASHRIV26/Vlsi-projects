# Cadence Genus(TM) Synthesis Solution, Version 23.11-s100_1, built Apr 22 2024 11:28:10

# Date: Tue Jun 09 10:03:57 2026
# Host: cadence (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (8cores*16cpus*1physical cpu*Intel(R) Core(TM) i7-10875H CPU @ 2.30GHz 16384KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl mome.v
elaborate
read_sdc constraints_mome1.sdc
syn_generic
gui_show
syn_map
syn_opt
write_hdl > mome1_netlist_1.v
write_sdc > mome1_tool.sdc
