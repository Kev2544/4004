# Cadence Genus(TM) Synthesis Solution, Version 20.11-s111_1, built Apr 26 2021 14:57:38

# Date: Sat May 10 20:48:50 2025
# Host: ip-10-16-10-154.rdius.us (x86_64 w/Linux 3.10.0-1160.119.1.el7.x86_64) (2cores*4cpus*1physical cpu*Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz 36608KB)
# OS:   Red Hat Enterprise Linux Server release 7.9 (Maipo)

source ../../syn/Script_syn_mcs4_genus.tcl
# entering suspend mode
start_gui
gui_raise
report_clocks
report_units
report_timing_summary
resume
# resuming normal operation
# entering suspend mode
resume
# resuming normal operation
# entering suspend mode
report_clocks -generated
report_clocks
report_qor
resume
# resuming normal operation
# entering suspend mode
resume
# resuming normal operation
set_db / .syn_map_effort $MAP_OPT_EFF
syn_map
time_info MAPPED
puts "The Mapped synthesis has been executed, check messages"
write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_mapped.v
set_db / .syn_map_effort $MAP_OPT_EFF
syn_map
time_info MAPPED
puts "The Mapped synthesis has been executed, check messages"
write_hdl  > ${_OUTPUTS_PATH}/${DESIGN}_mapped.v
history
set_db / .syn_opt_effort $MAP_OPT_EFF
syn_opt
report_timing_summary
report_qor
report_timing
report_timing -split_delay
man report_timing
report_timing_summary
exit
