# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed Jun 24 14:22:25 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design alu

create_clock -name "clk" -period 1.0 -waveform {0.0 0.5} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {a[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {a[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {a[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {a[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {b[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {b[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {b[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {b[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {c[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {c[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {c[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {c[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports rst]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 0.4 [get_ports {y[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
