#######################################################
#                                                     
#  Tempus Timing Solution Command Logging File                     
#  Created on Wed Jun 24 15:48:17 2026                
#                                                     
#######################################################

#@(#)CDS: Tempus Timing Solution v23.13-s084_1 (64bit) 11/22/2024 17:27 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 23.13-s084_1 NR241029-2256/23_13-UB (database version 18.20.652) {superthreading v2.20}
#@(#)CDS: AAE 23.13-s022 (64bit) 11/22/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 23.13-s030_1 () Nov 21 2024 17:17:38 ( )
#@(#)CDS: SYNTECH 23.13-s009_1 () Oct 30 2024 09:17:13 ( )
#@(#)CDS: CPE v23.13-s064

::stop_gui -keepDgui
read_design -physical_data count8_routed.enc.dat/ count8
all_setup_analysis_views
all_hold_analysis_views
all_setup_analysis_views
all_hold_analysis_views
all_setup_analysis_views
all_hold_analysis_views
all_setup_analysis_views
all_hold_analysis_views
read_spef count8.spef
all_setup_analysis_views
read_sdf count8.sdf
get_eco_opt_mode -optimization_failure_tracking_file -quiet
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net {}
redraw
add_repeater -cell BUFX2 -net n_21
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_21
redraw
add_repeater -cell BUFX2 -net n_21
redraw
add_repeater -cell BUFX2 -net n_21
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_21
redraw
add_repeater -cell BUFX2 -net n_70
redraw
add_repeater -cell BUFX2 -net n_70
redraw
add_repeater -cell BUFX2 -net n_70
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_70
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_12
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_12
redraw
add_repeater -cell BUFX2 -net n_14
redraw
add_repeater -cell BUFX2 -net n_14
redraw
add_repeater -cell BUFX2 -net n_14
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_49
redraw
add_repeater -cell BUFX2 -net n_49
redraw
add_repeater -cell BUFX2 -net n_49
redraw
add_repeater -cell BUFX2 -net n_49
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_27
redraw
add_repeater -cell BUFX2 -net n_27
redraw
add_repeater -cell BUFX2 -net n_27
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_16
redraw
add_repeater -cell BUFX2 -net n_16
redraw
add_repeater -cell BUFX2 -net n_16
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net FE_RN_1_0
redraw
add_repeater -cell BUFX2 -net FE_RN_1_0
redraw
add_repeater -cell BUFX2 -net FE_RN_1_0
redraw
add_repeater -cell BUFX2 -net FE_RN_1_0
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
add_repeater -cell BUFX2 -net n_71
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_22
redraw
add_repeater -cell BUFX2 -net n_22
redraw
add_repeater -cell BUFX2 -net n_22
redraw
add_repeater -cell BUFX2 -net n_22
redraw
add_repeater -cell BUFX2 -net n_22
redraw
add_repeater -cell BUFX2 -net n_22
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
zoomSelected
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_48
redraw
add_repeater -cell BUFX2 -net n_48
redraw
add_repeater -cell BUFX2 -net n_48
redraw
add_repeater -cell BUFX2 -net n_48
redraw
add_repeater -cell BUFX2 -net n_48
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
zoomSelected
zoomSelected
all_analysis_views
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dc -rc_corner
add_repeater -cell BUFX2 -net n_44
redraw
add_repeater -cell BUFX2 -net n_44
redraw
add_repeater -cell BUFX2 -net n_44
redraw
get_time_unit
report_timing -output_format binary -max_paths 50000 -max_slack 0.75 -path_exceptions all -early > top.btarpt
load_timing_debug_report -name default_report top.btarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
write_eco -format innovus -output hold.tcl
