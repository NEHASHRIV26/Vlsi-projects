# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Mon Jun 22 11:06:25 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mealy

create_clock -name "clk" -period 0.5 -waveform {0.0 0.25} [get_ports clk]
set_clock_transition 0.05 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports din]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports dout_1001]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports dout_1100]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.2 [get_ports dout_1101]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.005 [get_ports clk]
set_clock_uncertainty -hold 0.005 [get_ports clk]
