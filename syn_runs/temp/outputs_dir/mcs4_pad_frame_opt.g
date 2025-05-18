######################################################################

# Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu May 15 21:52:55 EDT 2025

# This file contains the Genus script for design:mcs4_pad_frame

######################################################################

set_db -quiet information_level 11
set_db -quiet init_lib_search_path {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/ /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lef}
set_db -quiet design_mode_process 60.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet db_units 2000
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet lp_power_unit mW
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 143 0.0 30.341479} {to_generic 18 163 17 51} {first_condense 6 172 8 63} {PBS_Generic_Opt-Post 31 174 32.291974 62.633453} {{PBS_Generic-Postgen HBO Optimizations} 0 174 0.0 62.633453} {PBS_TechMap-Start 0 181 0.0 64.633453} {{PBS_TechMap-Premap HBO Optimizations} 0 181 0.0 64.633453} {second_condense 9 191 11 80} {reify 15 206 37 118} {{PBS_Techmap-Global Mapping} 26 207 26.339005999999998 90.972459} {{PBS_TechMap-Datapath Postmap Operations} 33 240 32.73217300000002 123.70463200000002} {{PBS_TechMap-Postmap HBO Optimizations} 0 240 -0.020536000000006993 123.68409600000001} {{PBS_TechMap-Postmap Clock Gating} 0 240 0.0 123.68409600000001} {{PBS_TechMap-Postmap Cleanup} 1 241 1.9116949999999946 125.595791} {PBS_Techmap-Post_MBCI 0 241 0.0 125.595791} {incr_opt 16 267 16 172} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet tinfo_tstamp_file .rs_kevyn.carrillo@iteso.mx.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path ../../syn
set_db -quiet hdl_track_filename_row_col true
set_db -quiet use_area_from_lef true
set_db -quiet flow_metrics_snapshot_uuid 13b9451d-79b0-4638-a416-86a35afed336
set_db -quiet read_qrc_tech_file_rc_corner true
if {[vfind design:mcs4_pad_frame -mode view_mcs4_slow] eq ""} {
 create_mode -name view_mcs4_slow -design design:mcs4_pad_frame 
}
if {[vfind design:mcs4_pad_frame -mode view_mcs4_fast] eq ""} {
 create_mode -name view_mcs4_fast -design design:mcs4_pad_frame 
}
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet ple_mode global
set_db -quiet library_domain:TC_mcs4_slow .wireload_selection none
set_db -quiet operating_condition:LS_slow/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:LS_slow/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:LS_slow/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:LS_slow/giolib045/_nominal_ .tree_type balanced_tree
set_db -quiet library_domain:TC_mcs4_fast .wireload_selection none
set_db -quiet operating_condition:LS_fast/fast_vdd1v2/PVT_1P32V_0C .tree_type balanced_tree
set_db -quiet operating_condition:LS_fast/fast_vdd1v2/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:LS_fast/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:LS_fast/giolib045/_nominal_ .tree_type balanced_tree
::legacy::set_attr -quiet ui_respects_preserve 0 /
::legacy::set_attribute -quiet library_domain library_domain:TC_mcs4_slow design:mcs4_pad_frame
::legacy::set_attr -quiet ui_respects_preserve true /
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name My_CLK -mode mode:mcs4_pad_frame/view_mcs4_slow -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mcs4_pad_frame port:mcs4_pad_frame/sysclk
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .slew {2000.0 1500.0 2750.0 2500.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_network_early_latency {2000.0 1500.0 2000.0 1500.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_network_late_latency {2000.0 1500.0 2000.0 1500.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_source_late_latency {1000.0 750.0 1000.0 750.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_source_early_latency {1000.0 750.0 1000.0 750.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_setup_uncertainty {500.0 500.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_slow/My_CLK .clock_hold_uncertainty {250.0 250.0}
define_clock -name My_CLK -mode mode:mcs4_pad_frame/view_mcs4_fast -domain domain_1 -period 60000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mcs4_pad_frame port:mcs4_pad_frame/sysclk
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .slew {2400.0 1800.0 3300.0 3000.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_network_early_latency {2400.0 1800.0 2400.0 1800.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_network_late_latency {2400.0 1800.0 2400.0 1800.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_source_late_latency {1200.0 900.0 1200.0 900.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_source_early_latency {1200.0 900.0 1200.0 900.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_setup_uncertainty {600.0 600.0}
set_db -quiet clock:mcs4_pad_frame/view_mcs4_fast/My_CLK .clock_hold_uncertainty {300.0 300.0}
define_cost_group -design design:mcs4_pad_frame -name My_CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name create_clock_delay_domain_1_My_CLK_R_0 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_slow/create_clock_delay_domain_1_My_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -edge_fall -name create_clock_delay_domain_1_My_CLK_F_0 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_slow/create_clock_delay_domain_1_My_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY port:mcs4_pad_frame/poc_pad
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_1_1 port:mcs4_pad_frame/clear_pad
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_2_1 {port:mcs4_pad_frame/VDD port:mcs4_pad_frame/VDD}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_3_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_4_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_5_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY {port:mcs4_pad_frame/VDD port:mcs4_pad_frame/VDD}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_5_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_6_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_7_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_8_1 {{port:mcs4_pad_frame/p_out[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_9_1 {{port:mcs4_pad_frame/p_out[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_10_1 {{port:mcs4_pad_frame/p_out[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_11_1 {{port:mcs4_pad_frame/p_out[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_12_1 {{port:mcs4_pad_frame/p_out[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_13_1 {{port:mcs4_pad_frame/p_out[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_14_1 {{port:mcs4_pad_frame/p_out[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_15_1 {{port:mcs4_pad_frame/p_out[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_16_1 {{port:mcs4_pad_frame/p_out[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_17_1 {{port:mcs4_pad_frame/p_out[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_18_1 {{port:mcs4_pad_frame/io_pad[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_19_1 {{port:mcs4_pad_frame/io_pad[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_20_1 {{port:mcs4_pad_frame/io_pad[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_21_1 {{port:mcs4_pad_frame/io_pad[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_22_1 {{port:mcs4_pad_frame/io_pad[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_23_1 {{port:mcs4_pad_frame/io_pad[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_24_1 {{port:mcs4_pad_frame/io_pad[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_25_1 {{port:mcs4_pad_frame/io_pad[0]}}
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name create_clock_delay_domain_1_My_CLK_R_0_1 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_fast/create_clock_delay_domain_1_My_CLK_R_0_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -edge_fall -name create_clock_delay_domain_1_My_CLK_F_0_1 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_fast/create_clock_delay_domain_1_My_CLK_F_0_1 .clock_network_latency_included true
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_25_1 port:mcs4_pad_frame/poc_pad
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_26_1 port:mcs4_pad_frame/clear_pad
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_27_1 {port:mcs4_pad_frame/VDD port:mcs4_pad_frame/VDD}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_28_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_29_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_30_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_30_1 {port:mcs4_pad_frame/VDD port:mcs4_pad_frame/VDD}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_31_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_32_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_33_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_34_1 {{port:mcs4_pad_frame/p_out[9]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_35_1 {{port:mcs4_pad_frame/p_out[8]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_36_1 {{port:mcs4_pad_frame/p_out[7]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_37_1 {{port:mcs4_pad_frame/p_out[6]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_38_1 {{port:mcs4_pad_frame/p_out[5]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_39_1 {{port:mcs4_pad_frame/p_out[4]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_40_1 {{port:mcs4_pad_frame/p_out[3]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_41_1 {{port:mcs4_pad_frame/p_out[2]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_42_1 {{port:mcs4_pad_frame/p_out[1]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_43_1 {{port:mcs4_pad_frame/p_out[0]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_44_1 {{port:mcs4_pad_frame/io_pad[7]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_45_1 {{port:mcs4_pad_frame/io_pad[6]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_46_1 {{port:mcs4_pad_frame/io_pad[5]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_47_1 {{port:mcs4_pad_frame/io_pad[4]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_48_1 {{port:mcs4_pad_frame/io_pad[3]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_49_1 {{port:mcs4_pad_frame/io_pad[2]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_50_1 {{port:mcs4_pad_frame/io_pad[1]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_51_1 {{port:mcs4_pad_frame/io_pad[0]}}
path_group -paths [specify_paths -mode mode:mcs4_pad_frame/view_mcs4_slow -to clock:mcs4_pad_frame/view_mcs4_slow/My_CLK]  -name My_CLK -group cost_group:mcs4_pad_frame/My_CLK -user_priority -1047552
path_group -paths [specify_paths -mode mode:mcs4_pad_frame/view_mcs4_fast -to clock:mcs4_pad_frame/view_mcs4_fast/My_CLK]  -name My_CLK -group cost_group:mcs4_pad_frame/My_CLK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:mcs4_pad_frame .seq_reason_deleted_internal {{mcs4_core/rom_0/n0128_reg unloaded mcs4_core/rom_0/n0128} {mcs4_core/rom_1/n0128_reg unloaded mcs4_core/rom_1/n0128} {{mcs4_core/ram_0/oport_reg[1]} unloaded {mcs4_core/ram_0/oport[1]}} {{mcs4_core/ram_0/oport_reg[2]} unloaded {mcs4_core/ram_0/oport[2]}} {{mcs4_core/ram_0/oport_reg[3]} unloaded {mcs4_core/ram_0/oport[3]}} {mcs4_core/shiftreg/serial_out_reg unloaded mcs4_core/shiftreg/serial_out} {mcs4_core/i4004/tio_board/n0432_reg {{constant 1}} mcs4_core/i4004/tio_board/n0432} {{mcs4_core/rom_0/fetch_addr_reg[4]} unloaded {mcs4_core/rom_0/fetch_addr[4]}} {{mcs4_core/rom_0/fetch_addr_reg[5]} unloaded {mcs4_core/rom_0/fetch_addr[5]}} {{mcs4_core/rom_0/fetch_addr_reg[6]} unloaded {mcs4_core/rom_0/fetch_addr[6]}} {{mcs4_core/rom_0/fetch_addr_reg[7]} unloaded {mcs4_core/rom_0/fetch_addr[7]}} {{mcs4_core/rom_store0/rom_data_reg[1]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[1]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[2]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[2]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[3]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[3]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[4]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[4]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[5]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[5]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[6]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[6]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[7]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[7]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[1]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[1]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[2]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[2]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[3]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[3]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[4]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[4]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[5]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[5]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[6]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[6]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[7]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[7]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_0/fetch_addr_reg[1]} unloaded {mcs4_core/rom_0/fetch_addr[1]}} {{mcs4_core/rom_0/fetch_addr_reg[2]} unloaded {mcs4_core/rom_0/fetch_addr[2]}} {{mcs4_core/rom_0/fetch_addr_reg[3]} unloaded {mcs4_core/rom_0/fetch_addr[3]}} {{mcs4_core/rom_1/fetch_addr_reg[1]} unloaded {mcs4_core/rom_1/fetch_addr[1]}} {{mcs4_core/rom_1/fetch_addr_reg[2]} unloaded {mcs4_core/rom_1/fetch_addr[2]}} {{mcs4_core/rom_1/fetch_addr_reg[3]} unloaded {mcs4_core/rom_1/fetch_addr[3]}} {{mcs4_core/rom_1/fetch_addr_reg[4]} unloaded {mcs4_core/rom_1/fetch_addr[4]}} {{mcs4_core/rom_1/fetch_addr_reg[5]} unloaded {mcs4_core/rom_1/fetch_addr[5]}} {{mcs4_core/rom_1/fetch_addr_reg[6]} unloaded {mcs4_core/rom_1/fetch_addr[6]}} {{mcs4_core/rom_1/fetch_addr_reg[7]} unloaded {mcs4_core/rom_1/fetch_addr[7]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][3]}} {{mcs4_core/rom_store0/rom_data_reg[0]} {{constant 0(*)}} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[0]} {{constant 0(*)}} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][3]}} {{mcs4_core/rom_0/rom_out_reg[0]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[0]}} {{mcs4_core/rom_0/rom_out_reg[1]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[1]}} {{mcs4_core/rom_0/rom_out_reg[2]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[2]}} {{mcs4_core/rom_0/rom_out_reg[3]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[3]}} {{mcs4_core/rom_1/rom_out_reg[0]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[0]}} {{mcs4_core/rom_1/rom_out_reg[1]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[1]}} {{mcs4_core/rom_1/rom_out_reg[2]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[2]}} {{mcs4_core/rom_1/rom_out_reg[3]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][3]}} {mcs4_core/rom_0_chipsel_reg unloaded mcs4_core/rom_0/chipsel} {mcs4_core/rom_0_extbusdrive_reg unloaded mcs4_core/rom_0/extbusdrive} {{mcs4_core/rom_0_fetch_addr_reg[0]} unloaded {mcs4_core/rom_0/fetch_addr[0]}} {{mcs4_core/rom_0_rom_out_reg[0]} unloaded {mcs4_core/rom_0/rom_out[0]}} {{mcs4_core/rom_0_rom_out_reg[1]} unloaded {mcs4_core/rom_0/rom_out[1]}} {{mcs4_core/rom_0_rom_out_reg[2]} unloaded {mcs4_core/rom_0/rom_out[2]}} {{mcs4_core/rom_0_rom_out_reg[3]} unloaded {mcs4_core/rom_0/rom_out[3]}} {{mcs4_core/rom_1_fetch_addr_reg[0]} unloaded {mcs4_core/rom_1/fetch_addr[0]}} {{mcs4_core/rom_1_rom_out_reg[0]} unloaded {mcs4_core/rom_1/rom_out[0]}} {{mcs4_core/rom_1_rom_out_reg[1]} unloaded {mcs4_core/rom_1/rom_out[1]}} {{mcs4_core/rom_1_rom_out_reg[2]} unloaded {mcs4_core/rom_1/rom_out[2]}} {{mcs4_core/rom_1_rom_out_reg[3]} unloaded {mcs4_core/rom_1/rom_out[3]}} {{mcs4_core/rom_store0_rom_data_reg[0]} unloaded {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1_rom_data_reg[0]} unloaded {mcs4_core/rom_store1/rom_data[0]}} {mcs4_core/rom_1_timing_recovery_a11_reg {{merged with mcs4_core/rom_0_timing_recovery_a11_reg}} mcs4_core/rom_1/timing_recovery/a11 mcs4_core/rom_0/timing_recovery/a11} {mcs4_core/rom_1_timing_recovery_a12_reg {{merged with mcs4_core/rom_0_timing_recovery_a12_reg}} mcs4_core/rom_1/timing_recovery/a12 mcs4_core/rom_0/timing_recovery/a12} {mcs4_core/rom_1_timing_recovery_a21_reg {{merged with mcs4_core/rom_0_timing_recovery_a21_reg}} mcs4_core/rom_1/timing_recovery/a21 mcs4_core/rom_0/timing_recovery/a21} {mcs4_core/rom_1_timing_recovery_a22_reg {{merged with mcs4_core/rom_0_timing_recovery_a22_reg}} mcs4_core/rom_1/timing_recovery/a22 mcs4_core/rom_0/timing_recovery/a22} {mcs4_core/rom_1_timing_recovery_a31_reg {{merged with mcs4_core/rom_0_timing_recovery_a31_reg}} mcs4_core/rom_1/timing_recovery/a31 mcs4_core/rom_0/timing_recovery/a31} {mcs4_core/rom_1_timing_recovery_a32_reg {{merged with mcs4_core/rom_0_timing_recovery_a32_reg}} mcs4_core/rom_1/timing_recovery/a32 mcs4_core/rom_0/timing_recovery/a32} {mcs4_core/rom_1_timing_recovery_m11_reg {{merged with mcs4_core/rom_0_timing_recovery_m11_reg}} mcs4_core/rom_1/timing_recovery/m11 mcs4_core/rom_0/timing_recovery/m11} {mcs4_core/rom_1_timing_recovery_m12_reg {{merged with mcs4_core/rom_0_timing_recovery_m12_reg}} mcs4_core/rom_1/timing_recovery/m12 mcs4_core/rom_0/timing_recovery/m12} {mcs4_core/rom_1_timing_recovery_m21_reg {{merged with mcs4_core/rom_0_timing_recovery_m21_reg}} mcs4_core/rom_1/timing_recovery/m21 mcs4_core/rom_0/timing_recovery/m21} {mcs4_core/rom_1_timing_recovery_m22_reg {{merged with mcs4_core/rom_0_timing_recovery_m22_reg}} mcs4_core/rom_1/timing_recovery/m22 mcs4_core/rom_0/timing_recovery/m22} {mcs4_core/rom_1_timing_recovery_x11_reg {{merged with mcs4_core/rom_0_timing_recovery_x11_reg}} mcs4_core/rom_1/timing_recovery/x11 mcs4_core/rom_0/timing_recovery/x11} {mcs4_core/rom_1_timing_recovery_x12_reg {{merged with mcs4_core/rom_0_timing_recovery_x12_reg}} mcs4_core/rom_1/timing_recovery/x12 mcs4_core/rom_0/timing_recovery/x12} {mcs4_core/rom_1_timing_recovery_x21_reg {{merged with mcs4_core/rom_0_timing_recovery_x21_reg}} mcs4_core/rom_1/timing_recovery/x21 mcs4_core/rom_0/timing_recovery/x21} {mcs4_core/rom_1_timing_recovery_x22_reg {{merged with mcs4_core/rom_0_timing_recovery_x22_reg}} mcs4_core/rom_1/timing_recovery/x22 mcs4_core/rom_0/timing_recovery/x22}}
set_db -quiet design:mcs4_pad_frame .max_fanout 15.000
set_db -quiet design:mcs4_pad_frame .max_fanout_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 15.000} {mode:mcs4_pad_frame/view_mcs4_fast 15.000}}
set_db -quiet design:mcs4_pad_frame .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 391439} {cell_count 3036} {utilization  0.00} {runtime 18 163 17 51} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 388476} {cell_count 3520} {utilization  0.00} {runtime 6 172 8 63} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 388574} {cell_count 3701} {utilization  0.00} {runtime 9 191 11 80} }{reify {wns 41728} {tns 0} {vep 0} {area 382629} {cell_count 2089} {utilization  0.00} {runtime 15 206 37 118} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 382207} {cell_count 1970} {utilization  0.00} {runtime 16 267 16 172} }}
set_db -quiet design:mcs4_pad_frame .seq_mbci_coverage 0.0
set_db -quiet design:mcs4_pad_frame .hdl_user_name mcs4_pad_frame
set_db -quiet design:mcs4_pad_frame .hdl_filelist {{default {-v2001 -f} {SYNTHESIS} {../../rtl/verilog/mcs4.f} {} {}}}
set_db -quiet design:mcs4_pad_frame .verification_directory fv/mcs4_pad_frame
set_db -quiet design:mcs4_pad_frame .seq_reason_deleted {{mcs4_core/rom_0/n0128_reg unloaded} {mcs4_core/rom_1/n0128_reg unloaded} {{mcs4_core/ram_0/oport_reg[1]} unloaded} {{mcs4_core/ram_0/oport_reg[2]} unloaded} {{mcs4_core/ram_0/oport_reg[3]} unloaded} {mcs4_core/shiftreg/serial_out_reg unloaded} {mcs4_core/i4004/tio_board/n0432_reg {{constant 1}}} {{mcs4_core/rom_0/fetch_addr_reg[4]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[5]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[6]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[7]} unloaded} {{mcs4_core/rom_store0/rom_data_reg[1]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[2]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[3]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[4]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[5]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[6]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[7]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[1]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[2]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[3]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[4]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[5]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[6]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[7]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_0/fetch_addr_reg[1]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[2]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[3]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[1]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[2]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[3]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[4]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[5]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[6]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[7]} unloaded} {{mcs4_core/ram_0/ram0_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/rom_store0/rom_data_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_store1/rom_data_reg[0]} {{constant 0(*)}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/rom_0/rom_out_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[1]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[2]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[3]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[1]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[2]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[3]} {{constant 0(*)}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][3]} {{constant 0}}} {mcs4_core/rom_0_chipsel_reg unloaded} {mcs4_core/rom_0_extbusdrive_reg unloaded} {{mcs4_core/rom_0_fetch_addr_reg[0]} unloaded} {{mcs4_core/rom_0_rom_out_reg[0]} unloaded} {{mcs4_core/rom_0_rom_out_reg[1]} unloaded} {{mcs4_core/rom_0_rom_out_reg[2]} unloaded} {{mcs4_core/rom_0_rom_out_reg[3]} unloaded} {{mcs4_core/rom_1_fetch_addr_reg[0]} unloaded} {{mcs4_core/rom_1_rom_out_reg[0]} unloaded} {{mcs4_core/rom_1_rom_out_reg[1]} unloaded} {{mcs4_core/rom_1_rom_out_reg[2]} unloaded} {{mcs4_core/rom_1_rom_out_reg[3]} unloaded} {{mcs4_core/rom_store0_rom_data_reg[0]} unloaded} {{mcs4_core/rom_store1_rom_data_reg[0]} unloaded} {mcs4_core/rom_1_timing_recovery_a11_reg {{merged with mcs4_core/rom_0_timing_recovery_a11_reg}}} {mcs4_core/rom_1_timing_recovery_a12_reg {{merged with mcs4_core/rom_0_timing_recovery_a12_reg}}} {mcs4_core/rom_1_timing_recovery_a21_reg {{merged with mcs4_core/rom_0_timing_recovery_a21_reg}}} {mcs4_core/rom_1_timing_recovery_a22_reg {{merged with mcs4_core/rom_0_timing_recovery_a22_reg}}} {mcs4_core/rom_1_timing_recovery_a31_reg {{merged with mcs4_core/rom_0_timing_recovery_a31_reg}}} {mcs4_core/rom_1_timing_recovery_a32_reg {{merged with mcs4_core/rom_0_timing_recovery_a32_reg}}} {mcs4_core/rom_1_timing_recovery_m11_reg {{merged with mcs4_core/rom_0_timing_recovery_m11_reg}}} {mcs4_core/rom_1_timing_recovery_m12_reg {{merged with mcs4_core/rom_0_timing_recovery_m12_reg}}} {mcs4_core/rom_1_timing_recovery_m21_reg {{merged with mcs4_core/rom_0_timing_recovery_m21_reg}}} {mcs4_core/rom_1_timing_recovery_m22_reg {{merged with mcs4_core/rom_0_timing_recovery_m22_reg}}} {mcs4_core/rom_1_timing_recovery_x11_reg {{merged with mcs4_core/rom_0_timing_recovery_x11_reg}}} {mcs4_core/rom_1_timing_recovery_x12_reg {{merged with mcs4_core/rom_0_timing_recovery_x12_reg}}} {mcs4_core/rom_1_timing_recovery_x21_reg {{merged with mcs4_core/rom_0_timing_recovery_x21_reg}}} {mcs4_core/rom_1_timing_recovery_x22_reg {{merged with mcs4_core/rom_0_timing_recovery_x22_reg}}}}
set_db -quiet design:mcs4_pad_frame .lp_clock_gating_max_flops inf
set_db -quiet design:mcs4_pad_frame .arch_filename ../../rtl/verilog/./mcs4_pad_frame.v
set_db -quiet design:mcs4_pad_frame .entity_filename ../../rtl/verilog/./mcs4_pad_frame.v
set_db -quiet port:mcs4_pad_frame/sysclk .original_name sysclk
set_db -quiet port:mcs4_pad_frame/poc_pad .external_driver_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y}} {mode:mcs4_pad_frame/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y}}}
set_db -quiet port:mcs4_pad_frame/poc_pad .original_name poc_pad
set_db -quiet port:mcs4_pad_frame/clear_pad .external_driver_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y}} {mode:mcs4_pad_frame/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y}}}
set_db -quiet port:mcs4_pad_frame/clear_pad .original_name clear_pad
set_db -quiet port:mcs4_pad_frame/VDD .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD .original_name VDD
set_db -quiet port:mcs4_pad_frame/VSS .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VSS .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VSS .original_name VSS
set_db -quiet port:mcs4_pad_frame/VDD_IOR .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD_IOR .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD_IOR .original_name VDD_IOR
set_db -quiet port:mcs4_pad_frame/VSS_IOR .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VSS_IOR .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VSS_IOR .original_name VSS_IOR
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .original_name {p_out[9]}
set_db -quiet {port:mcs4_pad_frame/p_out[9]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .original_name {p_out[8]}
set_db -quiet {port:mcs4_pad_frame/p_out[8]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .original_name {p_out[7]}
set_db -quiet {port:mcs4_pad_frame/p_out[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .original_name {p_out[6]}
set_db -quiet {port:mcs4_pad_frame/p_out[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .original_name {p_out[5]}
set_db -quiet {port:mcs4_pad_frame/p_out[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .original_name {p_out[4]}
set_db -quiet {port:mcs4_pad_frame/p_out[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .original_name {p_out[3]}
set_db -quiet {port:mcs4_pad_frame/p_out[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .original_name {p_out[2]}
set_db -quiet {port:mcs4_pad_frame/p_out[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .original_name {p_out[1]}
set_db -quiet {port:mcs4_pad_frame/p_out[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .original_name {p_out[0]}
set_db -quiet {port:mcs4_pad_frame/p_out[0]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .original_name {io_pad[7]}
set_db -quiet {port:mcs4_pad_frame/io_pad[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .original_name {io_pad[6]}
set_db -quiet {port:mcs4_pad_frame/io_pad[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .original_name {io_pad[5]}
set_db -quiet {port:mcs4_pad_frame/io_pad[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .original_name {io_pad[4]}
set_db -quiet {port:mcs4_pad_frame/io_pad[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .original_name {io_pad[3]}
set_db -quiet {port:mcs4_pad_frame/io_pad[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .original_name {io_pad[2]}
set_db -quiet {port:mcs4_pad_frame/io_pad[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .original_name {io_pad[1]}
set_db -quiet {port:mcs4_pad_frame/io_pad[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_pin_cap_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_capacitance_min_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_pin_cap_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_capacitance_max_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {5.0 5.0}} {mode:mcs4_pad_frame/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .max_capacitance 5.0
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .original_name {io_pad[0]}
set_db -quiet {port:mcs4_pad_frame/io_pad[0]} .external_pin_cap {5.0 5.0}
set_db -quiet port:mcs4_pad_frame/VDD .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD .original_name VDD
set_db -quiet port:mcs4_pad_frame/VSS .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VSS .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VSS .original_name VSS
set_db -quiet port:mcs4_pad_frame/VDD_IOR .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD_IOR .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD_IOR .original_name VDD_IOR
set_db -quiet port:mcs4_pad_frame/VSS_IOR .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VSS_IOR .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VSS_IOR .original_name VSS_IOR
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg .original_name mcs4_core/clockgen/clk1
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg .single_bit_orig_name mcs4_core/clockgen/clk1
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg/Q .original_name mcs4_core/clockgen/clk1/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg .original_name mcs4_core/clockgen/clk2
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg .single_bit_orig_name mcs4_core/clockgen/clk2
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg/Q .original_name mcs4_core/clockgen/clk2/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]} .original_name {{mcs4_core/clockgen/clockdiv[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]/Q} .original_name {mcs4_core/clockgen/clockdiv[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]} .original_name {{mcs4_core/clockgen/clockdiv[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]/Q} .original_name {mcs4_core/clockgen/clockdiv[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]/QN} .original_name {mcs4_core/clockgen/clockdiv[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]} .original_name {{mcs4_core/clockgen/clockdiv[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]/Q} .original_name {mcs4_core/clockgen/clockdiv[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]/QN} .original_name {mcs4_core/clockgen/clockdiv[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]} .original_name {{mcs4_core/clockgen/clockdiv[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]/Q} .original_name {mcs4_core/clockgen/clockdiv[4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]} .original_name {{mcs4_core/i4004/alu_board/acc_out[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc_out[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]/Q} .original_name {mcs4_core/i4004/alu_board/acc_out[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]} .original_name {{mcs4_core/i4004/alu_board/acc_out[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc_out[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]/Q} .original_name {mcs4_core/i4004/alu_board/acc_out[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]} .original_name {{mcs4_core/i4004/alu_board/acc_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]/Q} .original_name {mcs4_core/i4004/alu_board/acc_out[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]} .original_name {{mcs4_core/i4004/alu_board/acc[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]/Q} .original_name {mcs4_core/i4004/alu_board/acc[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]} .original_name {{mcs4_core/i4004/alu_board/acc[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]/Q} .original_name {mcs4_core/i4004/alu_board/acc[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]} .original_name {{mcs4_core/i4004/alu_board/acc[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]/Q} .original_name {mcs4_core/i4004/alu_board/acc[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]} .original_name {{mcs4_core/i4004/alu_board/acc[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]/Q} .original_name {mcs4_core/i4004/alu_board/acc[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg .original_name mcs4_core/i4004/alu_board/cy_1
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg .single_bit_orig_name mcs4_core/i4004/alu_board/cy_1
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg/Q .original_name mcs4_core/i4004/alu_board/cy_1/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .original_name mcs4_core/i4004/alu_board/cy
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .single_bit_orig_name mcs4_core/i4004/alu_board/cy
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg/Q .original_name mcs4_core/i4004/alu_board/cy/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg .original_name mcs4_core/i4004/alu_board/n0870
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0870
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg/Q .original_name mcs4_core/i4004/alu_board/n0870/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg .original_name mcs4_core/i4004/alu_board/n0871
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0871
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg/Q .original_name mcs4_core/i4004/alu_board/n0871/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg .original_name mcs4_core/i4004/alu_board/n0872
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0872
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg/Q .original_name mcs4_core/i4004/alu_board/n0872/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg .original_name mcs4_core/i4004/alu_board/n0873
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0873
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg/Q .original_name mcs4_core/i4004/alu_board/n0873/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg .original_name mcs4_core/i4004/alu_board/n0887
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0887
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg/Q .original_name mcs4_core/i4004/alu_board/n0887/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg .original_name mcs4_core/i4004/alu_board/n0889
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0889
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg/Q .original_name mcs4_core/i4004/alu_board/n0889/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg .original_name mcs4_core/i4004/alu_board/n0891
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0891
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg/Q .original_name mcs4_core/i4004/alu_board/n0891/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg .original_name mcs4_core/i4004/alu_board/n0893
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0893
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg/Q .original_name mcs4_core/i4004/alu_board/n0893/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]} .original_name {{mcs4_core/i4004/alu_board/tmp[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]} .single_bit_orig_name {mcs4_core/i4004/alu_board/tmp[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]/Q} .original_name {mcs4_core/i4004/alu_board/tmp[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]} .original_name {{mcs4_core/i4004/alu_board/tmp[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]} .single_bit_orig_name {mcs4_core/i4004/alu_board/tmp[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]/Q} .original_name {mcs4_core/i4004/alu_board/tmp[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]} .original_name {{mcs4_core/i4004/alu_board/tmp[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]} .single_bit_orig_name {mcs4_core/i4004/alu_board/tmp[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]/Q} .original_name {mcs4_core/i4004/alu_board/tmp[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]} .original_name {{mcs4_core/i4004/alu_board/tmp[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]} .single_bit_orig_name {mcs4_core/i4004/alu_board/tmp[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]/Q} .original_name {mcs4_core/i4004/alu_board/tmp[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg .original_name mcs4_core/i4004/id_board/n0360
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0360
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg/Q .original_name mcs4_core/i4004/id_board/n0360/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg .original_name mcs4_core/i4004/id_board/n0362
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0362
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg/Q .original_name mcs4_core/i4004/id_board/n0362/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg .original_name mcs4_core/i4004/id_board/n0380
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0380
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg/Q .original_name mcs4_core/i4004/id_board/n0380/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg .original_name mcs4_core/i4004/id_board/n0397
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0397
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg/Q .original_name mcs4_core/i4004/id_board/n0397/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg .original_name mcs4_core/i4004/id_board/n0405
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0405
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg/Q .original_name mcs4_core/i4004/id_board/n0405/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg .original_name mcs4_core/i4004/id_board/n0414
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0414
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg/Q .original_name mcs4_core/i4004/id_board/n0414/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg .original_name mcs4_core/i4004/id_board/n0425
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0425
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg/Q .original_name mcs4_core/i4004/id_board/n0425/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg .original_name mcs4_core/i4004/id_board/n0433
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0433
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg/Q .original_name mcs4_core/i4004/id_board/n0433/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg .original_name mcs4_core/i4004/id_board/n0797
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0797
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg/Q .original_name mcs4_core/i4004/id_board/n0797/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg .original_name mcs4_core/i4004/id_board/n0801
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0801
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg/Q .original_name mcs4_core/i4004/id_board/n0801/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg .original_name mcs4_core/i4004/id_board/n0805
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0805
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg/Q .original_name mcs4_core/i4004/id_board/n0805/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]} .original_name {{mcs4_core/i4004/id_board/opa[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]} .single_bit_orig_name {mcs4_core/i4004/id_board/opa[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]/Q} .original_name {mcs4_core/i4004/id_board/opa[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]} .original_name {{mcs4_core/i4004/id_board/opa[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]} .single_bit_orig_name {mcs4_core/i4004/id_board/opa[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]/Q} .original_name {mcs4_core/i4004/id_board/opa[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]} .original_name {{mcs4_core/i4004/id_board/opa[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]} .single_bit_orig_name {mcs4_core/i4004/id_board/opa[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]/Q} .original_name {mcs4_core/i4004/id_board/opa[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]} .original_name {{mcs4_core/i4004/id_board/opr[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]} .single_bit_orig_name {mcs4_core/i4004/id_board/opr[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]/Q} .original_name {mcs4_core/i4004/id_board/opr[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]} .original_name {{mcs4_core/i4004/id_board/opr[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]} .single_bit_orig_name {mcs4_core/i4004/id_board/opr[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]/Q} .original_name {mcs4_core/i4004/id_board/opr[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]} .original_name {{mcs4_core/i4004/id_board/opr[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]} .single_bit_orig_name {mcs4_core/i4004/id_board/opr[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]/Q} .original_name {mcs4_core/i4004/id_board/opr[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]} .original_name {{mcs4_core/i4004/id_board/opr[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]} .single_bit_orig_name {mcs4_core/i4004/id_board/opr[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]/Q} .original_name {mcs4_core/i4004/id_board/opr[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg .original_name mcs4_core/i4004/ip_board/addr_ptr_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_ptr_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg/Q .original_name mcs4_core/i4004/ip_board/addr_ptr_0/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg .original_name mcs4_core/i4004/ip_board/addr_ptr_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_ptr_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg/Q .original_name mcs4_core/i4004/ip_board/addr_ptr_0/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg .original_name mcs4_core/i4004/ip_board/addr_ptr_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_ptr_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg/Q .original_name mcs4_core/i4004/ip_board/addr_ptr_1/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg .original_name mcs4_core/i4004/ip_board/addr_ptr_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_ptr_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg/Q .original_name mcs4_core/i4004/ip_board/addr_ptr_1/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg .original_name mcs4_core/i4004/ip_board/addr_rfsh_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_rfsh_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg/Q .original_name mcs4_core/i4004/ip_board/addr_rfsh_0/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg .original_name mcs4_core/i4004/ip_board/addr_rfsh_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_rfsh_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg/Q .original_name mcs4_core/i4004/ip_board/addr_rfsh_0/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg .original_name mcs4_core/i4004/ip_board/addr_rfsh_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_rfsh_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg/Q .original_name mcs4_core/i4004/ip_board/addr_rfsh_1/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg .original_name mcs4_core/i4004/ip_board/addr_rfsh_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg .single_bit_orig_name mcs4_core/i4004/ip_board/addr_rfsh_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg/Q .original_name mcs4_core/i4004/ip_board/addr_rfsh_1/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg .original_name mcs4_core/i4004/ip_board/carry_in
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg .single_bit_orig_name mcs4_core/i4004/ip_board/carry_in
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg/Q .original_name mcs4_core/i4004/ip_board/carry_in/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg .original_name mcs4_core/i4004/ip_board/carry_out
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg .single_bit_orig_name mcs4_core/i4004/ip_board/carry_out
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg/Q .original_name mcs4_core/i4004/ip_board/carry_out/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][10]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][10]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][10]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]} .original_name {{mcs4_core/i4004/ip_board/dram_array[0][11]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[0][11]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[0][11]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][10]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][10]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][10]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]} .original_name {{mcs4_core/i4004/ip_board/dram_array[1][11]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[1][11]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[1][11]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][10]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][10]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][10]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]} .original_name {{mcs4_core/i4004/ip_board/dram_array[2][11]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[2][11]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[2][11]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][10]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][10]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][10]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]} .original_name {{mcs4_core/i4004/ip_board/dram_array[3][11]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_array[3][11]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]/Q} .original_name {mcs4_core/i4004/ip_board/dram_array[3][11]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[10]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[10]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[10]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]} .original_name {{mcs4_core/i4004/ip_board/dram_temp[11]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]} .single_bit_orig_name {mcs4_core/i4004/ip_board/dram_temp[11]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]/Q} .original_name {mcs4_core/i4004/ip_board/dram_temp[11]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]} .original_name {{mcs4_core/i4004/ip_board/incr_in[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/incr_in[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]/Q} .original_name {mcs4_core/i4004/ip_board/incr_in[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]} .original_name {{mcs4_core/i4004/ip_board/incr_in[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/incr_in[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]/Q} .original_name {mcs4_core/i4004/ip_board/incr_in[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]} .original_name {{mcs4_core/i4004/ip_board/incr_in[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]} .single_bit_orig_name {mcs4_core/i4004/ip_board/incr_in[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]/Q} .original_name {mcs4_core/i4004/ip_board/incr_in[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]} .original_name {{mcs4_core/i4004/ip_board/incr_in[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]} .single_bit_orig_name {mcs4_core/i4004/ip_board/incr_in[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]/Q} .original_name {mcs4_core/i4004/ip_board/incr_in[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg .original_name mcs4_core/i4004/ip_board/n0374
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg .single_bit_orig_name mcs4_core/i4004/ip_board/n0374
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg/Q .original_name mcs4_core/i4004/ip_board/n0374/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg .original_name mcs4_core/i4004/ip_board/n0384
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg .single_bit_orig_name mcs4_core/i4004/ip_board/n0384
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg/Q .original_name mcs4_core/i4004/ip_board/n0384/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg .original_name mcs4_core/i4004/ip_board/n0416
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg .single_bit_orig_name mcs4_core/i4004/ip_board/n0416
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg/Q .original_name mcs4_core/i4004/ip_board/n0416/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg .original_name mcs4_core/i4004/ip_board/n0438
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg .single_bit_orig_name mcs4_core/i4004/ip_board/n0438
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg/Q .original_name mcs4_core/i4004/ip_board/n0438/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg .original_name mcs4_core/i4004/ip_board/n0517
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg .single_bit_orig_name mcs4_core/i4004/ip_board/n0517
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg/Q .original_name mcs4_core/i4004/ip_board/n0517/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]} .original_name {{mcs4_core/i4004/sp_board/din_n[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/din_n[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]/Q} .original_name {mcs4_core/i4004/sp_board/din_n[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]} .original_name {{mcs4_core/i4004/sp_board/din_n[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/din_n[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]/Q} .original_name {mcs4_core/i4004/sp_board/din_n[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]} .original_name {{mcs4_core/i4004/sp_board/din_n[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/din_n[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]/Q} .original_name {mcs4_core/i4004/sp_board/din_n[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]} .original_name {{mcs4_core/i4004/sp_board/din_n[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/din_n[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]/Q} .original_name {mcs4_core/i4004/sp_board/din_n[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[0][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[0][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[0][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[1][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[1][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[1][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[2][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[2][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[2][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[3][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[3][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[3][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[4][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[4][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[4][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[5][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[5][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[5][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[6][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[6][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[6][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]} .original_name {{mcs4_core/i4004/sp_board/dram_array[7][7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_array[7][7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_array[7][7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]} .original_name {{mcs4_core/i4004/sp_board/dram_temp[7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]} .single_bit_orig_name {mcs4_core/i4004/sp_board/dram_temp[7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]/Q} .original_name {mcs4_core/i4004/sp_board/dram_temp[7]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg .original_name mcs4_core/i4004/sp_board/n0592
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg .single_bit_orig_name mcs4_core/i4004/sp_board/n0592
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg/Q .original_name mcs4_core/i4004/sp_board/n0592/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg .original_name mcs4_core/i4004/sp_board/n0615
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg .single_bit_orig_name mcs4_core/i4004/sp_board/n0615
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg/Q .original_name mcs4_core/i4004/sp_board/n0615/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_0/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_0/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_0/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_0/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_1/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_1/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_1/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_1/slave/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg/QN .original_name mcs4_core/i4004/sp_board/reg_rfsh_1/slave/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_2/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_2/master
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_2/master/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg .original_name mcs4_core/i4004/sp_board/reg_rfsh_2/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg .single_bit_orig_name mcs4_core/i4004/sp_board/reg_rfsh_2/slave
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg/Q .original_name mcs4_core/i4004/sp_board/reg_rfsh_2/slave/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg/QN .original_name mcs4_core/i4004/sp_board/reg_rfsh_2/slave/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]} .original_name {{mcs4_core/i4004/tio_board/data_o[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]} .single_bit_orig_name {mcs4_core/i4004/tio_board/data_o[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]/Q} .original_name {mcs4_core/i4004/tio_board/data_o[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]} .original_name {{mcs4_core/i4004/tio_board/data_o[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]} .single_bit_orig_name {mcs4_core/i4004/tio_board/data_o[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]/Q} .original_name {mcs4_core/i4004/tio_board/data_o[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]} .original_name {{mcs4_core/i4004/tio_board/data_o[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]} .single_bit_orig_name {mcs4_core/i4004/tio_board/data_o[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]/Q} .original_name {mcs4_core/i4004/tio_board/data_o[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]} .original_name {{mcs4_core/i4004/tio_board/data_o[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]} .single_bit_orig_name {mcs4_core/i4004/tio_board/data_o[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]/Q} .original_name {mcs4_core/i4004/tio_board/data_o[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg .original_name mcs4_core/i4004/tio_board/n0278
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg .single_bit_orig_name mcs4_core/i4004/tio_board/n0278
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg/Q .original_name mcs4_core/i4004/tio_board/n0278/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg .original_name mcs4_core/i4004/tio_board/n0685
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg .single_bit_orig_name mcs4_core/i4004/tio_board/n0685
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg/Q .original_name mcs4_core/i4004/tio_board/n0685/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg .original_name mcs4_core/i4004/tio_board/n0699
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg .single_bit_orig_name mcs4_core/i4004/tio_board/n0699
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg/Q .original_name mcs4_core/i4004/tio_board/n0699/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg .original_name mcs4_core/i4004/tio_board/n0707
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg .single_bit_orig_name mcs4_core/i4004/tio_board/n0707
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg/Q .original_name mcs4_core/i4004/tio_board/n0707/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a31/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg .original_name mcs4_core/i4004/tio_board/timing_generator/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/m11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg .original_name mcs4_core/i4004/tio_board/timing_generator/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/m21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg .original_name mcs4_core/i4004/tio_board/timing_generator/sync
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/sync
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/sync/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x31/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]} .original_name {{mcs4_core/ram_0/char_num[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/char_num[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]/Q} .original_name {mcs4_core/ram_0/char_num[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]} .original_name {{mcs4_core/ram_0/char_num[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]} .single_bit_orig_name {mcs4_core/ram_0/char_num[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]/Q} .original_name {mcs4_core/ram_0/char_num[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]} .original_name {{mcs4_core/ram_0/opa[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/opa[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]/Q} .original_name {mcs4_core/ram_0/opa[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]} .original_name {{mcs4_core/ram_0/opa[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]} .single_bit_orig_name {mcs4_core/ram_0/opa[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]/Q} .original_name {mcs4_core/ram_0/opa[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]} .original_name {{mcs4_core/ram_0/opa[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]} .single_bit_orig_name {mcs4_core/ram_0/opa[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]/Q} .original_name {mcs4_core/ram_0/opa[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]} .original_name {{mcs4_core/ram_0/opa[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]} .single_bit_orig_name {mcs4_core/ram_0/opa[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]/Q} .original_name {mcs4_core/ram_0/opa[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]} .original_name {{mcs4_core/ram_0/oport[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/oport[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]/Q} .original_name {mcs4_core/ram_0/oport[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]/QN} .original_name {mcs4_core/ram_0/oport[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[4][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[4][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[4][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[4][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[4][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[4][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[4][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[4][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[4][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[4][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[4][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[4][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[5][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[5][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[5][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[5][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[5][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[5][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[5][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[5][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[5][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[5][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[5][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[5][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[6][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[6][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[6][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[6][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[6][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[6][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[6][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[6][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[6][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[6][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[6][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[6][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[7][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[7][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[7][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[7][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[7][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[7][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[7][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[7][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[7][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[7][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[7][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[7][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[8][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[8][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[8][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[8][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[8][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[8][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[8][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[8][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[8][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[8][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[8][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[8][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[9][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[9][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[9][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[9][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[9][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[9][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[9][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[9][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[9][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[9][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[9][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[9][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[10][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[10][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[10][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[10][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[10][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[10][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[10][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[10][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[10][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[10][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[10][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[10][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[11][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[11][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[11][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[11][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[11][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[11][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[11][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[11][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[11][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[11][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[11][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[11][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[12][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[12][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[12][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[12][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[12][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[12][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[12][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[12][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[12][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[12][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[12][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[12][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[13][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[13][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[13][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[13][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[13][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[13][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[13][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[13][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[13][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[13][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[13][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[13][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[14][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[14][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[14][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[14][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[14][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[14][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[14][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[14][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[14][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[14][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[14][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[14][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[15][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[15][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[15][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[15][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[15][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[15][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[15][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[15][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[15][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[15][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[15][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[15][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[16][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[16][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[16][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[16][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[16][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[16][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[16][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[16][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[16][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[16][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[16][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[16][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[17][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[17][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[17][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[17][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[17][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[17][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[17][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[17][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[17][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[17][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[17][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[17][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[18][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[18][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[18][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[18][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[18][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[18][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[18][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[18][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[18][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[18][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[18][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[18][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]} .original_name {{mcs4_core/ram_0/ram0/ram_array[19][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[19][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[19][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]} .original_name {{mcs4_core/ram_0/ram0/ram_array[19][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[19][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[19][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]} .original_name {{mcs4_core/ram_0/ram0/ram_array[19][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[19][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[19][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]} .original_name {{mcs4_core/ram_0/ram0/ram_array[19][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]} .single_bit_orig_name {mcs4_core/ram_0/ram0/ram_array[19][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]/Q} .original_name {mcs4_core/ram_0/ram0/ram_array[19][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[4][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[4][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[4][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[4][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[4][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[4][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[4][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[4][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[4][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[4][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[4][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[4][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[5][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[5][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[5][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[5][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[5][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[5][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[5][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[5][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[5][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[5][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[5][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[5][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[6][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[6][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[6][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[6][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[6][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[6][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[6][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[6][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[6][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[6][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[6][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[6][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[7][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[7][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[7][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[7][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[7][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[7][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[7][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[7][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[7][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[7][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[7][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[7][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[8][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[8][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[8][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[8][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[8][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[8][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[8][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[8][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[8][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[8][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[8][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[8][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[9][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[9][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[9][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[9][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[9][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[9][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[9][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[9][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[9][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[9][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[9][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[9][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[10][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[10][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[10][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[10][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[10][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[10][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[10][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[10][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[10][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[10][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[10][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[10][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[11][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[11][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[11][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[11][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[11][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[11][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[11][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[11][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[11][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[11][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[11][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[11][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[12][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[12][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[12][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[12][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[12][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[12][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[12][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[12][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[12][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[12][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[12][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[12][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[13][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[13][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[13][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[13][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[13][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[13][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[13][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[13][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[13][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[13][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[13][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[13][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[14][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[14][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[14][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[14][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[14][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[14][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[14][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[14][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[14][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[14][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[14][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[14][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[15][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[15][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[15][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[15][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[15][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[15][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[15][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[15][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[15][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[15][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[15][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[15][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[16][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[16][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[16][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[16][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[16][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[16][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[16][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[16][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[16][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[16][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[16][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[16][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[17][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[17][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[17][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[17][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[17][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[17][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[17][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[17][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[17][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[17][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[17][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[17][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[18][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[18][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[18][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[18][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[18][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[18][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[18][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[18][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[18][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[18][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[18][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[18][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]} .original_name {{mcs4_core/ram_0/ram1/ram_array[19][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[19][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[19][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]} .original_name {{mcs4_core/ram_0/ram1/ram_array[19][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[19][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[19][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]} .original_name {{mcs4_core/ram_0/ram1/ram_array[19][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[19][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[19][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]} .original_name {{mcs4_core/ram_0/ram1/ram_array[19][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]} .single_bit_orig_name {mcs4_core/ram_0/ram1/ram_array[19][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]/Q} .original_name {mcs4_core/ram_0/ram1/ram_array[19][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[4][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[4][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[4][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[4][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[4][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[4][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[4][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[4][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[4][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[4][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[4][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[4][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[5][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[5][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[5][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[5][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[5][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[5][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[5][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[5][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[5][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[5][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[5][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[5][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[6][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[6][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[6][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[6][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[6][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[6][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[6][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[6][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[6][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[6][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[6][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[6][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[7][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[7][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[7][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[7][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[7][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[7][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[7][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[7][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[7][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[7][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[7][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[7][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[8][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[8][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[8][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[8][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[8][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[8][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[8][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[8][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[8][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[8][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[8][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[8][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[9][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[9][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[9][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[9][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[9][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[9][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[9][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[9][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[9][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[9][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[9][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[9][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[10][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[10][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[10][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[10][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[10][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[10][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[10][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[10][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[10][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[10][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[10][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[10][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[11][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[11][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[11][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[11][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[11][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[11][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[11][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[11][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[11][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[11][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[11][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[11][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[12][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[12][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[12][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[12][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[12][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[12][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[12][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[12][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[12][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[12][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[12][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[12][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[13][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[13][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[13][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[13][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[13][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[13][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[13][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[13][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[13][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[13][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[13][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[13][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[14][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[14][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[14][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[14][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[14][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[14][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[14][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[14][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[14][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[14][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[14][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[14][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[15][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[15][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[15][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[15][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[15][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[15][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[15][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[15][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[15][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[15][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[15][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[15][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[16][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[16][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[16][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[16][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[16][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[16][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[16][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[16][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[16][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[16][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[16][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[16][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[17][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[17][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[17][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[17][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[17][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[17][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[17][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[17][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[17][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[17][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[17][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[17][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[18][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[18][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[18][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[18][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[18][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[18][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[18][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[18][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[18][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[18][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[18][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[18][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]} .original_name {{mcs4_core/ram_0/ram2/ram_array[19][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[19][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[19][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]} .original_name {{mcs4_core/ram_0/ram2/ram_array[19][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[19][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[19][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]} .original_name {{mcs4_core/ram_0/ram2/ram_array[19][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[19][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[19][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]} .original_name {{mcs4_core/ram_0/ram2/ram_array[19][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]} .single_bit_orig_name {mcs4_core/ram_0/ram2/ram_array[19][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]/Q} .original_name {mcs4_core/ram_0/ram2/ram_array[19][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[0][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[0][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[0][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[0][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[0][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[0][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[0][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[0][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[0][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[0][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[0][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[0][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[1][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[1][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[1][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[1][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[1][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[1][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[1][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[1][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[1][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[1][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[1][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[1][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[2][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[2][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[2][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[2][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[2][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[2][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[2][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[2][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[2][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[2][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[2][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[2][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[3][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[3][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[3][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[3][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[3][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[3][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[3][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[3][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[3][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[3][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[3][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[3][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[4][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[4][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[4][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[4][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[4][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[4][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[4][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[4][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[4][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[4][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[4][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[4][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[5][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[5][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[5][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[5][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[5][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[5][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[5][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[5][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[5][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[5][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[5][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[5][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[6][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[6][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[6][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[6][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[6][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[6][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[6][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[6][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[6][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[6][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[6][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[6][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[7][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[7][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[7][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[7][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[7][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[7][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[7][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[7][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[7][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[7][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[7][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[7][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[8][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[8][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[8][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[8][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[8][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[8][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[8][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[8][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[8][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[8][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[8][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[8][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[9][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[9][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[9][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[9][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[9][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[9][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[9][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[9][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[9][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[9][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[9][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[9][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[10][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[10][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[10][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[10][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[10][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[10][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[10][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[10][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[10][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[10][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[10][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[10][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[11][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[11][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[11][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[11][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[11][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[11][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[11][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[11][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[11][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[11][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[11][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[11][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[12][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[12][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[12][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[12][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[12][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[12][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[12][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[12][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[12][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[12][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[12][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[12][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[13][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[13][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[13][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[13][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[13][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[13][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[13][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[13][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[13][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[13][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[13][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[13][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[14][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[14][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[14][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[14][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[14][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[14][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[14][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[14][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[14][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[14][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[14][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[14][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[15][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[15][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[15][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[15][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[15][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[15][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[15][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[15][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[15][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[15][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[15][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[15][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[16][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[16][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[16][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[16][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[16][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[16][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[16][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[16][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[16][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[16][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[16][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[16][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[17][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[17][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[17][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[17][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[17][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[17][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[17][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[17][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[17][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[17][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[17][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[17][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[18][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[18][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[18][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[18][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[18][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[18][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[18][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[18][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[18][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[18][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[18][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[18][3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]} .original_name {{mcs4_core/ram_0/ram3/ram_array[19][0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[19][0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[19][0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]} .original_name {{mcs4_core/ram_0/ram3/ram_array[19][1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[19][1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[19][1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]} .original_name {{mcs4_core/ram_0/ram3/ram_array[19][2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[19][2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[19][2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]} .original_name {{mcs4_core/ram_0/ram3/ram_array[19][3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]} .single_bit_orig_name {mcs4_core/ram_0/ram3/ram_array[19][3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]/Q} .original_name {mcs4_core/ram_0/ram3/ram_array[19][3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg .original_name mcs4_core/ram_0/ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg .single_bit_orig_name mcs4_core/ram_0/ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg/Q .original_name mcs4_core/ram_0/ram_sel/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]} .original_name {{mcs4_core/ram_0/rfsh_addr[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]} .original_name {{mcs4_core/ram_0/rfsh_next[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_next[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]/Q} .original_name {mcs4_core/ram_0/rfsh_next[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]} .original_name {{mcs4_core/ram_0/rfsh_next[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_next[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]/Q} .original_name {mcs4_core/ram_0/rfsh_next[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]} .original_name {{mcs4_core/ram_0/rfsh_next[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_next[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]/Q} .original_name {mcs4_core/ram_0/rfsh_next[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]} .original_name {{mcs4_core/ram_0/rfsh_next[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_next[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]/Q} .original_name {mcs4_core/ram_0/rfsh_next[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]} .original_name {{mcs4_core/ram_0/rfsh_next[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_next[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]/Q} .original_name {mcs4_core/ram_0/rfsh_next[4]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg .original_name mcs4_core/ram_0/timing_recovery/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg .original_name mcs4_core/ram_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg .original_name mcs4_core/ram_0/timing_recovery/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg .original_name mcs4_core/ram_0/timing_recovery/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg .original_name mcs4_core/ram_0/timing_recovery/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a31/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg .original_name mcs4_core/ram_0/timing_recovery/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg/Q .original_name mcs4_core/ram_0/timing_recovery/a32/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg .original_name mcs4_core/ram_0/timing_recovery/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg/Q .original_name mcs4_core/ram_0/timing_recovery/m11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg .original_name mcs4_core/ram_0/timing_recovery/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg/Q .original_name mcs4_core/ram_0/timing_recovery/m12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg .original_name mcs4_core/ram_0/timing_recovery/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg/Q .original_name mcs4_core/ram_0/timing_recovery/m21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg .original_name mcs4_core/ram_0/timing_recovery/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg .original_name mcs4_core/ram_0/timing_recovery/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg .original_name mcs4_core/ram_0/timing_recovery/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg .original_name mcs4_core/ram_0/timing_recovery/x31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x31/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg .original_name mcs4_core/ram_0/timing_recovery/x32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x32/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]} .original_name {{mcs4_core/rom_0/data_out[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]} .single_bit_orig_name {mcs4_core/rom_0/data_out[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]/Q} .original_name {mcs4_core/rom_0/data_out[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]} .original_name {{mcs4_core/rom_0/data_out[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]} .single_bit_orig_name {mcs4_core/rom_0/data_out[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]/Q} .original_name {mcs4_core/rom_0/data_out[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]} .original_name {{mcs4_core/rom_0/data_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_0/data_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]/Q} .original_name {mcs4_core/rom_0/data_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]} .original_name {{mcs4_core/rom_0/data_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_0/data_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]/Q} .original_name {mcs4_core/rom_0/data_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]} .original_name {{mcs4_core/rom_0/io_out[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]} .single_bit_orig_name {mcs4_core/rom_0/io_out[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]/Q} .original_name {mcs4_core/rom_0/io_out[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]/QN} .original_name {mcs4_core/rom_0/io_out[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]} .original_name {{mcs4_core/rom_0/io_out[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]} .single_bit_orig_name {mcs4_core/rom_0/io_out[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]/Q} .original_name {mcs4_core/rom_0/io_out[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]/QN} .original_name {mcs4_core/rom_0/io_out[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .original_name {{mcs4_core/rom_0/io_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_0/io_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/Q} .original_name {mcs4_core/rom_0/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/QN} .original_name {mcs4_core/rom_0/io_out[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .original_name {{mcs4_core/rom_0/io_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_0/io_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/Q} .original_name {mcs4_core/rom_0/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/QN} .original_name {mcs4_core/rom_0/io_out[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg .original_name mcs4_core/rom_0/n0135
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg .single_bit_orig_name mcs4_core/rom_0/n0135
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg/Q .original_name mcs4_core/rom_0/n0135/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg .original_name mcs4_core/rom_0/n0161
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg .single_bit_orig_name mcs4_core/rom_0/n0161
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg/Q .original_name mcs4_core/rom_0/n0161/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg .original_name mcs4_core/rom_0/srcff
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg .single_bit_orig_name mcs4_core/rom_0/srcff
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg/Q .original_name mcs4_core/rom_0/srcff/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg .original_name mcs4_core/rom_0/timing_recovery/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg .original_name mcs4_core/rom_0/timing_recovery/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg .original_name mcs4_core/rom_0/timing_recovery/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg .original_name mcs4_core/rom_0/timing_recovery/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a31
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a31/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg .original_name mcs4_core/rom_0/timing_recovery/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a32/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg .original_name mcs4_core/rom_0/timing_recovery/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/m11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg/Q .original_name mcs4_core/rom_0/timing_recovery/m11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg .original_name mcs4_core/rom_0/timing_recovery/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg/Q .original_name mcs4_core/rom_0/timing_recovery/m12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg .original_name mcs4_core/rom_0/timing_recovery/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/m21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg/Q .original_name mcs4_core/rom_0/timing_recovery/m21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg .original_name mcs4_core/rom_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg/Q .original_name mcs4_core/rom_0/timing_recovery/m22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg .original_name mcs4_core/rom_0/timing_recovery/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/x11
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg/Q .original_name mcs4_core/rom_0/timing_recovery/x11/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg .original_name mcs4_core/rom_0/timing_recovery/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg/Q .original_name mcs4_core/rom_0/timing_recovery/x12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg .original_name mcs4_core/rom_0/timing_recovery/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/x21
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg/Q .original_name mcs4_core/rom_0/timing_recovery/x21/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg .original_name mcs4_core/rom_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg/Q .original_name mcs4_core/rom_0/timing_recovery/x22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg .original_name mcs4_core/rom_1/chipsel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg .single_bit_orig_name mcs4_core/rom_1/chipsel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg/Q .original_name mcs4_core/rom_1/chipsel/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]} .original_name {{mcs4_core/rom_1/data_out[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]} .single_bit_orig_name {mcs4_core/rom_1/data_out[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]/Q} .original_name {mcs4_core/rom_1/data_out[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]} .original_name {{mcs4_core/rom_1/data_out[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]} .single_bit_orig_name {mcs4_core/rom_1/data_out[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]/Q} .original_name {mcs4_core/rom_1/data_out[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]} .original_name {{mcs4_core/rom_1/data_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_1/data_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]/Q} .original_name {mcs4_core/rom_1/data_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]/Q} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]} .original_name {{mcs4_core/rom_1/data_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_1/data_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]/Q} .original_name {mcs4_core/rom_1/data_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]/Q} .dont_touch false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg .original_name mcs4_core/rom_1/extbusdrive
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg .single_bit_orig_name mcs4_core/rom_1/extbusdrive
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg/Q .original_name mcs4_core/rom_1/extbusdrive/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]} .original_name {{mcs4_core/rom_1/io_out[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]} .single_bit_orig_name {mcs4_core/rom_1/io_out[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]/Q} .original_name {mcs4_core/rom_1/io_out[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]/QN} .original_name {mcs4_core/rom_1/io_out[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]} .original_name {{mcs4_core/rom_1/io_out[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]} .single_bit_orig_name {mcs4_core/rom_1/io_out[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]/Q} .original_name {mcs4_core/rom_1/io_out[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]/QN} .original_name {mcs4_core/rom_1/io_out[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .original_name {{mcs4_core/rom_1/io_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_1/io_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/Q} .original_name {mcs4_core/rom_1/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/QN} .original_name {mcs4_core/rom_1/io_out[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .original_name {{mcs4_core/rom_1/io_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_1/io_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/Q} .original_name {mcs4_core/rom_1/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/QN} .original_name {mcs4_core/rom_1/io_out[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg .original_name mcs4_core/rom_1/n0135
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg .single_bit_orig_name mcs4_core/rom_1/n0135
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg/Q .original_name mcs4_core/rom_1/n0135/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg .original_name mcs4_core/rom_1/n0161
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg .single_bit_orig_name mcs4_core/rom_1/n0161
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg/Q .original_name mcs4_core/rom_1/n0161/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg .original_name mcs4_core/rom_1/srcff
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg .single_bit_orig_name mcs4_core/rom_1/srcff
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg/Q .original_name mcs4_core/rom_1/srcff/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]} .original_name {{mcs4_core/shiftreg/cp_delay[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]} .single_bit_orig_name {mcs4_core/shiftreg/cp_delay[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]/Q} .original_name {mcs4_core/shiftreg/cp_delay[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]} .original_name {{mcs4_core/shiftreg/cp_delay[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]} .single_bit_orig_name {mcs4_core/shiftreg/cp_delay[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]/Q} .original_name {mcs4_core/shiftreg/cp_delay[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]} .original_name {{mcs4_core/shiftreg/cp_delay[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]} .single_bit_orig_name {mcs4_core/shiftreg/cp_delay[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]/Q} .original_name {mcs4_core/shiftreg/cp_delay[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg .original_name mcs4_core/shiftreg/cp_delayed
set_db -quiet inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg .single_bit_orig_name mcs4_core/shiftreg/cp_delayed
set_db -quiet inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg/Q .original_name mcs4_core/shiftreg/cp_delayed/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]} .original_name {{mcs4_core/shiftreg/shifter[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]/Q} .original_name {mcs4_core/shiftreg/shifter[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]} .original_name {{mcs4_core/shiftreg/shifter[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]/Q} .original_name {mcs4_core/shiftreg/shifter[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]} .original_name {{mcs4_core/shiftreg/shifter[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]/Q} .original_name {mcs4_core/shiftreg/shifter[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]} .original_name {{mcs4_core/shiftreg/shifter[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]/Q} .original_name {mcs4_core/shiftreg/shifter[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]} .original_name {{mcs4_core/shiftreg/shifter[4]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[4]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]/Q} .original_name {mcs4_core/shiftreg/shifter[4]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]} .original_name {{mcs4_core/shiftreg/shifter[5]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[5]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]/Q} .original_name {mcs4_core/shiftreg/shifter[5]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]} .original_name {{mcs4_core/shiftreg/shifter[6]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[6]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]/Q} .original_name {mcs4_core/shiftreg/shifter[6]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]} .original_name {{mcs4_core/shiftreg/shifter[7]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[7]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]/Q} .original_name {mcs4_core/shiftreg/shifter[7]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]} .original_name {{mcs4_core/shiftreg/shifter[8]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[8]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]/Q} .original_name {mcs4_core/shiftreg/shifter[8]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]} .original_name {{mcs4_core/shiftreg/shifter[9]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]} .single_bit_orig_name {mcs4_core/shiftreg/shifter[9]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]/Q} .original_name {mcs4_core/shiftreg/shifter[9]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .original_name {{mcs4_core/ram_0/char_num[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .single_bit_orig_name {mcs4_core/ram_0/char_num[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]/Q} .original_name {mcs4_core/ram_0/char_num[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]/QN} .original_name {mcs4_core/ram_0/char_num[3]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .original_name {{mcs4_core/ram_0/char_num[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .single_bit_orig_name {mcs4_core/ram_0/char_num[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]/Q} .original_name {mcs4_core/ram_0/char_num[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]/QN} .original_name {mcs4_core/ram_0/char_num[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .original_name {{mcs4_core/ram_0/reg_num[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/reg_num[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]/Q} .original_name {mcs4_core/ram_0/reg_num[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]/QN} .original_name {mcs4_core/ram_0/reg_num[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .original_name mcs4_core/i4004/alu_board/n0550
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0550
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg/Q .original_name mcs4_core/i4004/alu_board/n0550/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg/QN .original_name mcs4_core/i4004/alu_board/n0550/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .original_name {{mcs4_core/i4004/alu_board/acc_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .single_bit_orig_name {mcs4_core/i4004/alu_board/acc_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]/Q} .original_name {mcs4_core/i4004/alu_board/acc_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]/QN} .original_name {mcs4_core/i4004/alu_board/acc_out[3]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .original_name mcs4_core/ram_0/src_ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .single_bit_orig_name mcs4_core/ram_0/src_ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg/Q .original_name mcs4_core/ram_0/src_ram_sel/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg/QN .original_name mcs4_core/ram_0/src_ram_sel/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .original_name {{mcs4_core/clockgen/clockdiv[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]/Q} .original_name {mcs4_core/clockgen/clockdiv[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]/QN} .original_name {mcs4_core/clockgen/clockdiv[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .original_name {{mcs4_core/i4004/sp_board/row[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/row[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]/Q} .original_name {mcs4_core/i4004/sp_board/row[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]/QN} .original_name {mcs4_core/i4004/sp_board/row[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .original_name mcs4_core/ram_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg/QN .original_name mcs4_core/ram_0/timing_recovery/x22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .original_name mcs4_core/rom_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg/QN .original_name mcs4_core/rom_0/timing_recovery/a12/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .original_name {{mcs4_core/shiftreg/cp_delay[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .single_bit_orig_name {mcs4_core/shiftreg/cp_delay[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]/Q} .original_name {mcs4_core/shiftreg/cp_delay[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]/QN} .original_name {mcs4_core/shiftreg/cp_delay[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .original_name mcs4_core/i4004/tio_board/L
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .single_bit_orig_name mcs4_core/i4004/tio_board/L
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg/Q .original_name mcs4_core/i4004/tio_board/L/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg/QN .original_name mcs4_core/i4004/tio_board/L/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .original_name {{mcs4_core/ram_0/reg_num[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .single_bit_orig_name {mcs4_core/ram_0/reg_num[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]/Q} .original_name {mcs4_core/ram_0/reg_num[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]/QN} .original_name {mcs4_core/ram_0/reg_num[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .original_name {{mcs4_core/i4004/sp_board/row[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .single_bit_orig_name {mcs4_core/i4004/sp_board/row[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]/Q} .original_name {mcs4_core/i4004/sp_board/row[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]/QN} .original_name {mcs4_core/i4004/sp_board/row[1]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a32/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/a32/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/a12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .original_name mcs4_core/ram_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg/Q .original_name mcs4_core/ram_0/timing_recovery/m22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg/QN .original_name mcs4_core/ram_0/timing_recovery/m22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .original_name mcs4_core/i4004/id_board/n0343
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0343
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg/Q .original_name mcs4_core/i4004/id_board/n0343/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg/QN .original_name mcs4_core/i4004/id_board/n0343/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .original_name mcs4_core/i4004/alu_board/n0749
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0749
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg/Q .original_name mcs4_core/i4004/alu_board/n0749/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg/QN .original_name mcs4_core/i4004/alu_board/n0749/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .original_name mcs4_core/i4004/alu_board/n0750
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0750
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg/Q .original_name mcs4_core/i4004/alu_board/n0750/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg/QN .original_name mcs4_core/i4004/alu_board/n0750/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .original_name mcs4_core/i4004/alu_board/n0751
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0751
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg/Q .original_name mcs4_core/i4004/alu_board/n0751/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg/QN .original_name mcs4_core/i4004/alu_board/n0751/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .original_name mcs4_core/ram_0/io
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .single_bit_orig_name mcs4_core/ram_0/io
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_io_reg/Q .original_name mcs4_core/ram_0/io/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_io_reg/QN .original_name mcs4_core/ram_0/io/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .original_name {{mcs4_core/i4004/ip_board/row[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/row[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]/Q} .original_name {mcs4_core/i4004/ip_board/row[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]/QN} .original_name {mcs4_core/i4004/ip_board/row[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .original_name {{mcs4_core/ram_0/rfsh_addr[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]/QN} .original_name {mcs4_core/ram_0/rfsh_addr[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .original_name {{mcs4_core/i4004/ip_board/row[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/row[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]/Q} .original_name {mcs4_core/i4004/ip_board/row[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]/QN} .original_name {mcs4_core/i4004/ip_board/row[1]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/a22/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .original_name mcs4_core/i4004/tio_board/timing_generator/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/m22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/m22/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .original_name {{mcs4_core/i4004/sp_board/row[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/row[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]/Q} .original_name {mcs4_core/i4004/sp_board/row[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]/QN} .original_name {mcs4_core/i4004/sp_board/row[2]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .original_name mcs4_core/i4004/tio_board/poc
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .single_bit_orig_name mcs4_core/i4004/tio_board/poc
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg/Q .original_name mcs4_core/i4004/tio_board/poc/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg/QN .original_name mcs4_core/i4004/tio_board/poc/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .original_name {{mcs4_core/i4004/id_board/opa[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .single_bit_orig_name {mcs4_core/i4004/id_board/opa[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]/Q} .original_name {mcs4_core/i4004/id_board/opa[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]/QN} .original_name {mcs4_core/i4004/id_board/opa[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x32/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/x32/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .original_name mcs4_core/i4004/tio_board/timing_generator/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/x12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/x12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/x12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .original_name mcs4_core/i4004/tio_board/timing_generator/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/m12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/m12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/m12/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .original_name {{mcs4_core/ram_0/rfsh_addr[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[1]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .original_name {{mcs4_core/ram_0/rfsh_addr[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[2]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .original_name {{mcs4_core/ram_0/rfsh_addr[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[3]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet inst:mcs4_pad_frame/pad_clear_pad .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 37 22}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 51 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 52 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad2 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 53 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad3 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 54 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad4 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 55 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad5 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 56 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad6 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 57 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad7 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 58 20}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 40 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 41 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out2 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 42 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out3 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 43 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out4 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 44 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out5 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 45 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out6 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 46 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out7 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 47 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out8 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 48 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out9 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 49 19}}
set_db -quiet inst:mcs4_pad_frame/pad_poc_pad .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 35 20}}
set_db -quiet inst:mcs4_pad_frame/pad_sysclk .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 33 19}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 61 18}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 62 18}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd_ior .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 66 24}}
set_db -quiet inst:mcs4_pad_frame/pad_vss .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 63 17}}
set_db -quiet inst:mcs4_pad_frame/pad_vss_ior .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 67 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17561 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17562 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18148__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18149__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18150__6260 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 95 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18151__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18152__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18153__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18156__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18157__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18158__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18159__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18160__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18161__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18162__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 152 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18163__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18164__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18165__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 157 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18166__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18167__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 112 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18168__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18169__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 133 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18170__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18171__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18172__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18173__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18174__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18175__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18176 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18177__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18178__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18179__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18180__5107 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 133 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18182__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 142 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18183__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18186 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18187 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18188 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25731__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25732__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25733__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25734__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25735__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25736__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25737__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25739__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25740__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25741__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25742__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25744__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25745__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25746__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25747__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25748__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25749__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25750__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25751__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25752__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25756__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25757__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25758__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25759__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25760__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25761__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25762__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25763__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25764__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25765__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25766__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25767__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25768__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25769__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25770__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25771__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25772__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25773__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25774__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25775__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25776__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25777__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25778__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25779__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25781__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25783__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25784__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25785__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25786__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25788__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25789__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25790__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25791__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25792__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25793__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25794__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25795__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25796__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25797__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25798__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25799__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25800__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25801__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25802__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25803__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25804__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25805__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25806__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25807__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25808__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25809__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25810__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25811__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25812__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25813__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25814__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25815__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25816__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25817__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25818__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25819__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25820__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25821__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25822__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25823__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25824__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25825__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25826__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25827__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25828__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25829__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25830__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25831__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25832__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25833__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25834__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25835__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25836__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25837__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25838__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25839__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25840__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25841__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25842__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25843__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25844__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25845__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25846__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25847__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25848__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25849__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25850__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25851__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25852__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25853__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25854__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25855__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25856__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25857__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25858__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25859__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25860__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25861__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25862__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25863__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25864__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25865__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25866__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25867__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25868__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25869__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25870__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25871__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25872__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25873__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25874__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25875__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25876__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25877__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25878__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25879__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25880__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25881__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25882__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25883__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25884__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25885__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25886__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25887__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25888__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25889__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25890__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25891__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25892__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25893__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25894__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25895__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25896__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25897__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25898__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25899__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25900__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25901__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25902__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25903__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25904__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25905__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25906__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25907__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25908__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25909__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25910__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25911__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25912__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25913__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25914__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25915__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25916__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25917__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25918__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25919__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25920__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25921__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25922__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25923__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25924__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25925__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25926__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25927__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25928__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25929__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25930__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25931__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25932__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25933__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25934__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25935__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25936__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25937__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25938__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25939__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25940__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25941__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25942__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25943__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25944__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25945__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25946__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25947__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25948__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25949__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25950__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25951__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25952__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25953__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25954__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25955__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25956__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25957__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25958__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25959__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25960__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25961__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25962__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25963__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25964__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25965__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25966__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25967__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25968__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25969__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25970__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25971__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25972__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25973__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25974__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25975__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25976__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25977__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25978__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25979__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25980__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25981__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25982__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25983__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25984__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25985__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25986__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25987__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25988__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25989__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25990__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25991__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25992__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25993__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25994__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25995__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25996__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25997__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25998__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25999__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26000__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26001__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26002__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26003__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26004__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26005__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26006__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26007__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26008__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26009__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26010__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26011__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26012__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26013__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26014__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26015__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26016__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26017__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26018__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26019__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26020__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26021__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26022__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26023__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26024__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26025__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26026__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26027__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26028__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26029__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26030__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26031__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26032__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26033__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26034__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26035 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26037__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26038__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26039__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26040__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26041__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26042__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26043__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26044__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26045__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26046__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26047__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26048__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26049__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26050__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26051__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26052__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26053__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26054__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26055__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26056 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26057 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26058 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26060__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26061__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26062 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26063 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26064 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26065__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26066__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26067__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26068__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26069__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26070__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26072 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26074__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26075__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26076__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26077__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26078__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26079 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26081__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26082__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26083__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26084 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26085__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26086__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26087__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26088__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26089 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26090__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26091__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26092__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26093__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26094__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26095__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26096__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26097__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26099__7482 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26100__4733 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26101__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26102__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26103__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26104__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g26105 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g256__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18901__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g257__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18902__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18903__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g258__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18904__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18905__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g259__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18906__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18907__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18908__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18909__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18910__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18911__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18912__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18913__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18914__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18915__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18916__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18917__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18918__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18920__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g213__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g214__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g215__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g216__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18921__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18923__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g191__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g190__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g192__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g193__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g175__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g176__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g177__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g178__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18924 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18926__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18927__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18928__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18929__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18930__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18931__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18932__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18933__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g53__8246 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g52__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g3__6131 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g54__1881 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18934 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18935 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18936__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18937__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18938__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18939__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18940__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18941__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18942__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18943__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18944__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18945__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18946__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18947__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18948__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18949__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18950__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18951__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18952__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18953__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18954__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18955__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18956 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18957 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18958__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18959__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18960__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18961__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18963__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18966 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18968__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18969__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18970__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18971__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18972__7482 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18973__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18977__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18978__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18979__9945 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18980__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18981__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18982__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18983 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18984 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g5__7410 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g4__6417 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g6__5477 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18986__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18987__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g1__6260 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18988__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18989__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18990__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18991__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18992__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18993 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18995__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18996__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18997__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18998__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18999__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19000__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19001__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19002__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19003__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19004__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19005__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19006__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19007__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g19009 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk1_reg .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_clockgen_clk2_reg .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[0]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[1]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[3]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[4]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_1_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 35}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0870_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 35}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0871_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0872_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0873_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0887_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 35}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0889_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0891_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0893_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_tmp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0360_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 204 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0362_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0380_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 213 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0397_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 183 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0405_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 179 15}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0414_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 224 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0425_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 240 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0433_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 232 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0797_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 224 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0801_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 232 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0805_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 240 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opr_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_ptr_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_addr_rfsh_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_in_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 224 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_carry_out_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 224 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[0][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[1][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[2][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_array_reg[3][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_dram_temp_reg[11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_incr_in_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0374_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 161 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0384_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 154 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0416_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 147 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0438_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 138 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_n0517_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 129 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_din_n_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[0][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[1][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[2][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[3][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[4][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[5][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[6][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_array_reg[7][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_dram_temp_reg[7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0592_reg .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 125 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_n0615_reg .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 117 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_reg_rfsh_2_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_data_o_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0278_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 95 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0685_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 125 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0699_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 125 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_n0707_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 125 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_sync_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 82 1}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x31_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_opa_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_oport_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 131 30}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram0_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram1_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram2_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_ram3_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_ram_sel_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[4]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_next_reg[4]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 5}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_data_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0135_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 237 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_n0161_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 216 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_srcff_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 200 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_chipsel_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 151 19}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_data_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 107 9}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_extbusdrive_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 119 28}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 252 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0135_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 237 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_n0161_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 216 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_1_srcff_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 200 17}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[1]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[2]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[3]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delayed_reg .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 19}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[0]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[1]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[2]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[3]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[4]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[5]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[6]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[7]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[8]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_shifter_reg[9]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30468__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30476__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30477__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30478__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30479__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30480__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30481__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30482__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30483__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30484__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30485__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30486__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30487__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30488__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30489__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30490__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30491__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30492__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30493__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30494__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30495__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30496__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30502__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30503__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30504__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30505__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30506__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30507__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30508__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30509__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30511__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30512__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30513__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30514__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30515__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30517__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30518__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30519__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30521__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30522__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30523__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30525__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30527__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30528__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30529__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30532__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30533__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30536__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30537__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30538__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30539__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30542__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30543__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30544__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30545__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30547__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30550__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30551__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30552__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30553__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30554__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30555__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30557__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30558__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30559__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30560__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30563__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30564__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30565__1881 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30732__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30733__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30734__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30735__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30736__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30738__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30740__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30899__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30901__6417 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30902__5477 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30903__2398 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30904__5107 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30906__6260 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30907__4319 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30909__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30911__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30912__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30914__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30915__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30916__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30917__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30918__5122 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30919__8246 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30920__7098 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30923__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30924__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30925__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30927__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30929__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30931__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30932__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30933__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30934__2883 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30936__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30937__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30939__7410 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30940__6417 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30942__5477 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30944__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30945__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30946__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30947__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30948__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30949__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30950__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30951__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30952__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30953__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30954__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30956__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30958__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30959__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30960__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30961__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30962__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30963__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30964__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30965__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30967__9315 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30976__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30977__2883 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30978__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30979__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30980__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30981__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30982__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30983__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30984__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30985__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30986__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30987__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30988__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30989__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30990__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30991__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30992__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30993__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30994__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30995__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30996__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30997__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30998__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30999__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31000__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31001__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31002__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31003__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31004__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31005__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31006__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31007__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31008__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31009__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31010__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31011__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31012__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31013__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31014__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31016__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31017__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31020__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31021__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31022__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31023__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31024__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31025__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31026__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31027__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31028__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31029__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31030__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31031__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31032__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31033__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31034__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31035__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31036__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31037__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31038__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31039__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31040__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31041__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31042__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31043__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31044__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31045__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31046__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31047__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31048__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31049__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31050__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31051__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31052__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31053__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31054__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31055__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31056__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31057__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31058__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31059__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31060__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31061__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31062__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31063__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31108 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31109 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31110__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 185 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31111__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31112__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31113__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31114__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31125__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31127__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31128__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31129__6260 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31130__4319 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31131__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31132__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31133__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31134__3680 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31135__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31136__2802 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31137__1705 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31138__5122 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31139__8246 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31140__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31141__6131 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31142__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31143__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31144__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31146__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31147__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31148__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31149__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31150__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31151__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31152__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31153__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31155__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31156__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31157__2398 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31171__5107 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31172__6260 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31176__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31177__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31178__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31179__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31181__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31182__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31183__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31184__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31185__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31188__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31189__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31190__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31191__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31192__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 92 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31193__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31194__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31195__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31196__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31197__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31198__2883 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31199__2346 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31200__1666 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31201__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31202__6417 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31204__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31211__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31212__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31213__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31214__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31216__8428 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31217__5526 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31218__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31219__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31220__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31221__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31222__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31223__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31224__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31225__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31226__6131 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31227__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31228__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31229__7482 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31230__4733 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31279 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31281__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31283__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31284__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31286__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 170 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31287__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31288__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31289__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31290__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31291__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31292__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 115 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31293__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31294__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31295__5526 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31313__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31315__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31318__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31322__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 57 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31323__1705 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31324__5122 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31325__8246 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31326__7098 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31327__6131 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31328 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31329__1881 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31330__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31331__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31332__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31333__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31335__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31336__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31337__2346 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31338__1666 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31342__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31358__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31362 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31363__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31364__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31365__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31366__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31367__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31368__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31370__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31371__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31372__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31373__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31374__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31376__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 170 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31377__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31378__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31379__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31380__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31381__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31382__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31383__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31384__6161 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31385__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31387__9945 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31388__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31389__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31390__1666 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31391__7410 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31392__6417 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31393__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31394__2398 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31396__5107 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31397__6260 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31398__4319 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31399__8428 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31402__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31423__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31425__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31428__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31429__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31430__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31431__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31432__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31433__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31434__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31435__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31436__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31437__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31438__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31439__6161 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31440__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31441__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31444__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31445__2346 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31446__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 170 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31447__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31448__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31449__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31450__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31451__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31452__6260 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31453__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31454__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31455__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31457__6783 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31458__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 170 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31459__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31460__2802 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31473__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31484__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31485 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31486 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31487__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31488__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31489__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31490__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31491__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31492__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31493__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31494__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31495__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31496__9945 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31497__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31499__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31500__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31501__7410 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31502__6417 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31503__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31504__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31505__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31506__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31507__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31508__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31510__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31511__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31512__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31514__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31515__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31518 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31519 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31521__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31522__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31523__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31524__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31525__6131 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31526__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31527__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31528__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31529__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31530__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31532__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31533__9945 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31534__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31535__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31537__1666 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31538__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31539__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31540__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 172 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31541__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31542__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31543__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 135 39}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31544__4319 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31545__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31546__5526 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 65 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31547 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31548__6783 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31549__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31550__1617 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31551__2802 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31552__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31553__5122 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31554__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31555__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31556__6131 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31557__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31558__5115 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31559__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31562__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31563__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31564__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31565__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31566__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31567__2346 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31568__1666 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31569__7410 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31570__6417 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31571__5477 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31572__2398 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31573__5107 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31574__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31575__4319 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31576__8428 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31577__5526 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31637 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31639 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31640 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31642 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31643 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31644__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31645__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31646__1617 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31647__2802 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31648__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31649__5122 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31650__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31651__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31652__6131 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31653__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31658__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31668__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31669__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31671 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31674 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31675 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31676 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31681 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31682 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31684 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31686 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31687 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 158 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31689 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31690 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31691 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31692 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31694 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31701 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31703 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 118 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31704 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31706 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31707 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31708 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31710 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31711 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31712 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31713 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31714 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31715 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31716 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31717 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31719 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31720 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31721 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31722 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 118 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31723 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31724 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31725 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31726 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31728 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31729 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31730 .file_row_col {{../../rtl/verilog/./i4004/alu.v 238 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31731 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31732 .file_row_col {{../../rtl/verilog/./i4004/alu.v 82 44}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31733 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31734 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31735 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31736 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31743 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 104 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31745 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31746 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31747 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 158 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31748 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31749 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31750 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31751 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31752 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31753 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31754 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 131 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31755 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31756 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31757 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31758 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31759 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31760 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31761 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31762 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31763 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31764 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31765 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31766 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31767 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31768 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31769 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31771 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31772 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31773 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31774 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31775 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31776 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31778 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31779 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31780 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31781 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31782 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31783 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31784 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31785 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31787 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31788 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31789 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31790 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31791 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31792 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31793 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31794 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31795 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31797 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31798 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31799 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 179 15}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31800 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31806 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31824 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31834 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31838 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31839 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31843 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31852 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31853 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31855 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31861 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31866 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31868 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31875 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31884 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31885 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31905 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31906 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31907 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31911 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31923 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31932 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 25 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31950 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31953 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31957 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 132 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 28}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 116 10}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 104 28}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/g2 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 120 28}}
set_db -quiet inst:mcs4_pad_frame/g32035 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32036 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32037 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32040 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32041 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32042 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32043 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/g32044 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32045 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32046 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/g32047 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/g32048 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 65 31}}
set_db -quiet inst:mcs4_pad_frame/g32049 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/g32050 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/g32051 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32052 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/g32053 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/g32054 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32055 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32057 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g32058 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32059 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32060 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g32061 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32064 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g32065 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/g32066 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/g32067 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/g32068 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/g32070 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4_pad_frame/g32071 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/g32072 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/g32073 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32074 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32075 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g3 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32076 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/g32077 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/g32078 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32079 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32080 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32085 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32086 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32091 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32092 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32097 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32103 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32104 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32109 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32110 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32282 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32286 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32288 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32289 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32609 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32643 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32647 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32659 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32667 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs32668 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32707 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32708 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32709 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32710 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32711 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32712 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32713 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32714 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32757 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32758 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32759 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32760 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32761 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32762 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32763 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32764 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32806 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32807 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32808 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32809 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32810 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32811 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32812 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32813 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32855 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32856 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32857 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32858 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32859 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32860 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32861 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32862 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32886 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32898 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32899 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32910 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32922 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32923 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32934 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32946 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32958 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32970 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32982 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32994 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33006 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33018 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33030 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33042 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33054 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33066 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33078 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33090 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33102 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp33103 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet inst:mcs4_pad_frame/g33114 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g33115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g33116 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g33117 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g33118 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g33119 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g33120 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g33121 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g33122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g33123 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g33124 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/g33125 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/g33126 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 40}}
set_db -quiet inst:mcs4_pad_frame/g33127 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 40}}
# there is no file_row_col attribute information available
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 20.11-s111_1
## flowkit v20.10-p027_1
## Written on 21:52:56 15-May 2025
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 13b9451d-79b0-4638-a416-86a35afed336}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_reset_time_after_flow_init -obj_type root]} {set_db flow_reset_time_after_flow_init false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_yamllint_exec -obj_type root]} {set_db flow_yamllint_exec yamllint}

#############################################################
#####   User Defined Attributes   ###########################

