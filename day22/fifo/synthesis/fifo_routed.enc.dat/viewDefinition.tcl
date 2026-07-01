if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast_vdd1v0_basicCells.lib]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow_vdd1v0_basicCells.lib]
create_rc_corner -name rc_corner\
   -cap_table ${::IMEX::libVar}/mmmc/cln28hpl_1p10m+alrdl_5x2yu2yz_typical.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rc_corner/gpdk045.tch
create_delay_corner -name max_delay\
   -library_set slow\
   -rc_corner rc_corner
create_delay_corner -name min_delay\
   -library_set fast\
   -rc_corner rc_corner
create_constraint_mode -name sdc\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/sdc/sdc.sdc]
create_analysis_view -name best_case -constraint_mode sdc -delay_corner min_delay
create_analysis_view -name worst_case -constraint_mode sdc -delay_corner max_delay
set_analysis_view -setup [list worst_case] -hold [list best_case]
