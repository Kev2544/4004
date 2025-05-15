#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May 15 01:52:01 2025                
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
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_verilog ../../release/v0.0.4/mcs4_opt.v
set init_mmmc_file ../../release/v0.0.4/WC_BC_GPDK045_mcs4_Analysis.view
set init_top_cell mcs4
set init_pwr_net VDD
init_design
setDesignMode -process 45
floorPlan -site CoreSite -s 170.0 170.05 5.6 5.6 5.6 5.6 -adjustToSite
zoomBox -35.02650 -11.00050 125.03050 130.62800
zoomBox -89.74200 -20.78250 131.79050 175.24350
zoomBox -124.53700 -27.00350 136.08950 203.61550
fit
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VDD -type tiehi -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type tielo -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.3 bottom 0.3 left 0.3 right 0.3} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
fit
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring block_ring } -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addStripe -nets {VDD VSS} -layer Metal6 -direction vertical -width 0.5 -spacing 0.3 -number_of_sets 1 -start_from left -start_offset 9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setPlaceMode -congEffort high -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 1 -checkRoute 1 -honorSoftBlockage true -swapEEQ 0
setPlaceMode -fp false
place_design
checkPlace
checkPinAssignment -report_violating_pin
setAnalysisMode -analysisType onChipVariation
timeDesign -preCTS -prefix preCTS_setup
timeDesign -preCTS -prefix preCTS_hold -hold
set_ccopt_property buffer_cells {CLKBUFX2 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX20}
set_ccopt_property inverter_cells {CLKINVX1 CLKINVX2 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 CLKINVX12 CLKINVX16 CLKINVX20}
set_ccopt_property target_max_trans 100ps
create_ccopt_clock_tree_spec -file mcs4_ccopt_CTS.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin sysclk true
create_ccopt_clock_tree -name My_CLK -source sysclk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -early -clock_tree My_CLK 2.000
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -late -clock_tree My_CLK 2.750
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -early -clock_tree My_CLK 2.400
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -late -clock_tree My_CLK 3.300
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -rise -clock_tree My_CLK 1.000
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -fall -clock_tree My_CLK 0.750
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -rise -clock_tree My_CLK 1.000
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -fall -clock_tree My_CLK 0.750
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -rise -clock_tree My_CLK 1.200
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -fall -clock_tree My_CLK 0.900
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -rise -clock_tree My_CLK 1.200
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -fall -clock_tree My_CLK 0.900
set_ccopt_property clock_period -pin sysclk 50
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name My_CLK/ConstraintMode_WC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group My_CLK/ConstraintMode_WC true
set_ccopt_property target_insertion_delay -skew_group My_CLK/ConstraintMode_WC 3.000
set_ccopt_property extracted_from_clock_name -skew_group My_CLK/ConstraintMode_WC My_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group My_CLK/ConstraintMode_WC ConstraintMode_WC
set_ccopt_property extracted_from_delay_corners -skew_group My_CLK/ConstraintMode_WC DelayCorner_WC
create_ccopt_skew_group -name My_CLK/ConstraintMode_BC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group My_CLK/ConstraintMode_BC true
set_ccopt_property extracted_from_clock_name -skew_group My_CLK/ConstraintMode_BC My_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group My_CLK/ConstraintMode_BC ConstraintMode_BC
set_ccopt_property extracted_from_delay_corners -skew_group My_CLK/ConstraintMode_BC DelayCorner_BC
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design
timeDesign -postCTS -prefix postCTS_setup
timeDesign -postCTS -prefix postCTS_hold -hold
report_ccopt_clock_trees -file outputs/reports/clock_trees.rpt
report_ccopt_skew_groups -file outputs/reports/skew_groups.rpt
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
zoomBox 44.12100 177.14700 68.01600 159.37100
selectWire 48.0600 174.0950 51.1400 174.1750 3 FE_PHN1321_ram_0_ram1_ram_array_6_1
deselectAll
selectInst postCTSholdFE_PHC1054_ram_0_ram3_ram_array_10_1
deselectAll
selectInst postCTSholdFE_PHC1054_ram_0_ram3_ram_array_10_1
fit
zoomBox 38.00150 24.45150 75.01000 -2.94050
deselectAll
fit
zoomBox 142.90700 152.08600 178.74950 118.28350
fit
zoomBox 151.64900 176.56400 188.36600 156.16600
zoomBox 169.45550 176.47450 174.73400 171.79250
selectInst postCTSholdFE_PHC503_ram_0_ram3_ram_array_9_0
fit
zoomBox 25.76250 43.10100 87.54050 -3.52350
zoomBox 43.46150 26.46900 64.72850 8.40550
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
fit
zoomBox -151.70200 -9.06000 332.90200 190.26000
timeDesign -postRoute -prefix postRoute_setup
timeDesign -postRoute -prefix postRoute_hold -hold
streamOut outputs/mcs4_final.gds -mapFile /media/Ext/libs/IBM_PDK/bicmos8hp/v.20171220/lef/bicmos8hp_soce2gds.map -libName DesignLib -merge {
    "/media/Ext/libs/8HP_IP_CELL_AND_IO_Libs/BiCMOS8HP_Digital_Kit/ibm_cmos8hp/sc_1p2v_12t_rvt/v.20171220/gds2/BICMOS8HP_SC_1P2V_12T_RVT.gds"
    "/opt/libs/IBM_PDK/bicmos8hp/v.20160727/gds2/CMOS8HP_BASE_WB_IO_7LM.gds"
} -outputMacros -units 1000 -mode ALL
zoomBox 30.71650 167.23900 55.48600 138.68150
fit
zoomBox -47.37950 133.72750 13.52400 61.45950
zoomBox -3.66800 93.26150 2.67100 87.13350
zoomBox -0.38650 90.96800 0.22250 90.56500
selectObject IO_Pin {io_pad[5]}
zoomBox -0.15300 90.82600 0.15600 90.65300
zoomBox -0.30500 90.61700 0.38050 90.89900
zoomBox -0.34900 90.60100 0.45750 90.93250
zoomBox -0.40050 90.58150 0.54850 90.97200
fit
zoomBox 80.83800 2.88750 98.90500 -6.14600
zoomBox 87.25000 0.66850 90.48550 -0.67850
deselectAll
selectObject IO_Pin {p_out[5]}
deselectAll
fit
zoomBox 79.96400 -0.31800 98.61350 -9.06000
fit
zoomBox -121.76050 1.29950 290.15300 170.72150
zoomBox -227.90250 -37.29750 442.82950 238.57800
zoomBox 78.62550 4.24500 98.79150 -11.48450
zoomBox 84.05150 0.40450 85.17850 -0.30850
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
zoomBox 85.68150 -0.34400 87.72150 0.49500
panPage 1 0
panPage 1 0
panPage 1 0
zoomBox 87.14300 -0.43450 89.96700 0.72700
panPage 1 0
zoomBox 87.75200 -0.49200 91.07450 0.87450
zoomBox 87.14250 -0.63950 91.74150 1.25200
panPage 1 0
zoomBox 87.67900 -0.84500 94.04550 1.77350
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
zoomBox 93.41100 -1.30950 103.77800 2.95450
zoomBox -10.20400 -26.49700 217.18200 67.02800
zoomBox -29.36250 -31.15400 238.15050 78.87550
zoomBox -51.90250 -36.63300 262.81900 92.81350
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
zoomBox 178.22450 101.36750 191.09350 73.54800
zoomBox 155.83700 75.00000 213.32850 98.64650
zoomBox 163.46350 77.10600 205.00150 94.19100
zoomBox 166.19050 77.85500 201.49850 92.37750
zoomBox 176.69750 80.67900 188.01650 85.33450
zoomBox 178.01300 80.97300 186.19200 84.33700
zoomBox 180.34700 81.50700 182.97050 82.58600
zoomBox 180.63850 81.57200 182.53400 82.35150
panPage 0 1
zoomBox 169.34300 79.22200 199.38300 91.57750
zoomBox 154.21400 75.73400 221.91700 103.58050
panPage 0 1
zoomBox 149.41500 82.98150 229.06550 115.74200
zoomBox 181.21750 98.26000 182.51100 96.48800
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
zoomBox 181.22550 93.11400 181.39150 92.92750
zoomBox 169.12050 88.05800 200.20550 100.84350
zoomBox 166.97950 87.18400 203.55000 102.22550
zoomBox 164.46100 86.15550 207.48500 103.85150
zoomBox 149.08500 79.87750 231.50700 113.77800
zoomBox -10.96700 14.52550 481.56900 217.10800
zoomBox -131.74350 -34.79000 670.26950 295.08200
zoomBox -186.97800 -57.34350 756.56750 330.74150
zoomBox -251.95950 -83.87650 858.09450 372.69400
zoomBox -199.79450 -62.75000 743.75150 325.33500
zoomBox -159.62450 -52.19700 642.39000 277.67550
zoomBox -125.48050 -43.22700 556.23300 237.16500
zoomBox 172.12850 195.35200 200.00400 137.55200
zoomBox 168.87000 184.62000 186.95350 168.48000
zoomBox 174.50200 182.42550 181.41550 176.21950
selectWire 1.8500 178.1500 179.3500 178.9500 1 VSS
fit
deselectAll
zoomBox -10.08000 14.25250 12.64950 -11.68250
zoomBox -7.53100 2.15700 10.66900 -2.50650
fit
zoomBox -207.49700 -18.98500 362.62500 215.50900
zoomBox -151.70200 -9.06050 332.90200 190.25950
zoomBox -104.27600 -0.62450 307.63750 168.79750
zoomBox 82.48450 4.08150 93.63050 -3.10150
optDesign -postRoute -hold
fit
zoomBox 81.12950 25.61700 115.22350 3.76200
zoomBox 98.16050 9.76900 101.00400 7.08500
selectWire 99.4600 7.0850 99.5400 8.1150 2 FE_PHN809_i4004_sp_board_dram_array_0_2
deselectAll
selectWire 96.0600 8.0350 132.3400 8.1150 3 FE_PHN373_i4004_sp_board_dram_array_0_2
zoomBox 94.85050 6.92200 103.88400 10.63750
zoomBox -262.92300 -31.55650 355.13050 222.65200
zoomBox 82.33950 -0.70950 97.94900 -9.25750
deselectAll
fit
zoomBox 155.43750 94.67950 185.74350 66.12200
zoomBox 174.70250 82.32150 177.75050 78.81400
selectWire 176.2600 56.8650 176.3400 97.7950 2 {i4004_ip_board_dram_array[3][0]}
deselectAll
verifyConnectivity -type all -error 1000 -warning 50
zoomBox 171.53800 78.45450 181.57050 82.58100
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
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
violationBrowser -all -no_display_false -displayByLayer
zoomBox 84.46 54.285 85.52 55.345
zoomBox 83.89600 54.36600 86.08650 55.26700
zoomBox 84.06100 54.43500 85.92350 55.20100
zoomBox 84.20150 54.49350 85.78550 55.14500
zoomBox 84.32100 54.54300 85.66750 55.09700
zoomBox 84.42200 54.58550 85.56700 55.05650
zoomBox 76.36 5.635 77.44 6.715
selectWire 76.4600 4.8050 76.5400 8.4950 2 {i4004_sp_board_dram_array[1][2]}
zoomBox 75.96800 5.78100 77.86550 6.56150
setLayerPreference pinObj -isVisible 1
zoomBox 75.76700 5.70350 78.00000 6.62200
panPage 0 1
panPage 0 -1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 76.8600 6.1350 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectObject Net FE_PHN407_i4004_sp_board_dram_array_2_1
selectObject Pin {i4004_sp_board_dram_array_reg[2][1]/SI}
deselectObject Pin {i4004_sp_board_dram_array_reg[2][1]/SI}
selectObject Net FE_PHN407_i4004_sp_board_dram_array_2_1
deselectObject Net FE_PHN407_i4004_sp_board_dram_array_2_1
selectObject Pin g32839__6161/A0
deselectObject Pin g32839__6161/A0
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
selectObject Pin g32839__6161/A0
zoomBox 75.50800 5.62500 78.13500 6.70550
zoomBox 75.20400 5.53250 78.29550 6.80400
zoomBox 74.84750 5.42400 78.48450 6.92000
zoomBox 73.35400 4.96850 79.27800 7.40500
zoomBox 73.90100 5.16500 78.93650 7.23600
zoomBox 74.76150 5.45950 78.40000 6.95600
zoomBox 75.09750 5.57400 78.19050 6.84600
zoomBox 75.62600 5.75400 77.86050 6.67300
zoomBox 76.00800 5.88400 77.62200 6.54800
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 75.65000 5.78100 77.88550 6.70050
zoomBox 75.42300 5.71600 78.05300 6.79750
zoomBox 75.15600 5.63900 78.25000 6.91150
zoomBox 74.84150 5.54800 78.48150 7.04500
zoomBox 74.47150 5.44050 78.75400 7.20200
zoomBox 74.03550 5.31450 79.07450 7.38700
zoomBox 73.52300 5.16550 79.45150 7.60400
zoomBox 72.92000 4.99050 79.89550 7.85950
zoomBox 72.21050 4.78450 80.41750 8.16000
zoomBox 70.39400 4.25700 81.75400 8.92950
zoomBox 71.38550 4.53750 81.04250 8.50950
zoomBox 74.88550 5.52800 78.52850 7.02650
zoomBox 75.89850 5.81450 77.80050 6.59700
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
setLayerPreference pinObj -isSelectable 1
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
selectObject Net FE_PHN407_i4004_sp_board_dram_array_2_1
gui_select -rect {76.99400 6.27300 76.93700 6.24600}
deselectAll
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 1
deselectAll
selectWire 76.8600 6.1350 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
zoomBox 75.72050 5.75250 77.95850 6.67300
zoomBox 75.51150 5.67950 78.14450 6.76250
zoomBox 75.26550 5.59350 78.36300 6.86750
zoomBox 74.97650 5.49200 78.62050 6.99100
zoomBox 74.63550 5.37300 78.92350 7.13650
zoomBox 73.76250 5.06750 79.69850 7.50900
zoomBox 73.20700 4.87350 80.19100 7.74600
zoomBox 72.55400 4.64500 80.77050 8.02450
zoomBox 73.20700 4.87350 80.19100 7.74600
zoomBox 73.76200 5.06750 79.69850 7.50900
zoomBox 74.23450 5.23200 79.28050 7.30750
zoomBox 74.63550 5.37250 78.92550 7.13700
zoomBox 74.98000 5.49250 78.62700 6.99250
zoomBox 75.53000 5.68150 78.16550 6.76550
zoomBox 75.74850 5.75600 77.98900 6.67750
zoomBox 76.09300 5.87300 77.71200 6.53900
deselectAll
selectWire 76.8600 6.1350 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 76.8600 6.1350 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deleteSelectedFromFPlan
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 76.8600 6.1350 76.9400 6.2150 2 1 6
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 76.8600 4.0450 76.9400 7.9250 2 FE_PHN423_i4004_sp_board_dram_array_1_1
deleteSelectedFromFPlan
undo
violationBrowser -all -no_display_false -displayByLayer
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
setEditMode -type regular
setEditMode -type patch
setEditMode -type regular
uiSetTool select
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_vertical Metal2 -width_horizontal 0.080 -width_vertical 0.080 -shape None
setEditMode -width_horizontal 0.060
setEditMode -spacing_horizontal 0.060
setEditMode -spacing_vertical 0.070
setEditMode -spacing 0.060
editAddRoute 77.31 6.1825
editAddRoute 77.309 6.177
zoomBox 75.89000 5.82600 77.79600 6.61000
uiSetTool select
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -layer_horizontal Metal2
uiSetTool addWire
setEditMode -width_horizontal 0.080
setEditMode -spacing_horizontal 0.070
editAddRoute 77.3115 6.187
editAddRoute 77.13 6.178
editAddRoute 77.1095 5.9545
setEditMode -layer_horizontal Metal1
setEditMode -width_horizontal 0.060
zoomBox 75.71600 5.79050 77.95900 6.71300
zoomBox 75.51200 5.74850 78.15100 6.83400
zoomBox 75.25200 5.70950 78.35700 6.98650
zoomBox 75.49400 5.75000 78.13350 6.83550
zoomBox 75.70000 5.78400 77.94350 6.70700
panPage 0 -1
uiSetTool select
deselectAll
selectWire 49.2600 5.7550 78.5400 5.8350 5 FE_PHN929_p_out_4
deselectAll
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
setEditMode -layer_horizontal Metal3
setEditMode -width_horizontal 0.080
editAddRoute 77.315 6.1725
editAddRoute 77.0355 6.1655
editAddRoute 77.0705 5.9455
setEditMode -layer_horizontal Metal1
setEditMode -width_horizontal 0.060
editAddRoute 76.8345 5.9885
editAddRoute 77.312 6.1775
setEditMode -layer_horizontal Metal3
setEditMode -width_horizontal 0.080
editAddRoute 77.057 6.16
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
editAddRoute 77.0905 6.5995
setEditMode -layer_horizontal Metal1
setEditMode -width_horizontal 0.060
zoomBox 75.90750 6.13450 77.81500 6.91900
zoomBox 76.07950 6.19700 77.70100 6.86400
zoomBox 76.22450 6.25000 77.60300 6.81700
editAddRoute 77.108 6.6205
editAddRoute 77.109 6.6195
editCommitRoute 77.109 6.6195
violationBrowser -all -no_display_false -displayByLayer
zoomBox 76.36100 6.30100 77.53300 6.78300
zoomBox 76.47750 6.34500 77.47450 6.75500
editAddRoute 77.117 6.566
uiSetTool select
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
editSelect -object_type {Wire Via}
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 76.57550 6.38050 77.42300 6.72900
zoomBox 76.65900 6.41200 77.38000 6.70850
zoomBox 76.73050 6.43850 77.34350 6.69050
setLayerPreference Metal2 -isVisible 0
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 77.0700 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 76.66750 6.41600 77.38850 6.71250
zoomBox 76.59350 6.38900 77.44150 6.73800
zoomBox 76.40200 6.32050 77.57800 6.80400
undo
violationBrowser -all -no_display_false -displayByLayer
zoomBox 76.25150 6.29300 77.63500 6.86200
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
setLayerPreference Metal2 -isVisible 1
uiSetTool addWire
editAddRoute 77.309 6.1865
setEditMode -layer_horizontal Metal3
setEditMode -width_horizontal 0.080
panPage 0 1
panPage 0 1
panPage 0 1
zoomBox 76.10850 6.43200 77.73600 7.10150
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
editAddRoute 77.058 6.1755
panPage 0 1
panPage 0 1
panPage 0 1
editAddRoute 77.0885 6.6015
editCommitRoute 77.0885 6.6015
panPage 0 -1
panPage 0 -1
panPage 0 1
setEditMode -layer_horizontal Metal1
setEditMode -width_horizontal 0.060
editAddRoute 77.111 6.566
editAddRoute 76.965 6.556
editAddRoute 76.999 6.563
editAddRoute 77.11 6.5675
setLayerPreference layoutObj -isVisible 1
setLayerPreference layoutObj -isVisible 0
editAddRoute 77.11 6.563
editAddRoute 76.967 6.557
uiSetTool select
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
zoomBox 75.95400 6.18350 77.86850 6.97100
zoomBox 76.10850 6.23100 77.73600 6.90050
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
uiSetTool addWire
editAddRoute 76.972 6.5685
editAddRoute 76.97 6.5685
zoomBox 76.34850 6.31950 77.52500 6.80350
zoomBox 76.44200 6.35400 77.44250 6.76550
editAddRoute 76.972 6.559
editAddRoute 76.851 6.563
editAddRoute 77.125 6.5545
editAddRoute 76.853 6.562
editAddRoute 77.126 6.5505
editCommitRoute 77.126 6.5505
uiSetTool select
deselectAll
selectWire 76.8550 6.5250 77.0050 6.5850 1 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
editAddRoute 76.9825 6.5595
editAddRoute 77.1255 6.556
editAddRoute 77.1175 6.552
editCommitRoute 77.1175 6.552
editAddRoute 77.011 6.5605
editAddRoute 76.981 6.5575
editAddRoute 77.1265 6.5525
editAddRoute 77.1315 6.467
editCommitRoute 77.1315 6.467
violationBrowser -all -no_display_false -displayByLayer
zoomBox 76.54700 6.38800 77.39750 6.73800
zoomBox 76.63450 6.41550 77.35800 6.71300
zoomBox 76.77300 6.45800 77.29600 6.67300
zoomBox 76.82650 6.47400 77.27150 6.65700
zoomBox 76.91150 6.49900 77.23300 6.63100
zoomBox 76.94450 6.50850 77.21800 6.62100
panPage 0 1
panPage 0 -1
editAddRoute 77.153 6.585
uiSetTool select
deselectAll
selectWire 76.8550 6.5250 77.1300 6.5850 1 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 77.0600 6.1350 77.1400 6.6000 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 77.0650 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectMarker 77.0650 6.5250 77.1250 6.5850 1 1 6
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 76.86050 6.49000 77.24000 6.64600
zoomBox 76.74500 6.46450 77.27050 6.68050
zoomBox 76.67150 6.44800 77.29000 6.70250
zoomBox 76.58450 6.42900 77.31300 6.72850
zoomBox 76.48250 6.40650 77.33950 6.75900
panPage 1 0
zoomBox 76.62000 6.38000 77.62800 6.79450
zoomBox 76.31250 6.31150 77.70950 6.88600
zoomBox 76.16300 6.26450 77.80650 6.94050
zoomBox 75.78000 6.14350 78.05550 7.07950
zoomBox 77.06750 6.61950 77.17300 6.52800
panPage 0 -1
zoomBox 76.99200 6.49450 77.25350 6.60200
zoomBox 76.97200 6.48750 77.27950 6.61400
panPage -1 0
panPage 1 0
deselectAll
selectWire 77.0600 6.1350 77.1400 6.6000 2 FE_PHN407_i4004_sp_board_dram_array_2_1
setLayerPreference layoutObj -isVisible 1
setLayerPreference obsstdCell -isVisible 1
zoomBox 76.92850 6.47800 77.29100 6.62700
zoomBox 76.74650 6.43800 77.33750 6.68100
zoomBox 76.56500 6.39800 77.38350 6.73450
zoomBox 75.74600 6.21750 77.59250 6.97700
zoomBox 75.48600 6.16050 77.65850 7.05400
setLayerPreference obsstdCell -isVisible 0
zoomBox 75.74000 6.23650 77.58700 6.99600
zoomBox 75.95650 6.29700 77.52650 6.94250
panPage 0 -1
panPage 0 1
panPage 0 -1
zoomBox 76.13150 6.17550 77.46600 6.72450
zoomBox 76.28000 6.23700 77.41450 6.70350
zoomBox 76.40450 6.28400 77.36850 6.68050
panPage 0 1
zoomBox 76.52500 6.42750 77.34450 6.76450
panPage 0 -1
panPage 0 1
setLayerPreference obsstdCell -isVisible 1
zoomBox 76.39800 6.39100 77.36200 6.78750
zoomBox 76.24850 6.34800 77.38250 6.81450
zoomBox 76.07200 6.26200 77.64300 6.90800
zoomBox 75.95900 6.20900 77.80700 6.96900
zoomBox 76.12950 6.25850 77.70050 6.90450
zoomBox 76.27450 6.30000 77.61000 6.84950
zoomBox 76.83200 6.46100 77.26250 6.63800
zoomBox 76.98000 6.50350 77.17100 6.58200
zoomBox 76.95900 6.49750 77.18400 6.59000
zoomBox 76.90450 6.48200 77.21700 6.61050
zoomBox 76.83000 6.46000 77.26350 6.63850
zoomBox 76.77550 6.44250 77.28650 6.65250
zoomBox 76.70450 6.42800 77.30550 6.67500
panPage 0 -1
zoomBox 76.52900 6.31550 77.36100 6.65750
panPage 0 -1
panPage 0 -1
zoomBox 76.41750 6.08600 77.39600 6.48850
zoomBox 76.28600 6.05750 77.43750 6.53100
zoomBox 76.13150 6.02400 77.48600 6.58100
zoomBox 75.94950 5.98450 77.54300 6.64000
panPage 0 -1
panPage 0 -1
zoomBox 75.74600 5.55550 77.62100 6.32650
panPage 0 1
zoomBox 75.50700 5.74400 77.71300 6.65150
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 -1
zoomBox 75.21950 5.69950 77.81550 6.76700
panPage 0 1
panPage 0 -1
zoomBox 74.92450 5.64300 77.97900 6.89950
panPage 0 -1
panPage 0 1
undo
violationBrowser -all -no_display_false -displayByLayer
undo
violationBrowser -all -no_display_false -displayByLayer
undo
violationBrowser -all -no_display_false -displayByLayer
undo
violationBrowser -all -no_display_false -displayByLayer
undo
violationBrowser -all -no_display_false -displayByLayer
deleteSelectedFromFPlan
selectWire 77.2600 0.8150 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
setEditMode -layer_horizontal Metal3
setEditMode -width_horizontal 0.080
editAddRoute 77.3195 5.994
editAddRoute 76.7315 6.0085
editAddRoute 77.3175 6.0065
editAddRoute 76.7575 5.992
editAddRoute 77.323 5.99
editAddRoute 77.022 5.972
editAddRoute 74.9755 6.896
editAddRoute 77.3215 6.04
editAddRoute 77.055 5.9865
setEditMode -layer_horizontal Metal1
setEditMode -width_horizontal 0.060
editAddRoute 76.9685 5.9495
zoomBox 74.55350 5.57750 78.14800 7.05600
zoomBox 74.11750 5.50050 78.34650 7.24000
zoomBox 74.55650 5.56500 78.15100 7.04350
editAddRoute 76.863 5.9975
editAddRoute 76.8715 5.95
editAddRoute 77.0705 5.9715
panPage 0 -1
panPage 0 -1
panPage 0 1
editAddRoute 77.107 5.636
editAddRoute 76.8975 6.0075
editAddRoute 77.118 5.9905
editAddRoute 77.1225 5.7265
setEditMode -layer_horizontal Metal3
setEditMode -width_horizontal 0.080
editAddRoute 77.3515 5.811
editAddRoute 77.334 5.835
editCommitRoute 77.334 5.835
zoomBox 74.96850 5.23600 78.02450 6.49300
zoomBox 75.31900 5.33350 77.91700 6.40200
editAddRoute 77.3345 5.952
uiSetTool select
zoomBox 75.56400 5.46750 77.77200 6.37550
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
verifyConnectivity -type all -error 1000 -warning 50
violationBrowser -all -no_display_false -displayByLayer
zoomBox 75.29900 5.40250 77.89700 6.47100
zoomBox 75.56350 5.46700 77.77200 6.37550
zoomBox 74.98600 5.32600 78.04350 6.58350
zoomBox 73.08050 4.86250 78.93750 7.27150
zoomBox 72.37700 4.69150 79.26750 7.52550
violationBrowserClose
zoomBox 73.09000 4.87150 78.94700 7.28050
zoomBox 74.21100 5.15700 78.44300 6.89750
setEditMode -type special
setEditMode -type patch
setEditMode -type special
setEditMode -type regular
setEditMode -nets {}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
verifyConnectivity -type all -error 1000 -warning 50
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
deselectAll
selectMarker 76.8950 0.7900 139.1700 7.9850 -1 3 7
zoomBox 74.61750 5.32400 78.21450 6.80350
zoomBox 74.96300 5.46600 78.02050 6.72350
zoomBox 75.25700 5.57300 77.85600 6.64200
deselectAll
selectWire 77.2600 5.7550 77.3400 6.2150 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 76.8950 0.7900 139.1700 7.9850 -1 3 7
deselectAll
selectMarker 76.8600 6.1350 76.9400 6.2150 2 1 6
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
panPage 0 1
panPage 0 -1
deselectAll
selectMarker 76.8350 5.9300 76.9650 6.6800 1 3 21
violationBrowserUnHilite -tool Verify -type Connectivity -subtype {Antenna (DanglingWire)} -violation {  Metal1(1)  FE_PHN407_i4004_sp_board_dram_array_2_1    (76.925, 5.985) (76.925, 5.985)  0x7f90e18fe230}
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
zoomBox 75.51850 5.63250 77.72800 6.54150
zoomBox 76.22600 5.79450 77.38050 6.26950
zoomBox 76.75100 5.91450 77.12200 6.06700
zoomBox 76.81900 5.92900 77.08750 6.03950
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
setLayerPreference Metal2 -isVisible 0
zoomBox 76.77000 5.91550 77.14200 6.06850
panPage 0 1
zoomBox 76.73900 5.95300 77.17650 6.13300
zoomBox 76.70250 5.94300 77.21700 6.15450
zoomBox 76.18500 5.79950 77.79450 6.46150
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 1
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
panPage 0 1
panPage 0 -1
setLayerPreference Metal1 -isVisible 0
setLayerPreference Metal1 -isVisible 1
setLayerPreference Metal1 -isVisible 0
setLayerPreference Metal1 -isVisible 1
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
editChangeMask -to 0
redraw
deselectAll
selectMarker 76.8950 0.7900 139.1700 7.9850 -1 3 7
zoomBox 76.29300 5.82900 77.66100 6.39150
zoomBox 76.38500 5.85350 77.54800 6.33200
zoomBox 76.46250 5.87450 77.45150 6.28150
zoomBox 76.28400 5.82450 77.65400 6.38800
zoomBox 76.17100 5.79250 77.78300 6.45550
zoomBox 75.88100 5.71050 78.11300 6.62850
zoomBox 75.69700 5.65850 78.32300 6.73850
zoomBox 75.48000 5.59700 78.57000 6.86800
zoomBox 75.22500 5.52450 78.86050 7.02000
zoomBox 74.92450 5.43950 79.20250 7.19900
zoomBox 74.57150 5.33950 79.60450 7.40950
zoomBox 74.92450 5.43000 79.20250 7.18950
zoomBox 75.21950 5.52100 78.85600 7.01650
zoomBox 75.47050 5.59800 78.56150 6.86950
zoomBox 75.68350 5.66400 78.31100 6.74450
zoomBox 75.86550 5.71850 78.09900 6.63700
zoomBox 76.15350 5.79850 77.76700 6.46200
zoomBox 76.26600 5.83000 77.63750 6.39400
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
uiSetTool addWire
setLayerPreference Metal2/Wire -isVisible 1
redraw
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -type special
setEditMode -width_vertical 0.080
editAddRoute 76.2865 6.386
editAddRoute 77.008 5.9775
editAddRoute 76.8365 5.99
editAddRoute 76.9045 5.99
editAddRoute 76.835 5.986
editCommitRoute 76.835 5.986
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
violationBrowser -all -no_display_false -displayByLayer
setEditMode -width_vertical 0.080
editAddRoute 76.9975 6.04
uiSetTool select
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
setEditMode -nets FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
man route_fix_signoff_drc
route_fix_signoff_drc
violationBrowserClose
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
zoomBox 76.8 5.675 77.8 6.675
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectObject Pin postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1/Y
setEditMode -nets FE_PHN407_i4004_sp_board_dram_array_2_1
deselectAll
selectMarker 76.8950 0.7900 139.1700 7.9850 -1 3 7
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
deselectAll
selectMarker 76.8950 0.7900 139.1700 7.9850 -1 3 7
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
violationBrowser -all -no_display_false -displayByLayer
verifyConnectivity -type all -error 1000 -warning 50
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowser -all -no_display_false -filter_query Metal2(2) -displayByLayer
violationBrowserClose
verifyConnectivity -type all -error 1000 -warning 50
verifyConnectivity -type all -error 1000 -warning 50
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 76.8 5.675 77.8 6.675
zoomBox 76.8 5.675 77.8 6.675
zoomBox 76.8 5.675 77.8 6.675
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectVia 77.0350 5.7800 77.1650 6.0500 2 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -via_create_by Viacell -via_cell_name M2_M1_1x2_HV_S -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -status ROUTED
zoomBox 76.38850 5.72150 78.14550 6.44400
zoomBox 76.60150 5.76550 77.87200 6.28800
zoomBox 76.75600 5.79750 77.67400 6.17500
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
deselectAll
selectVia 77.0350 5.7800 77.1650 6.0500 2 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -via_create_by Viacell -via_cell_name M2_M1_1x2_HV_S -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -status ROUTED
deselectAll
selectVia 77.0350 5.7800 77.1650 6.0500 2 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -via_create_by Viacell -via_cell_name M2_M1_1x2_HV_S -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -status ROUTED
editSelect -object_type {Wire Via}
setEditMode -via_create_by Viacell -via_cell_name M5_M4_VH -nets sync_pad -status ROUTED
deselectAll
selectVia 77.0350 5.7800 77.1650 6.0500 2 FE_PHN407_i4004_sp_board_dram_array_2_1
deleteSelectedFromFPlan
panPage 0 -1
panPage 0 1
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 76.60700 5.73000 77.87750 6.25250
deselectAll
selectInst postCTSholdFE_PHC407_i4004_sp_board_dram_array_2_1
zoomBox 76.51200 5.68700 78.00650 6.30150
zoomBox 76.40000 5.63600 78.15850 6.35950
deselectAll
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
zoomBox 76.50400 5.68750 77.99950 6.30250
zoomBox 76.59300 5.73100 77.86450 6.25400
zoomBox 76.67100 5.76900 77.75200 6.21350
zoomBox 76.79350 5.82850 77.57450 6.14950
zoomBox 76.88150 5.87100 77.44700 6.10350
zoomBox 76.91600 5.88750 77.39700 6.08550
uiSetTool stretchWire
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
editResize -direction x -offset -0.005 -side high -keep_center_line auto
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -snap false
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
editResize -direction x -offset -0.015 -side high -keep_center_line auto
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
editResize -direction x -offset 0.005 -side high -keep_center_line auto
selectWire 76.8950 5.9550 77.1300 6.0150 1 FE_PHN407_i4004_sp_board_dram_array_2_1
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
zoomBox 76.88650 5.87250 77.45300 6.10550
uiSetTool stretchWire
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
editResize -direction x -offset -0.145 -side high -keep_center_line auto
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
uiSetTool stretchWire
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
editResize -direction x -offset 0.13 -side high -keep_center_line auto
setEditMode -status ROUTED -nets FE_PHN407_i4004_sp_board_dram_array_2_1 -layer_horizontal Metal1 -width_horizontal 0.060 -width_vertical 0.060 -shape None
zoomBox 76.86400 5.85850 77.53150 6.13300
zoomBox 76.83800 5.84200 77.62350 6.16500
zoomBox 76.80700 5.82250 77.73150 6.20300
zoomBox 76.77000 5.80000 77.85850 6.24750
panPage 0 -1
zoomBox 76.72700 5.63900 78.00750 6.16550
zoomBox 76.61600 5.57050 78.38850 6.29950
zoomBox 74.97050 4.56600 83.97950 8.27150
panPage 0 1
panPage 0 -1
