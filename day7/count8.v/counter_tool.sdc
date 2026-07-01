# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.11-s100_1 on Mon Jun 08 14:07:21 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design count8

create_clock -name "clk" -period 0.5 -waveform {0.0 0.25} [get_ports clk]
set_clock_transition 0.05 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports u_d]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports {counter[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.005 [get_ports clk]
set_clock_uncertainty -hold 0.005 [get_ports clk]
