##############################################################################
## ITESO University
## Kevyn Carrillo (kevyn.carrillo@iteso.mx)
## Roberto Vazquez (roberto.vazquezv@iteso.mx)
## Script: Script_syn_mcs4_genus_MMMC.tcl
## Description: Script for RTL to Gate-Level Synthesis Flow for mcs4 design using Genus.
## Adapted from the Genus Simple Template.
##############################################################################

# Check CPU Information (Optional)
if {[file exists /proc/cpuinfo]} {
    sh grep "model name" /proc/cpuinfo
    sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"

##############################################################################
## 1. Global Variables and Attributes Setup
##############################################################################

# Design Name
set DESIGN mcs4

# Library Paths
set Timing_Libs_Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/
set LEF_Libs_Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/

# LEF Library List
set LEF_List {gsclib045_tech.lef gsclib045_macro.lef gsclib045_multibitsDFF.lef}

# Synthesis Effort Levels
set GEN_EFF medium
set MAP_OPT_EFF high

# Output Paths
set DATE [clock format [clock seconds] -format "%b%d-%T"]
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}

# Technology Files
set RTL_FILE_LIST {mcs4.f}
set QRC_TECH_FILE {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/qrc/qx/gpdk045.tch}

# Database Search Paths
set_db init_lib_search_path "$Timing_Libs_Path $LEF_Libs_Path"
set_db / .script_search_path {../../syn}
set_db / .init_hdl_search_path {../../rtl/verilog}

# Other Database Settings
set_db / .information_level 11
set_db hdl_track_filename_row_col true
set_db lp_power_unit mW

##############################################################################
## 2. Library Setup
##############################################################################

# Reading in MMMC definition file
read_mmmc ../../syn/mmmc_mcs4.tcl
puts "MMMC definition file has been read."

# Reading LEF Libraries
read_physical -lef $LEF_List
puts "Abstract Physical libraries have been read."

# Provide either cap_table_file or the qrc_tech_file (QRC is used here)
# read_qrc $QRC_TECH_FILE
puts "Parasitics library has been read (if uncommented)."

# Attribute for low power design (commented out)
# set_db / .lp_insert_clock_gating true
set_db tns_opto true
##############################################################################
## 3. Design Loading and Elaboration
##############################################################################

# Read HDL Files
read_hdl -language v2001 -f ../../rtl/verilog/mcs4.f
puts "The design has been read."

# Elaborate the Design
elaborate $DESIGN
puts "The design has been elaborated."

# Initialize Design for MMMC
init_design
time_info init_design
puts "Design initialized for MMMC."

# Check Design
check_design
puts "Design check completed."

##############################################################################
## 4. Constraints Setup
##############################################################################


# Output Failed Constraints (if any)
puts "$::dc::sdc_failed_commands > failed.sdc"
puts "Failed SDC commands (if any) written to failed.sdc"

# Check for No-Applied Constraints
puts "CHECK FOR NO-APPLIED CONSTRAINTS"

# Timing Lint
check_timing_intent -verbose
puts "Timing Intent report generated."

# Report Clocks
report_clocks
puts "Clock specifications reported."

# Report Number of Exceptions
puts "The number of exceptions is [llength [vfind "design:$DESIGN" -exception *]]"

##############################################################################
## 5. Output Directories Creation
##############################################################################

# Create output directories if they don't exist
if {![file exists ${_OUTPUTS_PATH}]} {
    file mkdir ${_OUTPUTS_PATH}
    puts "Creating directory ${_OUTPUTS_PATH}"
}

if {![file exists ${_REPORTS_PATH}]} {
    file mkdir ${_REPORTS_PATH}
    puts "Creating directory ${_REPORTS_PATH}"
}

if {![file exists ${_LOG_PATH}]} {
    file mkdir ${_LOG_PATH}
    puts "Creating directory ${_LOG_PATH}"
}

##############################################################################
## 6. Generic Synthesis
##############################################################################

set_db / .syn_generic_effort $GEN_EFF
syn_generic
puts "Generic synthesis completed."
time_info GENERIC

# Write Generic Netlist
write_hdl > ${_OUTPUTS_PATH}/${DESIGN}_generic.v
puts "Generic netlist written to ${_OUTPUTS_PATH}/${DESIGN}_generic.v"
# report_dp > $_REPORTS_PATH/generic/${DESIGN}_datapath.rpt
puts "Generic datapath report (commented out)."

# Write Generic Snapshot
write_snapshot -outdir $_REPORTS_PATH -tag generic
puts "Generic snapshot written to $_REPORTS_PATH/generic"

# Report Summary
report_summary -directory $_REPORTS_PATH
puts "Summary report generated in $_REPORTS_PATH"
# suspend # Consider removing 'suspend' for automated flow

##############################################################################
## 7. Mapping Synthesis
##############################################################################

set_db / .syn_map_effort $MAP_OPT_EFF
syn_map
puts "Mapping synthesis completed."
time_info MAPPED

# Write Mapped Netlist
write_hdl > ${_OUTPUTS_PATH}/${DESIGN}_mapped.v
puts "Mapped netlist written to ${_OUTPUTS_PATH}/${DESIGN}_mapped.v"

# Write Mapped Snapshot
write_snapshot -outdir $_REPORTS_PATH -tag map
puts "Mapped snapshot written to $_REPORTS_PATH/map"

# Report Summary
report_summary -directory $_REPORTS_PATH
puts "Mapped summary report generated in $_REPORTS_PATH"

# report_dp > $_REPORTS_PATH/map/${DESIGN}_datapath.rpt
puts "Mapped datapath report (commented out)."

# Write DO Script for LEC (RTL vs Intermediate)
write_do_lec -revised_design fv_map -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do
puts "LEC DO script (RTL vs Intermediate) written to ${_OUTPUTS_PATH}/rtl2intermediate.lec.do"


##############################################################################
## 8. Netlist Optimization
##############################################################################

set_db / .syn_opt_effort $MAP_OPT_EFF
syn_opt
puts "Netlist optimization completed."
time_info OPT

# Write Optimized Snapshot
write_snapshot -outdir $_REPORTS_PATH -tag syn_opt
puts "Optimized snapshot written to $_REPORTS_PATH/syn_opt"

# Report Summary
report_summary -directory $_REPORTS_PATH
puts "Optimized summary report generated in $_REPORTS_PATH"

# Write Optimized Netlist
write_hdl > ${_OUTPUTS_PATH}/${DESIGN}_m_opt.v
puts "Optimized netlist written to ${_OUTPUTS_PATH}/${DESIGN}_hdl_opt.v"
write_design -basename ${_OUTPUTS_PATH}/${DESIGN}_opt

# Write Output Constraints (SDC)
write_sdc  -version 1.1 -view view_mcs4_slow $DESIGN > ${_OUTPUTS_PATH}/${DESIGN}_opt_slow.sdc
write_sdc  -version 1.1 -view view_mcs4_fast $DESIGN > ${_OUTPUTS_PATH}/${DESIGN}_opt_fast.sdc


##############################################################################
## 9. Logic Equivalence Check (LEC) Scripts Generation
##############################################################################

# Write DO Script for LEC (Intermediate vs Final)
write_do_lec -golden_design fv_map -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do
puts "LEC DO script (Intermediate vs Final) written to ${_OUTPUTS_PATH}/intermediate2final.lec.do"

# Write DO Script for LEC (RTL vs Final) - Uncomment if needed
# write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile ${_LOG_PATH}/rtl2final.lec.log > ${_OUTPUTS_PATH}/rtl2final.lec.do
puts "LEC DO script (RTL vs Final) written (if uncommented)."


##############################################################################
## 10. Finalization
##############################################################################

puts "Final Runtime & Memory."
time_info FINAL
puts "============================"
puts "Synthesis Finished ........."
puts "============================"

# Optional: Copy Log File (commented out)
 file copy [get_db / .stdout_log] ${_LOG_PATH}/.

# Optional: Quit Genus (commented out)
#quit
