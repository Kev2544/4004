# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# File: 4004_syn_genus.tcl
#### Template Script for RTL->Gate-Level Flow (generated from GENUS 20.11-s111_1) 
## The Genus Simple Template was adapted to the 4004 design.

if {[file exists /proc/cpuinfo]} {
  sh grep "model name" /proc/cpuinfo
  sh grep "cpu MHz"    /proc/cpuinfo
}

puts "Hostname : [info hostname]"

##############################################################################
## Preset global variables and attributes
##############################################################################


set DESIGN i4004
set Timing_Libs_Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/
set LEF_Libs_Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/ 

set Liberty_List {slow_vdd1v0_basicCells.lib}
set LEF_List {gsclib045_tech.lef gsclib045_macro.lef gsclib045_multibitsDFF.lef}

set GEN_EFF medium
set MAP_OPT_EFF high
set DATE [clock format [clock seconds] -format "%b%d-%T"] 
set _OUTPUTS_PATH outputs_${DATE}
set _REPORTS_PATH reports_${DATE}
set _LOG_PATH logs_${DATE}


# Variables used by Cadence training
set RTL_FILE_LIST {mcs4.f}
set QRC_TECH_FILE {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/qrc/qx/gpdk045.tch}

##set MODUS_WORKDIR <MODUS work directory>

set_db init_lib_search_path "$Timing_Libs_Path $LEF_Libs_Path"
set_db / .script_search_path {../syn} 
set_db / .init_hdl_search_path {../rtl/verilog} 

##Uncomment and specify machine names to enable super-threading.
##set_db / .super_thread_servers {<machine names>} 
##For design size of 1.5M - 5M gates, use 8 to 16 CPUs. For designs > 5M gates, use 16 to 32 CPUs
##set_db / .max_cpus_per_server 8

##Default undriven/unconnected setting is 'none'.  
##set_db / .hdl_unconnected_value 0 | 1 | x | none

set_db / .information_level 11 

set_db hdl_track_filename_row_col true 

set_db lp_power_unit mW 


###############################################################
## Library setup
###############################################################

# PVT SLOW: 1; 0.9 V; 125 oC	
#	/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib

# Reading Timing Libraries (Liberty format, .lib)
read_libs $Liberty_List

puts "Liberty libraries have been read, check warnings"
# suspend > resume > or stop_suspend

# Reading LEF Libraries
read_physical -lef $LEF_List

puts "Abstract Physical libraries have been read, check warnings"


## Provide either cap_table_file or the qrc_tech_file
#	set_db / .cap_table_file <file> 
#	read_qrc <qrcTechFile name>
read_qrc $QRC_TECH_FILE

puts "Parasitics library has been read, check warnings"


# Attribute for low power design
# set_db / .lp_insert_clock_gating true 

####################################################################
## Load Design
####################################################################
#read_hdl -v2001 -f $RTL_FILE_LIST

read_hdl -language v2001 -f ../rtl/verilog/mcs4.f

#puts "The design has been read, check messages"
#suspend
#
elaborate $DESIGN
#
#puts "The design has been elaborated, check messages"
#suspend
#
#puts "Runtime & Memory after 'read_hdl'"
#time_info Elaboration
#
##check_design -unresolved
#check_design
#
#puts "The check_design command has been launched, check results"
#suspend
#
#####################################################################
### Constraints Setup
#####################################################################
#read_sdc {../Genus_inputs/Adders_constraints_sdc.tcl}
##read_sdc {../input_genus/Adders_Genus_Constraints.sdc}
###read_sdc {../input_genus/Adders_WC.sdc}
#
#puts "The constraint file has been read, check messages"
#suspend
#
## To print the failed constraints 
#puts "$::dc::sdc_failed_commands > failed.sdc"
#
#suspend
#
## Timing Lint
#check_timing_intent -verbose
#
#puts "The Timing Lint report has been generated, check results"
#suspend
#
#
#report clocks
#puts "The report clocks command has been executed, check clock specs"
#suspend
#
#puts "The number of exceptions is [llength [vfind "design:$DESIGN" -exception *]]"
#
#if {![file exists ${_OUTPUTS_PATH}]} {
#  file mkdir ${_OUTPUTS_PATH}
#  puts "Creating directory ${_OUTPUTS_PATH}"
#}
#
#if {![file exists ${_REPORTS_PATH}]} {
#  file mkdir ${_REPORTS_PATH}
#  puts "Creating directory ${_REPORTS_PATH}"
#}
#
#
#if {![file exists ${_LOG_PATH}]} {
#  file mkdir ${_LOG_PATH}
#  puts "Creating directory ${_LOG_PATH}"
#}
#
##### To turn off sequential merging on the design 
##### uncomment & use the following attributes.
###set_db / .optimize_merge_flops false 
###set_db / .optimize_merge_latches false 
##### For a particular instance use attribute 'optimize_merge_seqs' to turn off sequential merging. 
#
#####################################################################################################
### Synthesizing to generic 
#####################################################################################################
#set_db / .syn_generic_effort $GEN_EFF
#syn_generic
#puts "Runtime & Memory after 'syn_generic'"
#time_info GENERIC
#puts "The generic synthesis has been executed, check messages"
#suspend
#
#write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_generic.v
#puts "The generic netlist has been generated, check netlist"
#suspend
#
#report_dp > $_REPORTS_PATH/generic/${DESIGN}_datapath.rpt
#
#puts "The data path report command has been executed, check report"
#suspend
#
#write_snapshot -outdir $_REPORTS_PATH -tag generic
#puts "The generic snapshot report has been executed, check report"
#suspend
#
#
#report_summary -directory $_REPORTS_PATH
#puts "The summary report has been executed, check report"
#suspend
#
#####################################################################################################
### Synthesizing to gates
#####################################################################################################
#set_db / .syn_map_effort $MAP_OPT_EFF
#syn_map
#puts "Runtime & Memory after 'syn_map'"
#time_info MAPPED
#puts "The Mapped synthesis has been executed, check messages"
#suspend
#
#write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_mapped.v
#puts "The Mapped netlist has been generated, check netlist"
#suspend
#
#
#write_snapshot -outdir $_REPORTS_PATH -tag map
#puts "The Mapped snapshot report has been executed, check report"
#suspend
#
#
#report_summary -directory $_REPORTS_PATH
#puts "The mapped summary report has been executed, check report"
#suspend
#
#report_dp > $_REPORTS_PATH/map/${DESIGN}_datapath.rpt
#
#puts "The Mapped data-path report command has been executed, check report"
#suspend
#
#write_do_lec -revised_design fv_map -logfile ${_LOG_PATH}/rtl2intermediate.lec.log > ${_OUTPUTS_PATH}/rtl2intermediate.lec.do
#
### ungroup -threshold <value>
#
## suspend
########################################################################################################
### Optimize Netlist
########################################################################################################
#
### Uncomment to remove assigns & insert tiehilo cells during Incremental synthesis
###set_db / .remove_assigns true 
###set_remove_assign_options -buffer_or_inverter <libcell> -design <design|subdesign> 
###set_db / .use_tiehilo_for_const <none|duplicate|unique> 
#set_db / .syn_opt_effort $MAP_OPT_EFF
#syn_opt
#puts "The Optimized synthesis has been executed, check results"
#suspend
#
#
#write_snapshot -outdir $_REPORTS_PATH -tag syn_opt
#puts "The Optimized snapshot report has been executed, check report"
#suspend
#
#report_summary -directory $_REPORTS_PATH
#puts "The Optimized summary report has been executed, check report"
#suspend
#
#puts "Runtime & Memory after 'syn_opt'"
#time_info OPT
#
#
## write_snapshot -outdir $_REPORTS_PATH -tag final
## report_summary -directory $_REPORTS_PATH
#
#write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_m_opt.v
#puts "The Optimized netlist has been generated, check netlist"
#suspend
#
### write_script > ${_OUTPUTS_PATH}/${DESIGN}_m.script
#
#write_sdc > ${_OUTPUTS_PATH}/${DESIGN}_m.sdc
#puts "The output constrain file has been executed, check file"
#suspend
#
##################################
#### write_do_lec
##################################
#write_do_lec -golden_design fv_map -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile  ${_LOG_PATH}/intermediate2final.lec.log > ${_OUTPUTS_PATH}/intermediate2final.lec.do
###Uncomment if the RTL is to be compared with the final netlist..
#write_do_lec -revised_design ${_OUTPUTS_PATH}/${DESIGN}_m.v -logfile ${_LOG_PATH}/rtl2final.lec.log > ${_OUTPUTS_PATH}/rtl2final.lec.do
#
## suspend
#puts "Final Runtime & Memory."
#time_info FINAL
#puts "============================"
#puts "Synthesis Finished ........."
#puts "============================"
#
#file copy [get_db / .stdout_log] ${_LOG_PATH}/.
#
###quit
