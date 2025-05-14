#################################################################################
#
# Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed May 14 00:26:23 EDT 2025
#
#################################################################################

## library_sets
create_library_set -name LS_slow \
    -timing { /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib \
              /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_multibitsDFF.lib }
create_library_set -name LS_fast \
    -timing { /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_basicCells.lib \
              /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_multibitsDFF.lib }

## opcond
create_opcond -name OP_mcs4_slow \
    -process 1.0 \
    -voltage 0.9 \
    -temperature 125.0
create_opcond -name OP_mcs4_fast \
    -process 1.0 \
    -voltage 1.2 \
    -temperature 0.0

## timing_condition
create_timing_condition -name TC_mcs4_slow \
    -opcond OP_mcs4_slow \
    -library_sets { LS_slow }
create_timing_condition -name TC_mcs4_fast \
    -opcond OP_mcs4_fast \
    -library_sets { LS_fast }

## rc_corner
create_rc_corner -name default_emulate_rc_corner \
    -temperature 125.0 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name DC_mcs4_slow \
    -early_timing_condition { TC_mcs4_slow } \
    -late_timing_condition { TC_mcs4_slow } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner
create_delay_corner -name DC_mcs4_fast \
    -early_timing_condition { TC_mcs4_fast } \
    -late_timing_condition { TC_mcs4_fast } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner

## constraint_mode
create_constraint_mode -name CM_mcs4_slow \
    -sdc_files { outputs_May14-00:22:18/mcs4_opt.CM_mcs4_slow.sdc }
create_constraint_mode -name CM_mcs4_fast \
    -sdc_files { outputs_May14-00:22:18/mcs4_opt.CM_mcs4_fast.sdc }

## analysis_view
create_analysis_view -name view_mcs4_slow \
    -constraint_mode CM_mcs4_slow \
    -delay_corner DC_mcs4_slow
create_analysis_view -name view_mcs4_fast \
    -constraint_mode CM_mcs4_fast \
    -delay_corner DC_mcs4_fast

## set_analysis_view
set_analysis_view -setup { view_mcs4_slow view_mcs4_fast } \
                  -hold { view_mcs4_slow view_mcs4_fast }
