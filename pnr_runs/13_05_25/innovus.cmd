#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue May 13 22:46:39 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.12-s106_1 (64bit) 12/08/2021 18:19 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.12-s106_1 NR211128-2235/21_12-UB (database version 18.20.567) {superthreading v2.17}
#@(#)CDS: AAE 21.12-s039 (64bit) 12/08/2021 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.12-s043_1 () Dec  1 2021 10:06:22 ( )
#@(#)CDS: SYNTECH 21.12-s014_1 () Oct 27 2021 04:39:25 ( )
#@(#)CDS: CPE v21.12-s094
#@(#)CDS: IQuantus/TQuantus 20.1.2-s624 (64bit) Thu Sep 2 20:12:03 PDT 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
save_global mcs4
set init_gnd_net VSS
set init_lef_file {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_verilog ../../release/v0.0.1/syn/mcs4_opt.v
set init_mmmc_file ../../release/v0.0.1/syn/WC_BC_GPDK045_mcs4_Analysis.view
set init_top_cell mcs4
set init_pwr_net VDD
init_design
setDesignMode -process 45
floorPlan -site CoreSite -r 0.932134096484 0.699918 4.0 4.0 4.0 4.0 -adjustToSite
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VDD -type tiehi -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type tielo -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.3 bottom 0.3 left 0.3 right 0.3} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
fit
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal6 -direction vertical -width 0.5 -spacing 0.3 -number_of_sets 1 -start_from left -start_offset 9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomBox -7.56050 -4.74650 109.72850 99.03850
zoomBox -6.17200 -3.83600 93.52350 84.38100
zoomBox -3.98900 -2.40450 68.04150 61.33250
zoomBox 1.51850 -0.72450 53.56100 45.32600
zoomBox -1.01200 -1.49650 60.21450 52.68050
zoomBox -7.49150 -3.47400 77.25100 71.51150
zoomBox -11.61250 -4.73150 88.08500 83.48700
zoomBox -210.41950 -65.68750 614.17200 663.96400
fit
fit
setPlaceMode -congEffort high -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 1 -checkRoute 1 -honorSoftBlockage true -swapEEQ 0
setPlaceMode -fp false
place_design
checkPlace
checkPinAssignment -report_violating_pin
setAnalysisMode -analysisType onChipVariation
timeDesign -preCTS -prefix preCTS_setup
timeDesign -preCTS -prefix preCTS_hold -hold
set_ccopt_property buffer_cells {CLKBUFX2 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX20}
set_ccopt_property inverter_cells {CLKINVX1 CLKINVX2     CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 CLKINVX12 CLKINVX16 CLKINVX20}
set_ccopt_property target_max_trans 100ps
create_ccopt_clock_tree_spec -file bwco_ccopt_CTS.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin sysclk true
create_ccopt_clock_tree -name 20MHz_CLK -source sysclk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -early -clock_tree 20MHz_CLK 0.250
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -late -clock_tree 20MHz_CLK 1.250
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -early -clock_tree 20MHz_CLK 1.000
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -late -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -rise -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -fall -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -rise -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -fall -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -rise -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -fall -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -rise -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -fall -clock_tree 20MHz_CLK 5.000
set_ccopt_property clock_period -pin sysclk 50
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name 20MHz_CLK/ConstraintMode_WC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group 20MHz_CLK/ConstraintMode_WC true
set_ccopt_property target_insertion_delay -skew_group 20MHz_CLK/ConstraintMode_WC 2.500
set_ccopt_property extracted_from_clock_name -skew_group 20MHz_CLK/ConstraintMode_WC 20MHz_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group 20MHz_CLK/ConstraintMode_WC ConstraintMode_WC
set_ccopt_property extracted_from_delay_corners -skew_group 20MHz_CLK/ConstraintMode_WC DelayCorner_WC
create_ccopt_skew_group -name 20MHz_CLK/ConstraintMode_BC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group 20MHz_CLK/ConstraintMode_BC true
set_ccopt_property extracted_from_clock_name -skew_group 20MHz_CLK/ConstraintMode_BC 20MHz_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group 20MHz_CLK/ConstraintMode_BC ConstraintMode_BC
set_ccopt_property extracted_from_delay_corners -skew_group 20MHz_CLK/ConstraintMode_BC DelayCorner_BC
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
timeDesign -postCTS -prefix postCTS_setup
timeDesign -postCTS -prefix postCTS_hold -hold
report_ccopt_clock_trees -file clock_trees.rpt
report_ccopt_skew_groups -file skew_groups.rpt
zoomBox 47.03650 17.83450 72.20650 -0.01600
zoomBox 52.74450 10.13600 62.13950 3.53300
zoomBox 46.09600 2.95100 68.31700 12.09050
fit
zoomBox 51.85650 82.99050 99.69700 32.65100
zoomBox -189.57500 -7.63000 259.58250 177.11050
zoomBox -0.51300 132.27600 89.96700 72.04600
zoomBox 22.66900 110.96650 68.72200 87.19150
zoomBox 30.03650 106.51750 49.67550 93.55250
zoomBox 32.13200 102.57500 42.08300 96.58500
fit
zoomBox 11.69200 31.58000 41.14600 4.26800
fit
report_timing
report_area
check_design
getIoFlowFlag
report_design 
report_route
report_analysis_summary 
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -reportOnly -pathReports -drvReports -slackReports -numPaths 50 -prefix mcs4 -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -reportOnly -pathReports -drvReports -slackReports -numPaths 50 -prefix mcs4 -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -reportOnly -pathReports -slackReports -numPaths 50 -prefix mcs4 -outDir timingReports_hold
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -reportOnly -pathReports -slackReports -numPaths 50 -prefix mcs4 -outDir timingReports_hold
report_timing -help
timeDesign -hold
timeDesign -hold -preCTS
timeDesign -setup -preCTS
setOptMode -fixFanoutLoad true
setOptMode -addInstancePrefix postCTSdrv
optDesign -postCTS -drv
timeDesign -postCTS -prefix postCTS_setup_DRVfix
timeDesign -postCTS -prefix postCTS_hold_DRVfix -hold
setOptMode -addInstancePrefix postCTSsetup
optDesign -postCTS
timeDesign -postCTS -prefix postCTS_setup_Setupfix
timeDesign -postCTS -prefix postCTS_hold_Setupfix -hold
setOptMode -addInstancePrefix postCTShold
optDesign -postCTS -hold
timeDesign -postCTS -prefix postCTS_setup_Holdfix
timeDesign -postCTS -prefix postCTS_hold_Holdfix -hold
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
timeDesign -postRoute -prefix postRoute_setup
timeDesign -postRoute -prefix postRoute_hold -hold
zoomBox -74.59900 6.98150 177.73200 110.76650
zoomBox -62.49150 17.36000 151.99050 105.57750
zoomBox -52.20000 26.12350 130.11000 101.10850
zoomBox -42.61350 32.27350 112.35050 96.01100
zoomBox -27.56450 42.04800 84.39750 88.09850
zoomBox -16.69250 49.11000 64.20150 82.38200
zoomBox -12.44650 51.86800 56.31400 80.14950
zoomBox -3.16200 57.89850 39.06700 75.26750
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report mcs4.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
