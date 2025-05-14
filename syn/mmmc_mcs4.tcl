# ANALYSIS CONFIGURATION MMMC FILE 
# mcs4 MMMC FILE 2025
# ITESO
# Roberto Vazquez / Kevyn Carrillo
# 2023-10-04
# This file is used to define the analysis views for the mcs4
# The analysis views are used to define the timing conditions, library sets, and other parameters for the analysis.


# LIBRARY SET DEFINITIONS 
create_library_set -name LS_slow -timing { 
/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib  \ 
/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_multibitsDFF.lib }

create_library_set -name LS_fast -timing {
/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_basicCells.lib \
/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_multibitsDFF.lib }

# create_library_set -name LS_typ  -timing { }

# OPERATION CONDITIONS (PVT) 
create_opcond -name OP_mcs4_slow	-process 1 -voltage 0.9  -temperature 125
create_opcond -name OP_mcs4_fast	-process 1 -voltage 1.2 -temperature 0

# TIMING CONDITIONS
create_timing_condition -name TC_mcs4_slow    -opcond OP_mcs4_slow  -library_sets { LS_slow }
create_timing_condition -name TC_mcs4_fast    -opcond OP_mcs4_fast  -library_sets { LS_fast }
#create_timing_condition -name TC_mcs4_typ 	-opcond OP_mcs4_typ 	-library_sets { LS_typ }



# RC CORNERS
# create_rc_corner -name RCC_mcs4 -qrc_tech $QRC_TECH_FILE
# create_rc_corner -name RCC_mcs4 -cap_table ../Captable/cln28hpl_1p10m+alrdl_5x2yu2yz_typ.capTbl


# DELAY CORNERS
#create_delay_corner -name DC_mcs4_slow -early_timing_condition TC_mcs4_slow \
#                    -late_timing_condition TC_mcs4_slow -early_rc_corner RCC_mcs4 \
#                    -late_rc_corner RCC_mcs4

create_delay_corner -name DC_mcs4_slow -early_timing_condition TC_mcs4_slow \
                    -late_timing_condition TC_mcs4_slow 


#create_delay_corner -name DC_mcs4_fast -early_timing_condition TC_mcs4_fast \
#                    -late_timing_condition TC_mcs4_fast -early_rc_corner RCC_mcs4 \
#                    -late_rc_corner RCC_mcs4

create_delay_corner -name DC_mcs4_fast -early_timing_condition TC_mcs4_fast \
                    -late_timing_condition TC_mcs4_fast

# create_delay_corner -name DC_mcs4_typ -early_timing_condition TC_mcs4_typ \
#                    -late_timing_condition TC_mcs4_typ -early_rc_corner RCC_mcs4 \
#                    -late_rc_corner RCC_mcs4

# CONSTRAINTS MODES 
create_constraint_mode -name CM_mcs4_slow -sdc_files { \
   ../../syn/mcs4_constraints_fast.sdc.tcl
}

create_constraint_mode -name CM_mcs4_fast -sdc_files { \
   ../../syn/mcs4_constraints_slow.sdc.tcl
}

#create_constraint_mode -name CM_mcs4_typ -sdc_files { \
#   ../Genus_inputs/constraints_mcs4_typ.sdc
#}

# ANALISIS VIEW DEFINITIONS
create_analysis_view -name view_mcs4_slow -constraint_mode CM_mcs4_slow -delay_corner  DC_mcs4_slow
create_analysis_view -name view_mcs4_fast -constraint_mode CM_mcs4_fast -delay_corner  DC_mcs4_fast
# create_analysis_view -name view_mcs4_typ  -constraint_mode CM_mcs4_typ  -delay_corner  DC_mcs4_typ

# SETTING OF ANALYSIS VIEW
set_analysis_view -setup { view_mcs4_slow view_mcs4_fast } -hold { view_mcs4_slow view_mcs4_fast }



