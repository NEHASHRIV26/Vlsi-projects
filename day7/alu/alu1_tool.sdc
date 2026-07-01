# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.11-s100_1 on Mon Jun 08 15:59:05 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design alu

set_clock_gating_check -setup 0.0 
set_input_delay -add_delay -max 0.1 [get_ports {a[3]}]
set_input_delay -add_delay -max 0.1 [get_ports {a[2]}]
set_input_delay -add_delay -max 0.1 [get_ports {a[1]}]
set_input_delay -add_delay -max 0.1 [get_ports {a[0]}]
set_input_delay -add_delay -max 0.1 [get_ports {b[3]}]
set_input_delay -add_delay -max 0.1 [get_ports {b[2]}]
set_input_delay -add_delay -max 0.1 [get_ports {b[1]}]
set_input_delay -add_delay -max 0.1 [get_ports {b[0]}]
set_input_delay -add_delay -max 0.1 [get_ports {c[3]}]
set_input_delay -add_delay -max 0.1 [get_ports {c[2]}]
set_input_delay -add_delay -max 0.1 [get_ports {c[1]}]
set_input_delay -add_delay -max 0.1 [get_ports {c[0]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[15]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[14]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[13]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[12]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[11]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[10]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[9]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[8]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[7]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[6]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[5]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[4]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[3]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[2]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[1]}]
set_output_delay -add_delay -max 0.1 [get_ports {y[0]}]
set_wire_load_mode "enclosed"
