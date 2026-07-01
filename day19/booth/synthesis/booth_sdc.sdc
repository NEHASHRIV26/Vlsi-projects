# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Jun 23 09:35:26 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design booth

create_clock -name "clk" -period 1.0 -waveform {0.0 0.5} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports load]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports reset]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {M[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {M[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {M[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {M[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Q[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Q[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Q[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {Q[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {P[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
