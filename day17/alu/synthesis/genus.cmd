# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Wed Jun 24 11:51:50 2026
# Host: cadence (x86_64 w/Linux 4.18.0-425.3.1.el8.x86_64) (8cores*16cpus*1physical cpu*Intel(R) Core(TM) i7-10875H CPU @ 2.30GHz 16384KB)
# OS:   Red Hat Enterprise Linux release 8.7 (Ootpa)

read_libs /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read
read_hdl alu.v
elaborate
read_sdc constraints_aluu.sdc
syn_generic
syn_generic
gui_showq
gui_show
syn_map
syn_opt
write_hdl aluu_netlist.v
write_hdl constraints_aluu_netlist.v
