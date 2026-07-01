create_library_set -name fast\
   -timing\
    [list ../../../../install/FOUNDRY/digital/90nm/dig/lib/fast.lib]
create_library_set -name slow\
   -timing\
    [list ../../../../install/FOUNDRY/digital/90nm/dig/lib/slow.lib]
create_rc_corner -name rc_corner\
   -cap_table ../../../../install/FOUNDRY/digital/90nm/dig/captable/gpdk090.lef.extended.CapTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 125\
   -qx_tech_file ../../../../install/FOUNDRY/digital/90nm/dig/qrc/gpdk090_9l.tch
create_delay_corner -name max_delay\
   -library_set slow\
   -rc_corner rc_corner
create_delay_corner -name min_delay\
   -library_set slow\
   -rc_corner rc_corner
create_constraint_mode -name sdc\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name best_case -constraint_mode sdc -delay_corner min_delay
create_analysis_view -name worst_case -constraint_mode sdc -delay_corner max_delay
set_analysis_view -setup [list worst_case] -hold [list best_case]
