##############################################################################
## ITESO University
## Merged and Enhanced Innovus Script for mcs4 Design
## Description: This script combines floorplanning, placement, clock tree synthesis,
## timing optimization, and routing for the mcs4 design.
##############################################################################

# Set Design Name
set DESIGN_NAME mcs4

# Common Variables and Paths (Adjust as needed)
set PROCESS_MODE 45
set CORE_SITE "CoreSite"
set OUTPUT_DIR "outputs" 
set CLOCK_BUFFER_CELLS {CLKBUFX2 CLKBUFX3 CLKBUFX4 CLKBUFX6 CLKBUFX8 CLKBUFX12 CLKBUFX16 CLKBUFX20}
set CLOCK_INVERTER_CELLS {CLKINVX1 CLKINVX2 CLKINVX3 CLKINVX4 CLKINVX6 CLKINVX8 CLKINVX12 CLKINVX16 CLKINVX20}
set TARGET_MAX_TRANS 100ps
set POWER_NETS {VDD VSS}
set POWER_RING_LAYERS {top Metal1 bottom Metal1 left Metal2 right Metal2}
set POWER_STRIPE_LAYER Metal6
set GDS_MAP_FILE "/media/Ext/libs/IBM_PDK/bicmos8hp/v.20171220/lef/bicmos8hp_soce2gds.map"  ;# Replace with your map file
set GDS_LIB_NAME "DesignLib"
set GDS_MERGE_LIBS {
    "/media/Ext/libs/8HP_IP_CELL_AND_IO_Libs/BiCMOS8HP_Digital_Kit/ibm_cmos8hp/sc_1p2v_12t_rvt/v.20171220/gds2/BICMOS8HP_SC_1P2V_12T_RVT.gds"
    "/opt/libs/IBM_PDK/bicmos8hp/v.20160727/gds2/CMOS8HP_BASE_WB_IO_7LM.gds"
}  

# Floorplan Parameters (Calculated)
# Floorplan Parameters (Calculated)
set TOTAL_CELL_AREA 8002.458  ;# Replace with your actual Total Cell Area from Genus
set TARGET_UTILIZATION 0.70  ;# Target core utilization (e.g., 70%)
set ASPECT_RATIO 1.2        ;# Aspect ratio (W/H)
set CORE_MARGIN 4.0         ;# Margin from core edge to chip edge (adjust as needed)

# Calculate estimated Core Area
set ESTIMATED_CORE_AREA [expr {$TOTAL_CELL_AREA / $TARGET_UTILIZATION}]

# Calculate Row Density (This is an approximation, Innovus will refine it)
# Row density = (std cell area + block/macro area) / core area
# Assuming for simplicity that Total Cell Area is primarily std cell area and there are no significant blocks/macros
set ESTIMATED_ROW_DENSITY [expr {$TOTAL_CELL_AREA / $ESTIMATED_CORE_AREA}]

# Calculate Core Area
set CORE_AREA [expr {$TOTAL_CELL_AREA / $TARGET_UTILIZATION}]

# Calculate Core Height and Width
set CORE_HEIGHT_UNFORMATTED [expr {sqrt($CORE_AREA / $ASPECT_RATIO)}]
set CORE_WIDTH_UNFORMATTED [expr {$CORE_HEIGHT_UNFORMATTED * $ASPECT_RATIO}]

# Format the output to 2 decimal places (for display purposes)
set CORE_HEIGHT [format "%.2f" $CORE_HEIGHT_UNFORMATTED]
set CORE_WIDTH [format "%.2f" $CORE_WIDTH_UNFORMATTED]

# Verification - Printing the calculated values
puts "  - Total Cell Area: ${TOTAL_CELL_AREA}"
puts "  - Target Utilization: ${TARGET_UTILIZATION}"
puts "  - Aspect Ratio (W/H): 1:${ASPECT_RATIO}"
puts "  - Calculated Core Area: [format \"%.2f\" $CORE_AREA]"  ;#Formatted output
puts "  - Calculated Core Width: ${CORE_WIDTH}"
puts "  - Calculated Core Height: ${CORE_HEIGHT}"

# Create Output Directories
file mkdir -p ${OUTPUT_DIR}/reports
file mkdir -p ${OUTPUT_DIR}/gds

# Design Setup
puts "\n--- Design Setup ---"
setDesignMode -process ${PROCESS_MODE}

# Floorplan Definition
puts "\n--- Floorplan ---"
#floorPlan -site ${CORE_SITE} -r [list [expr {1.0 / $ASPECT_RATIO}] ${ESTIMATED_ROW_DENSITY} ${CORE_MARGIN} ${CORE_MARGIN} ${CORE_MARGIN} ${CORE_MARGIN}] -adjustToSite

#floorPlan -site ${CORE_SITE} -r [list 170 170 ${CORE_MARGIN} ${CORE_MARGIN} ${CORE_MARGIN} ${CORE_MARGIN}] -adjustToSite

floorPlan -site ${CORE_SITE} -s 170.0 170.05 2.6 2.6 2.6 2.6 -adjustToSite

suspend

#floorPlan -site ${CORE_SITE} -r 0 0 ${CORE_WIDTH} ${CORE_HEIGHT} -adjustToSite
fit

puts "  - Total Cell Area: ${TOTAL_CELL_AREA}"
puts "  - Target Utilization: ${TARGET_UTILIZATION}"
puts "  - Aspect Ratio (W/H): 1:${ASPECT_RATIO}"
puts "  - Calculated Core Area: ${CORE_AREA}"
puts "  - Calculated Core Width: ${CORE_WIDTH}"
puts "  - Calculated Core Height: ${CORE_HEIGHT}"

# Power Grid Setup
puts "\n--- Power Grid ---"
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VDD -type tiehi -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type tielo -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose

# Power Rings
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addRing -nets ${POWER_NETS} -type core_rings -follow core -layer ${POWER_RING_LAYERS} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.3 bottom 0.3 left 0.3 right 0.3} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
fit

# Power Stripes
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets ${POWER_NETS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }

setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring block_ring } -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addStripe -nets ${POWER_NETS} -layer ${POWER_STRIPE_LAYER} -direction vertical -width 0.5 -spacing 0.3 -number_of_sets 1 -start_from left -start_offset 9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None


# Placement
puts "\n--- Placement ---"
setPlaceMode -congEffort high -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 1 -checkRoute 1 -honorSoftBlockage true -swapEEQ 0
setPlaceMode -fp false
place_design

suspend

# Placement Verification
checkPlace
checkPinAssignment -report_violating_pin

# Pre-CTS Timing Analysis
puts "\n--- Pre-CTS Timing Analysis ---"
setAnalysisMode -analysisType onChipVariation
timeDesign -preCTS -prefix preCTS_setup
timeDesign -preCTS -prefix preCTS_hold -hold

suspend

# Clock Tree Synthesis (CTS)
puts "\n--- Clock Tree Synthesis ---"
set_ccopt_property buffer_cells ${CLOCK_BUFFER_CELLS}
set_ccopt_property inverter_cells ${CLOCK_INVERTER_CELLS}
set_ccopt_property target_max_trans ${TARGET_MAX_TRANS}

create_ccopt_clock_tree_spec -file ${DESIGN_NAME}_ccopt_CTS.spec
source ${DESIGN_NAME}_ccopt_CTS.spec
ccopt_design

suspend
# Post-CTS Timing Analysis
puts "\n--- Post-CTS Timing Analysis ---"
timeDesign -postCTS -prefix postCTS_setup
timeDesign -postCTS -prefix postCTS_hold -hold

suspend

# CTS Reporting
report_ccopt_clock_trees -file ${OUTPUT_DIR}/reports/clock_trees.rpt
report_ccopt_skew_groups -file ${OUTPUT_DIR}/reports/skew_groups.rpt

# Timing Optimization
puts "\n--- Timing Optimization ---"
# Drive Strength Optimization
puts "\n  --  Driver Optimization  --"
setOptMode -fixFanoutLoad true
setOptMode -addInstancePrefix postCTSdrv
optDesign -postCTS -drv
timeDesign -postCTS -prefix postCTS_setup_DRVfix
timeDesign -postCTS -prefix postCTS_hold_DRVfix -hold


suspend

# Setup Time Optimization
puts "\n  --  Setup Optimization  --"
setOptMode -addInstancePrefix postCTSsetup
optDesign -postCTS
timeDesign -postCTS -prefix postCTS_setup_Setupfix
timeDesign -postCTS -prefix postCTS_hold_Setupfix -hold


suspend


# Hold Time Optimization
puts "\n  --  Hold Optimization  --"
setOptMode -addInstancePrefix postCTShold
optDesign -postCTS -hold
timeDesign -postCTS -prefix postCTS_setup_Holdfix
timeDesign -postCTS -prefix postCTS_hold_Holdfix -hold

suspend


# Routing
puts "\n--- Routing ---"
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail


suspend


# Post-Route Timing Analysis
puts "\n--- Post-Route Timing Analysis ---"
timeDesign -postRoute -prefix postRoute_setup
timeDesign -postRoute -prefix postRoute_hold -hold


suspend

# GDS Output (Adjust paths and libraries as needed)
puts "\n--- GDS Output ---"
set nameGDS "${DESIGN_NAME}_final.gds"
streamOut ${OUTPUT_DIR}/${nameGDS} -mapFile ${GDS_MAP_FILE} -libName ${GDS_LIB_NAME} -merge ${GDS_MERGE_LIBS} -outputMacros -units 1000 -mode ALL

puts "\n--- Script Completed ---"