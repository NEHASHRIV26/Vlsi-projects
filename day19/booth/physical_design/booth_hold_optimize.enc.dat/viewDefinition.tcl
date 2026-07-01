if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/fast.lib]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_rc_corner -name rc_corner\
   -cap_table ${::IMEX::libVar}/mmmc/gpdk090.lef.extended.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file ${::IMEX::libVar}/mmmc/rc_corner/gpdk090_9l.tch
create_delay_corner -name max_delay\
   -library_set slow\
   -rc_corner rc_corner
create_delay_corner -name min_delay\
   -library_set fast\
   -rc_corner rc_corner
create_constraint_mode -name sdc\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name best_corner -constraint_mode sdc -delay_corner min_delay -latency_file ${::IMEX::libVar}/mmmc/latency.sdc
create_analysis_view -name worst_case -constraint_mode sdc -delay_corner max_delay -latency_file ${::IMEX::libVar}/mmmc/latency.sdc
set_analysis_view -setup [list worst_case] -hold [list best_corner]
