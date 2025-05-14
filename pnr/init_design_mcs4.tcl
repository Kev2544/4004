# ITESO University
# Cuauhtemoc Aguilera 2025
# Power-grid script for bwco without pads
# PowerGrid_bwco.tcl
# You should import the design before running this script.


# Defining process mode 
setDesignMode -process 45

# Defining floorplan
floorPlan -site CoreSite -r 0.932134096484 0.699918 4.0 4.0 4.0 4.0 -adjustToSite
fit

# Defining global nets
#	clearGlobalNets
#	globalNetConnect VDD -type pgpin -pin VDD -inst * -module {} -verbose
#	globalNetConnect VSS -type pgpin -pin VSS -inst * -module {} -verbose
# The correct syntax for TIEHI Y TIELO

#	globalNetConnect VDD -type tiehi -inst * -verbose
#	globalNetConnect VSS -type tielo -inst * -verbose

# Innovus Global Nets
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose
# Check Syntax  for TIEHI & TIELO
globalNetConnect VDD -type tiehi -pin VDD -instanceBasename * -hierarchicalInstance {} -verbose
globalNetConnect VSS -type tielo -pin VSS -instanceBasename * -hierarchicalInstance {} -verbose

# VDD_IO and VSS_IO
# The following line produces an error
#globalNetConnect VDD_IO -type pgpin -pin VDD150 -inst * -module {} -verbose
#globalNetConnect VSS_IO -type pgpin -pin VSS -inst * -module {} -verbose


# Creating Power Rins
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.3 bottom 0.3 left 0.3 right 0.3} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
fit

# Adding horizontal stripes
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }

# Adding vertical stripes
#setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
#addStripe -nets {VDD VSS} -layer Metal2 -direction vertical -width 0.2 -spacing 0.2 -number_of_sets 2 -start_from left -start_offset 5.5 -stop_offset 5.5 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None

# Adding vertical stripes from class exercise
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal6 -direction vertical -width 0.5 -spacing 0.3 -number_of_sets 1 -start_from left -start_offset 9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None

