###############################################################
#  Generated by:      Cadence Innovus 21.12-s106_1
#  OS:                Linux x86_64(Host ID ip-10-16-10-154.rdius.us)
#  Generated on:      Wed May 14 01:31:13 2025
#  Design:            mcs4
#  Command:           create_ccopt_clock_tree_spec -file mcs4_ccopt_CTS.spec
###############################################################
#-------------------------------------------------------------------------------
# Clock tree setup script - dialect: Innovus
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

if { [get_ccopt_clock_trees] != {} } {
  error {Cannot run clock tree spec: clock trees are already defined.}
}

namespace eval ::ccopt {}
namespace eval ::ccopt::ilm {}
set ::ccopt::ilm::ccoptSpecRestoreData {}
# Start by checking for unflattened ILMs.
# Will flatten if so and then check the db sync.
if { [catch {ccopt_check_and_flatten_ilms_no_restore}] } {
  return -code error
}
# cache the value of the restore command output by the ILM flattening code
set ::ccopt::ilm::ccoptSpecRestoreData $::ccopt::ilm::ccoptRestoreILMState

# The following pins are clock sources
set_ccopt_property cts_is_sdc_clock_root -pin sysclk true

# Clocks present at pin sysclk
#   20MHz_CLK (period 50.000ns) in timing_config ConstraintMode_WC([../../release/v0.0.1/mcs4_opt.CM_mcs4_slow.sdc])
#   20MHz_CLK (period 50.000ns) in timing_config ConstraintMode_BC([../../release/v0.0.1/mcs4_opt.CM_mcs4_fast.sdc])
create_ccopt_clock_tree -name 20MHz_CLK -source sysclk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -early -clock_tree 20MHz_CLK 0.250
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_WC -late -clock_tree 20MHz_CLK 1.250
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -early -clock_tree 20MHz_CLK 1.000
set_ccopt_property target_max_trans_sdc -delay_corner DelayCorner_BC -late -clock_tree 20MHz_CLK 5.000
# Clock tree offset inferred from set_clock_latency -source assertions:
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -rise -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -early -fall -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -rise -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_WC -late -fall -clock_tree 20MHz_CLK 1.250
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -rise -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -early -fall -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -rise -clock_tree 20MHz_CLK 5.000
set_ccopt_property source_latency -delay_corner DelayCorner_BC -late -fall -clock_tree 20MHz_CLK 5.000
# Clock period setting for source pin of 20MHz_CLK
set_ccopt_property clock_period -pin sysclk 50

##############################################################################
##
## Timing connectivity based skew groups: off
##
##############################################################################
set_ccopt_property timing_connectivity_info {}

# Skew group to balance non generated clock:20MHz_CLK in timing_config:ConstraintMode_WC (sdc ../../release/v0.0.1/mcs4_opt.CM_mcs4_slow.sdc)
create_ccopt_skew_group -name 20MHz_CLK/ConstraintMode_WC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group 20MHz_CLK/ConstraintMode_WC true
set_ccopt_property target_insertion_delay -skew_group 20MHz_CLK/ConstraintMode_WC 2.500
set_ccopt_property extracted_from_clock_name -skew_group 20MHz_CLK/ConstraintMode_WC 20MHz_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group 20MHz_CLK/ConstraintMode_WC ConstraintMode_WC
set_ccopt_property extracted_from_delay_corners -skew_group 20MHz_CLK/ConstraintMode_WC DelayCorner_WC

# Skew group to balance non generated clock:20MHz_CLK in timing_config:ConstraintMode_BC (sdc ../../release/v0.0.1/mcs4_opt.CM_mcs4_fast.sdc)
create_ccopt_skew_group -name 20MHz_CLK/ConstraintMode_BC -sources sysclk -auto_sinks
set_ccopt_property include_source_latency -skew_group 20MHz_CLK/ConstraintMode_BC true
set_ccopt_property extracted_from_clock_name -skew_group 20MHz_CLK/ConstraintMode_BC 20MHz_CLK
set_ccopt_property extracted_from_constraint_mode_name -skew_group 20MHz_CLK/ConstraintMode_BC ConstraintMode_BC
set_ccopt_property extracted_from_delay_corners -skew_group 20MHz_CLK/ConstraintMode_BC DelayCorner_BC


check_ccopt_clock_tree_convergence
# Restore the ILM status if possible
if { [get_ccopt_property auto_design_state_for_ilms] == 0 } {
  if {$::ccopt::ilm::ccoptSpecRestoreData != {} } {
    eval $::ccopt::ilm::ccoptSpecRestoreData
  }
}

