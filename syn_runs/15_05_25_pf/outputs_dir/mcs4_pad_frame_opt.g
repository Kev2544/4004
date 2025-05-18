######################################################################

# Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu May 15 06:31:52 EDT 2025

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
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 142 0.0 39.297027} {to_generic 43 191 23 67} {first_condense 12 208 10 83} {PBS_Generic_Opt-Post 68 210 43.375676 82.672703} {{PBS_Generic-Postgen HBO Optimizations} 1 211 1.0 83.672703} {PBS_TechMap-Start 0 219 0.0 86.672703} {{PBS_TechMap-Premap HBO Optimizations} 0 219 0.0 86.672703} {second_condense 15 236 15 106} {reify 27 263 45 151} {{PBS_Techmap-Global Mapping} 44 263 42.07892600000001 128.751629} {{PBS_TechMap-Datapath Postmap Operations} 53 316 48.85015799999988 177.6017869999999} {{PBS_TechMap-Postmap HBO Optimizations} 0 316 0.9970329999999876 178.59881999999988} {{PBS_TechMap-Postmap Clock Gating} 0 316 0.0 178.59881999999988} {{PBS_TechMap-Postmap Cleanup} 2 318 1.9658440000000041 180.56466399999988} {PBS_Techmap-Post_MBCI 0 318 0.0 180.56466399999988} {incr_opt 26 349 22 228} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet tinfo_tstamp_file .rs_kevyn.carrillo@iteso.mx.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path ../../syn
set_db -quiet hdl_track_filename_row_col true
set_db -quiet use_area_from_lef true
set_db -quiet flow_metrics_snapshot_uuid 2e687277-786d-45cc-80f6-82aaec5f9606
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
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_2_1 {port:mcs4_pad_frame/VDD0 port:mcs4_pad_frame/VDD0}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_3_1 {port:mcs4_pad_frame/VDD1 port:mcs4_pad_frame/VDD1}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_4_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_5_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name I_DELAY_6_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY {port:mcs4_pad_frame/VDD0 port:mcs4_pad_frame/VDD0}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_6_1 {port:mcs4_pad_frame/VDD1 port:mcs4_pad_frame/VDD1}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_7_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_8_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_9_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_10_1 {{port:mcs4_pad_frame/p_out[9]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_11_1 {{port:mcs4_pad_frame/p_out[8]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_12_1 {{port:mcs4_pad_frame/p_out[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_13_1 {{port:mcs4_pad_frame/p_out[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_14_1 {{port:mcs4_pad_frame/p_out[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_15_1 {{port:mcs4_pad_frame/p_out[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_16_1 {{port:mcs4_pad_frame/p_out[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_17_1 {{port:mcs4_pad_frame/p_out[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_18_1 {{port:mcs4_pad_frame/p_out[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_19_1 {{port:mcs4_pad_frame/p_out[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_20_1 {{port:mcs4_pad_frame/io_pad[7]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_21_1 {{port:mcs4_pad_frame/io_pad[6]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_22_1 {{port:mcs4_pad_frame/io_pad[5]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_23_1 {{port:mcs4_pad_frame/io_pad[4]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_24_1 {{port:mcs4_pad_frame/io_pad[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_25_1 {{port:mcs4_pad_frame/io_pad[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_26_1 {{port:mcs4_pad_frame/io_pad[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:mcs4_pad_frame/view_mcs4_slow/My_CLK -name O_DELAY_27_1 {{port:mcs4_pad_frame/io_pad[0]}}
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name create_clock_delay_domain_1_My_CLK_R_0_1 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_fast/create_clock_delay_domain_1_My_CLK_R_0_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -edge_fall -name create_clock_delay_domain_1_My_CLK_F_0_1 port:mcs4_pad_frame/sysclk
set_db -quiet external_delay:mcs4_pad_frame/view_mcs4_fast/create_clock_delay_domain_1_My_CLK_F_0_1 .clock_network_latency_included true
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_27_1 port:mcs4_pad_frame/poc_pad
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_28_1 port:mcs4_pad_frame/clear_pad
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_29_1 {port:mcs4_pad_frame/VDD0 port:mcs4_pad_frame/VDD0}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_30_1 {port:mcs4_pad_frame/VDD1 port:mcs4_pad_frame/VDD1}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_31_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_32_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -input {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name I_DELAY_33_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_33_1 {port:mcs4_pad_frame/VDD0 port:mcs4_pad_frame/VDD0}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_34_1 {port:mcs4_pad_frame/VDD1 port:mcs4_pad_frame/VDD1}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_35_1 {port:mcs4_pad_frame/VSS port:mcs4_pad_frame/VSS}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_36_1 {port:mcs4_pad_frame/VDD_IOR port:mcs4_pad_frame/VDD_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_37_1 {port:mcs4_pad_frame/VSS_IOR port:mcs4_pad_frame/VSS_IOR}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_38_1 {{port:mcs4_pad_frame/p_out[9]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_39_1 {{port:mcs4_pad_frame/p_out[8]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_40_1 {{port:mcs4_pad_frame/p_out[7]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_41_1 {{port:mcs4_pad_frame/p_out[6]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_42_1 {{port:mcs4_pad_frame/p_out[5]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_43_1 {{port:mcs4_pad_frame/p_out[4]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_44_1 {{port:mcs4_pad_frame/p_out[3]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_45_1 {{port:mcs4_pad_frame/p_out[2]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_46_1 {{port:mcs4_pad_frame/p_out[1]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_47_1 {{port:mcs4_pad_frame/p_out[0]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_48_1 {{port:mcs4_pad_frame/io_pad[7]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_49_1 {{port:mcs4_pad_frame/io_pad[6]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_50_1 {{port:mcs4_pad_frame/io_pad[5]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_51_1 {{port:mcs4_pad_frame/io_pad[4]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_52_1 {{port:mcs4_pad_frame/io_pad[3]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_53_1 {{port:mcs4_pad_frame/io_pad[2]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_54_1 {{port:mcs4_pad_frame/io_pad[1]}}
external_delay -accumulate -output {600.0 600.0 600.0 600.0} -clock clock:mcs4_pad_frame/view_mcs4_fast/My_CLK -name O_DELAY_55_1 {{port:mcs4_pad_frame/io_pad[0]}}
path_group -paths [specify_paths -mode mode:mcs4_pad_frame/view_mcs4_slow -to clock:mcs4_pad_frame/view_mcs4_slow/My_CLK]  -name My_CLK -group cost_group:mcs4_pad_frame/My_CLK -user_priority -1047552
path_group -paths [specify_paths -mode mode:mcs4_pad_frame/view_mcs4_fast -to clock:mcs4_pad_frame/view_mcs4_fast/My_CLK]  -name My_CLK -group cost_group:mcs4_pad_frame/My_CLK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:mcs4_pad_frame .seq_reason_deleted_internal {{mcs4_core/rom_0/n0128_reg unloaded mcs4_core/rom_0/n0128} {mcs4_core/rom_1/n0128_reg unloaded mcs4_core/rom_1/n0128} {{mcs4_core/ram_0/oport_reg[1]} unloaded {mcs4_core/ram_0/oport[1]}} {{mcs4_core/ram_0/oport_reg[2]} unloaded {mcs4_core/ram_0/oport[2]}} {{mcs4_core/ram_0/oport_reg[3]} unloaded {mcs4_core/ram_0/oport[3]}} {mcs4_core/shiftreg/serial_out_reg unloaded mcs4_core/shiftreg/serial_out} {mcs4_core/i4004/tio_board/n0432_reg {{constant 1}} mcs4_core/i4004/tio_board/n0432} {{mcs4_core/rom_0/fetch_addr_reg[4]} unloaded {mcs4_core/rom_0/fetch_addr[4]}} {{mcs4_core/rom_0/fetch_addr_reg[5]} unloaded {mcs4_core/rom_0/fetch_addr[5]}} {{mcs4_core/rom_0/fetch_addr_reg[6]} unloaded {mcs4_core/rom_0/fetch_addr[6]}} {{mcs4_core/rom_0/fetch_addr_reg[7]} unloaded {mcs4_core/rom_0/fetch_addr[7]}} {{mcs4_core/rom_store0/rom_data_reg[1]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[1]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[2]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[2]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[3]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[3]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[4]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[4]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[5]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[5]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[6]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[6]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store0/rom_data_reg[7]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}} {mcs4_core/rom_store0/rom_data[7]} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[1]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[1]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[2]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[2]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[3]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[3]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[4]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[4]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[5]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[5]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[6]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[6]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[7]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}} {mcs4_core/rom_store1/rom_data[7]} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/rom_0/fetch_addr_reg[1]} unloaded {mcs4_core/rom_0/fetch_addr[1]}} {{mcs4_core/rom_0/fetch_addr_reg[2]} unloaded {mcs4_core/rom_0/fetch_addr[2]}} {{mcs4_core/rom_0/fetch_addr_reg[3]} unloaded {mcs4_core/rom_0/fetch_addr[3]}} {{mcs4_core/rom_0/io_out_reg[0]} unloaded {mcs4_core/rom_0/io_out[0]}} {{mcs4_core/rom_0/io_out_reg[1]} unloaded {mcs4_core/rom_0/io_out[1]}} {{mcs4_core/rom_1/fetch_addr_reg[1]} unloaded {mcs4_core/rom_1/fetch_addr[1]}} {{mcs4_core/rom_1/fetch_addr_reg[2]} unloaded {mcs4_core/rom_1/fetch_addr[2]}} {{mcs4_core/rom_1/fetch_addr_reg[3]} unloaded {mcs4_core/rom_1/fetch_addr[3]}} {{mcs4_core/rom_1/fetch_addr_reg[4]} unloaded {mcs4_core/rom_1/fetch_addr[4]}} {{mcs4_core/rom_1/fetch_addr_reg[5]} unloaded {mcs4_core/rom_1/fetch_addr[5]}} {{mcs4_core/rom_1/fetch_addr_reg[6]} unloaded {mcs4_core/rom_1/fetch_addr[6]}} {{mcs4_core/rom_1/fetch_addr_reg[7]} unloaded {mcs4_core/rom_1/fetch_addr[7]}} {{mcs4_core/rom_1/io_out_reg[0]} unloaded {mcs4_core/rom_1/io_out[0]}} {{mcs4_core/rom_1/io_out_reg[1]} unloaded {mcs4_core/rom_1/io_out[1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[20][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[21][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[22][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[23][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[28][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[29][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[30][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[31][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[20][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[21][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[22][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[23][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[28][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[29][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[30][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[31][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[22][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[23][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[30][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[31][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[21][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[22][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[23][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[28][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[29][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[30][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[31][3]}} {{mcs4_core/rom_store0/rom_data_reg[0]} {{constant 0(*)}} {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1/rom_data_reg[0]} {{constant 0(*)}} {mcs4_core/rom_store1/rom_data[0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[20][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[21][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[24][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[25][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[26][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[27][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[28][3]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][0]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][0]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][1]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][1]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][2]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][2]}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][3]} {{constant 0}} {mcs4_core/ram_0/ram2/ram_array[29][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[20][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[24][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[25][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[26][3]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][0]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][1]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][2]}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram3/ram_array[27][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[25][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[26][3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[27][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[24][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[25][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[26][3]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][0]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][0]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][1]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][1]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][2]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][2]}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][3]} {{constant 0}} {mcs4_core/ram_0/ram1/ram_array[27][3]}} {{mcs4_core/rom_0/rom_out_reg[0]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[0]}} {{mcs4_core/rom_0/rom_out_reg[1]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[1]}} {{mcs4_core/rom_0/rom_out_reg[2]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[2]}} {{mcs4_core/rom_0/rom_out_reg[3]} {{constant 0(*)}} {mcs4_core/rom_0/rom_out[3]}} {{mcs4_core/rom_1/rom_out_reg[0]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[0]}} {{mcs4_core/rom_1/rom_out_reg[1]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[1]}} {{mcs4_core/rom_1/rom_out_reg[2]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[2]}} {{mcs4_core/rom_1/rom_out_reg[3]} {{constant 0(*)}} {mcs4_core/rom_1/rom_out[3]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][0]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][0]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][1]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][1]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][2]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][2]}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][3]} {{constant 0}} {mcs4_core/ram_0/ram0/ram_array[24][3]}} {mcs4_core/rom_0_chipsel_reg unloaded mcs4_core/rom_0/chipsel} {mcs4_core/rom_0_extbusdrive_reg unloaded mcs4_core/rom_0/extbusdrive} {{mcs4_core/rom_0_fetch_addr_reg[0]} unloaded {mcs4_core/rom_0/fetch_addr[0]}} {{mcs4_core/rom_0_rom_out_reg[0]} unloaded {mcs4_core/rom_0/rom_out[0]}} {{mcs4_core/rom_0_rom_out_reg[1]} unloaded {mcs4_core/rom_0/rom_out[1]}} {{mcs4_core/rom_0_rom_out_reg[2]} unloaded {mcs4_core/rom_0/rom_out[2]}} {{mcs4_core/rom_0_rom_out_reg[3]} unloaded {mcs4_core/rom_0/rom_out[3]}} {{mcs4_core/rom_1_fetch_addr_reg[0]} unloaded {mcs4_core/rom_1/fetch_addr[0]}} {{mcs4_core/rom_1_rom_out_reg[0]} unloaded {mcs4_core/rom_1/rom_out[0]}} {{mcs4_core/rom_1_rom_out_reg[1]} unloaded {mcs4_core/rom_1/rom_out[1]}} {{mcs4_core/rom_1_rom_out_reg[2]} unloaded {mcs4_core/rom_1/rom_out[2]}} {{mcs4_core/rom_1_rom_out_reg[3]} unloaded {mcs4_core/rom_1/rom_out[3]}} {{mcs4_core/rom_store0_rom_data_reg[0]} unloaded {mcs4_core/rom_store0/rom_data[0]}} {{mcs4_core/rom_store1_rom_data_reg[0]} unloaded {mcs4_core/rom_store1/rom_data[0]}} {mcs4_core/rom_1_timing_recovery_a11_reg {{merged with mcs4_core/rom_0_timing_recovery_a11_reg}} mcs4_core/rom_1/timing_recovery/a11 mcs4_core/rom_0/timing_recovery/a11} {mcs4_core/rom_1_timing_recovery_a12_reg {{merged with mcs4_core/rom_0_timing_recovery_a12_reg}} mcs4_core/rom_1/timing_recovery/a12 mcs4_core/rom_0/timing_recovery/a12} {mcs4_core/rom_1_timing_recovery_a21_reg {{merged with mcs4_core/rom_0_timing_recovery_a21_reg}} mcs4_core/rom_1/timing_recovery/a21 mcs4_core/rom_0/timing_recovery/a21} {mcs4_core/rom_1_timing_recovery_a22_reg {{merged with mcs4_core/rom_0_timing_recovery_a22_reg}} mcs4_core/rom_1/timing_recovery/a22 mcs4_core/rom_0/timing_recovery/a22} {mcs4_core/rom_1_timing_recovery_a31_reg {{merged with mcs4_core/rom_0_timing_recovery_a31_reg}} mcs4_core/rom_1/timing_recovery/a31 mcs4_core/rom_0/timing_recovery/a31} {mcs4_core/rom_1_timing_recovery_a32_reg {{merged with mcs4_core/rom_0_timing_recovery_a32_reg}} mcs4_core/rom_1/timing_recovery/a32 mcs4_core/rom_0/timing_recovery/a32} {mcs4_core/rom_1_timing_recovery_m11_reg {{merged with mcs4_core/rom_0_timing_recovery_m11_reg}} mcs4_core/rom_1/timing_recovery/m11 mcs4_core/rom_0/timing_recovery/m11} {mcs4_core/rom_1_timing_recovery_m12_reg {{merged with mcs4_core/rom_0_timing_recovery_m12_reg}} mcs4_core/rom_1/timing_recovery/m12 mcs4_core/rom_0/timing_recovery/m12} {mcs4_core/rom_1_timing_recovery_m21_reg {{merged with mcs4_core/rom_0_timing_recovery_m21_reg}} mcs4_core/rom_1/timing_recovery/m21 mcs4_core/rom_0/timing_recovery/m21} {mcs4_core/rom_1_timing_recovery_m22_reg {{merged with mcs4_core/rom_0_timing_recovery_m22_reg}} mcs4_core/rom_1/timing_recovery/m22 mcs4_core/rom_0/timing_recovery/m22} {mcs4_core/rom_1_timing_recovery_x11_reg {{merged with mcs4_core/rom_0_timing_recovery_x11_reg}} mcs4_core/rom_1/timing_recovery/x11 mcs4_core/rom_0/timing_recovery/x11} {mcs4_core/rom_1_timing_recovery_x12_reg {{merged with mcs4_core/rom_0_timing_recovery_x12_reg}} mcs4_core/rom_1/timing_recovery/x12 mcs4_core/rom_0/timing_recovery/x12} {mcs4_core/rom_1_timing_recovery_x21_reg {{merged with mcs4_core/rom_0_timing_recovery_x21_reg}} mcs4_core/rom_1/timing_recovery/x21 mcs4_core/rom_0/timing_recovery/x21} {mcs4_core/rom_1_timing_recovery_x22_reg {{merged with mcs4_core/rom_0_timing_recovery_x22_reg}} mcs4_core/rom_1/timing_recovery/x22 mcs4_core/rom_0/timing_recovery/x22}}
set_db -quiet design:mcs4_pad_frame .max_fanout 15.000
set_db -quiet design:mcs4_pad_frame .max_fanout_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 15.000} {mode:mcs4_pad_frame/view_mcs4_fast 15.000}}
set_db -quiet design:mcs4_pad_frame .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 391333} {cell_count 3009} {utilization  0.00} {runtime 43 191 23 67} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 388382} {cell_count 3495} {utilization  0.00} {runtime 12 208 10 83} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 388481} {cell_count 3676} {utilization  0.00} {runtime 15 236 15 106} }{reify {wns 41728} {tns 0} {vep 0} {area 382595} {cell_count 2094} {utilization  0.00} {runtime 27 263 45 151} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 382162} {cell_count 1976} {utilization  0.00} {runtime 26 349 22 228} }}
set_db -quiet design:mcs4_pad_frame .seq_mbci_coverage 0.0
set_db -quiet design:mcs4_pad_frame .hdl_user_name mcs4_pad_frame
set_db -quiet design:mcs4_pad_frame .hdl_filelist {{default {-v2001 -f} {SYNTHESIS} {../../rtl/verilog/mcs4.f} {} {}}}
set_db -quiet design:mcs4_pad_frame .verification_directory fv/mcs4_pad_frame
set_db -quiet design:mcs4_pad_frame .seq_reason_deleted {{mcs4_core/rom_0/n0128_reg unloaded} {mcs4_core/rom_1/n0128_reg unloaded} {{mcs4_core/ram_0/oport_reg[1]} unloaded} {{mcs4_core/ram_0/oport_reg[2]} unloaded} {{mcs4_core/ram_0/oport_reg[3]} unloaded} {mcs4_core/shiftreg/serial_out_reg unloaded} {mcs4_core/i4004/tio_board/n0432_reg {{constant 1}}} {{mcs4_core/rom_0/fetch_addr_reg[4]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[5]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[6]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[7]} unloaded} {{mcs4_core/rom_store0/rom_data_reg[1]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[2]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[3]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[4]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[5]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[6]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store0/rom_data_reg[7]} {{merged with mcs4_core/rom_store0/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[1]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[2]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[3]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[4]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[5]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[6]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_store1/rom_data_reg[7]} {{merged with mcs4_core/rom_store1/rom_data_reg[0]}}} {{mcs4_core/rom_0/fetch_addr_reg[1]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[2]} unloaded} {{mcs4_core/rom_0/fetch_addr_reg[3]} unloaded} {{mcs4_core/rom_0/io_out_reg[0]} unloaded} {{mcs4_core/rom_0/io_out_reg[1]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[1]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[2]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[3]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[4]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[5]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[6]} unloaded} {{mcs4_core/rom_1/fetch_addr_reg[7]} unloaded} {{mcs4_core/rom_1/io_out_reg[0]} unloaded} {{mcs4_core/rom_1/io_out_reg[1]} unloaded} {{mcs4_core/ram_0/ram0_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[22][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[23][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[30][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[31][3]} {{constant 0}}} {{mcs4_core/rom_store0/rom_data_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_store1/rom_data_reg[0]} {{constant 0(*)}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[21][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[28][3]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][0]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][1]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][2]} {{constant 0}}} {{mcs4_core/ram_0/ram2_ram_array_reg[29][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[20][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram3_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[24][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[25][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[26][3]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][0]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][1]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][2]} {{constant 0}}} {{mcs4_core/ram_0/ram1_ram_array_reg[27][3]} {{constant 0}}} {{mcs4_core/rom_0/rom_out_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[1]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[2]} {{constant 0(*)}}} {{mcs4_core/rom_0/rom_out_reg[3]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[0]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[1]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[2]} {{constant 0(*)}}} {{mcs4_core/rom_1/rom_out_reg[3]} {{constant 0(*)}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][0]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][1]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][2]} {{constant 0}}} {{mcs4_core/ram_0/ram0_ram_array_reg[24][3]} {{constant 0}}} {mcs4_core/rom_0_chipsel_reg unloaded} {mcs4_core/rom_0_extbusdrive_reg unloaded} {{mcs4_core/rom_0_fetch_addr_reg[0]} unloaded} {{mcs4_core/rom_0_rom_out_reg[0]} unloaded} {{mcs4_core/rom_0_rom_out_reg[1]} unloaded} {{mcs4_core/rom_0_rom_out_reg[2]} unloaded} {{mcs4_core/rom_0_rom_out_reg[3]} unloaded} {{mcs4_core/rom_1_fetch_addr_reg[0]} unloaded} {{mcs4_core/rom_1_rom_out_reg[0]} unloaded} {{mcs4_core/rom_1_rom_out_reg[1]} unloaded} {{mcs4_core/rom_1_rom_out_reg[2]} unloaded} {{mcs4_core/rom_1_rom_out_reg[3]} unloaded} {{mcs4_core/rom_store0_rom_data_reg[0]} unloaded} {{mcs4_core/rom_store1_rom_data_reg[0]} unloaded} {mcs4_core/rom_1_timing_recovery_a11_reg {{merged with mcs4_core/rom_0_timing_recovery_a11_reg}}} {mcs4_core/rom_1_timing_recovery_a12_reg {{merged with mcs4_core/rom_0_timing_recovery_a12_reg}}} {mcs4_core/rom_1_timing_recovery_a21_reg {{merged with mcs4_core/rom_0_timing_recovery_a21_reg}}} {mcs4_core/rom_1_timing_recovery_a22_reg {{merged with mcs4_core/rom_0_timing_recovery_a22_reg}}} {mcs4_core/rom_1_timing_recovery_a31_reg {{merged with mcs4_core/rom_0_timing_recovery_a31_reg}}} {mcs4_core/rom_1_timing_recovery_a32_reg {{merged with mcs4_core/rom_0_timing_recovery_a32_reg}}} {mcs4_core/rom_1_timing_recovery_m11_reg {{merged with mcs4_core/rom_0_timing_recovery_m11_reg}}} {mcs4_core/rom_1_timing_recovery_m12_reg {{merged with mcs4_core/rom_0_timing_recovery_m12_reg}}} {mcs4_core/rom_1_timing_recovery_m21_reg {{merged with mcs4_core/rom_0_timing_recovery_m21_reg}}} {mcs4_core/rom_1_timing_recovery_m22_reg {{merged with mcs4_core/rom_0_timing_recovery_m22_reg}}} {mcs4_core/rom_1_timing_recovery_x11_reg {{merged with mcs4_core/rom_0_timing_recovery_x11_reg}}} {mcs4_core/rom_1_timing_recovery_x12_reg {{merged with mcs4_core/rom_0_timing_recovery_x12_reg}}} {mcs4_core/rom_1_timing_recovery_x21_reg {{merged with mcs4_core/rom_0_timing_recovery_x21_reg}}} {mcs4_core/rom_1_timing_recovery_x22_reg {{merged with mcs4_core/rom_0_timing_recovery_x22_reg}}}}
set_db -quiet design:mcs4_pad_frame .lp_clock_gating_max_flops inf
set_db -quiet design:mcs4_pad_frame .arch_filename ../../rtl/verilog/./mcs4_pad_frame.v
set_db -quiet design:mcs4_pad_frame .entity_filename ../../rtl/verilog/./mcs4_pad_frame.v
set_db -quiet port:mcs4_pad_frame/sysclk .original_name sysclk
set_db -quiet port:mcs4_pad_frame/poc_pad .external_driver_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y}} {mode:mcs4_pad_frame/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y}}}
set_db -quiet port:mcs4_pad_frame/poc_pad .original_name poc_pad
set_db -quiet port:mcs4_pad_frame/clear_pad .external_driver_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y lib_pin:LS_slow/slow_vdd1v0/BUFX12/Y}} {mode:mcs4_pad_frame/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y lib_pin:LS_fast/fast_vdd1v2/BUFX12/Y}}}
set_db -quiet port:mcs4_pad_frame/clear_pad .original_name clear_pad
set_db -quiet port:mcs4_pad_frame/VDD0 .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD0 .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD0 .original_name VDD0
set_db -quiet port:mcs4_pad_frame/VDD1 .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD1 .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD1 .original_name VDD1
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
set_db -quiet port:mcs4_pad_frame/VDD0 .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD0 .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD0 .original_name VDD0
set_db -quiet port:mcs4_pad_frame/VDD1 .max_capacitance 5.0
set_db -quiet port:mcs4_pad_frame/VDD1 .max_capacitance_by_mode {{mode:mcs4_pad_frame/view_mcs4_slow 5.0} {mode:mcs4_pad_frame/view_mcs4_fast 5.0}}
set_db -quiet port:mcs4_pad_frame/VDD1 .original_name VDD1
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
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .original_name {{mcs4_core/rom_0/io_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_0/io_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/Q} .original_name {mcs4_core/rom_0/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/Q} .dont_touch false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/QN} .original_name {mcs4_core/rom_0/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[2]/QN} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .original_name {{mcs4_core/rom_0/io_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_0/io_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/Q} .original_name {mcs4_core/rom_0/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/Q} .dont_touch false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/QN} .original_name {mcs4_core/rom_0/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_0_io_out_reg[3]/QN} .dont_touch false
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
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .original_name {{mcs4_core/rom_1/io_out[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .single_bit_orig_name {mcs4_core/rom_1/io_out[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/Q} .original_name {mcs4_core/rom_1/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/Q} .dont_touch false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/QN} .original_name {mcs4_core/rom_1/io_out[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[2]/QN} .dont_touch false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .original_name {{mcs4_core/rom_1/io_out[3]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .single_bit_orig_name {mcs4_core/rom_1/io_out[3]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/Q} .original_name {mcs4_core/rom_1/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/Q} .dont_touch false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/QN} .original_name {mcs4_core/rom_1/io_out[3]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_rom_1_io_out_reg[3]/QN} .dont_touch false
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
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .original_name mcs4_core/i4004/alu_board/n0749
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0749
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg/Q .original_name mcs4_core/i4004/alu_board/n0749/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg/QN .original_name mcs4_core/i4004/alu_board/n0749/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .original_name mcs4_core/i4004/alu_board/cy
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .single_bit_orig_name mcs4_core/i4004/alu_board/cy
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg/Q .original_name mcs4_core/i4004/alu_board/cy/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg/QN .original_name mcs4_core/i4004/alu_board/cy/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .original_name {{mcs4_core/i4004/ip_board/row[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .single_bit_orig_name {mcs4_core/i4004/ip_board/row[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]/Q} .original_name {mcs4_core/i4004/ip_board/row[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]/QN} .original_name {mcs4_core/i4004/ip_board/row[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .original_name mcs4_core/i4004/tio_board/L
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .single_bit_orig_name mcs4_core/i4004/tio_board/L
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg/Q .original_name mcs4_core/i4004/tio_board/L/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg/QN .original_name mcs4_core/i4004/tio_board/L/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .original_name {{mcs4_core/shiftreg/cp_delay[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .single_bit_orig_name {mcs4_core/shiftreg/cp_delay[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]/Q} .original_name {mcs4_core/shiftreg/cp_delay[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]/QN} .original_name {mcs4_core/shiftreg/cp_delay[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .original_name mcs4_core/rom_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .single_bit_orig_name mcs4_core/rom_0/timing_recovery/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg/Q .original_name mcs4_core/rom_0/timing_recovery/a12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg/QN .original_name mcs4_core/rom_0/timing_recovery/a12/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a32/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/a32/q
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
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .original_name mcs4_core/i4004/tio_board/poc
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .single_bit_orig_name mcs4_core/i4004/tio_board/poc
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg/Q .original_name mcs4_core/i4004/tio_board/poc/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg/QN .original_name mcs4_core/i4004/tio_board/poc/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .original_name mcs4_core/ram_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/m22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg/Q .original_name mcs4_core/ram_0/timing_recovery/m22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg/QN .original_name mcs4_core/ram_0/timing_recovery/m22/q
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
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .original_name mcs4_core/ram_0/src_ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .single_bit_orig_name mcs4_core/ram_0/src_ram_sel
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg/Q .original_name mcs4_core/ram_0/src_ram_sel/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg/QN .original_name mcs4_core/ram_0/src_ram_sel/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .original_name mcs4_core/i4004/alu_board/n0751
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0751
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg/Q .original_name mcs4_core/i4004/alu_board/n0751/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg/QN .original_name mcs4_core/i4004/alu_board/n0751/q
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .original_name mcs4_core/i4004/alu_board/n0750
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .single_bit_orig_name mcs4_core/i4004/alu_board/n0750
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg/Q .original_name mcs4_core/i4004/alu_board/n0750/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg/QN .original_name mcs4_core/i4004/alu_board/n0750/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .original_name {{mcs4_core/clockgen/clockdiv[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .single_bit_orig_name {mcs4_core/clockgen/clockdiv[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]/Q} .original_name {mcs4_core/clockgen/clockdiv[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]/QN} .original_name {mcs4_core/clockgen/clockdiv[2]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .original_name mcs4_core/ram_0/io
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .single_bit_orig_name mcs4_core/ram_0/io
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_io_reg/Q .original_name mcs4_core/ram_0/io/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_io_reg/QN .original_name mcs4_core/ram_0/io/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .original_name {{mcs4_core/i4004/sp_board/row[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .single_bit_orig_name {mcs4_core/i4004/sp_board/row[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]/Q} .original_name {mcs4_core/i4004/sp_board/row[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]/QN} .original_name {mcs4_core/i4004/sp_board/row[0]/q}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .original_name {{mcs4_core/ram_0/rfsh_addr[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .single_bit_orig_name {mcs4_core/ram_0/rfsh_addr[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]/Q} .original_name {mcs4_core/ram_0/rfsh_addr[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]/QN} .original_name {mcs4_core/ram_0/rfsh_addr[0]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .original_name mcs4_core/ram_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .single_bit_orig_name mcs4_core/ram_0/timing_recovery/x22
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg/Q .original_name mcs4_core/ram_0/timing_recovery/x22/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg/QN .original_name mcs4_core/ram_0/timing_recovery/x22/q
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
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .original_name {{mcs4_core/i4004/ip_board/row[1]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .single_bit_orig_name {mcs4_core/i4004/ip_board/row[1]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]/Q} .original_name {mcs4_core/i4004/ip_board/row[1]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]/QN} .original_name {mcs4_core/i4004/ip_board/row[1]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .original_name mcs4_core/i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .single_bit_orig_name mcs4_core/i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg/Q .original_name mcs4_core/i4004/tio_board/timing_generator/a12/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg/QN .original_name mcs4_core/i4004/tio_board/timing_generator/a12/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .original_name {{mcs4_core/i4004/sp_board/row[2]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .single_bit_orig_name {mcs4_core/i4004/sp_board/row[2]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]/Q} .original_name {mcs4_core/i4004/sp_board/row[2]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]/QN} .original_name {mcs4_core/i4004/sp_board/row[2]/q}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .original_name mcs4_core/i4004/id_board/n0343
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .single_bit_orig_name mcs4_core/i4004/id_board/n0343
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .gint_phase_inversion false
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg/Q .original_name mcs4_core/i4004/id_board/n0343/q
set_db -quiet pin:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg/QN .original_name mcs4_core/i4004/id_board/n0343/q
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .original_name {{mcs4_core/i4004/id_board/opa[0]}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .single_bit_orig_name {mcs4_core/i4004/id_board/opa[0]}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]/Q} .original_name {mcs4_core/i4004/id_board/opa[0]/q}
set_db -quiet {pin:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]/QN} .original_name {mcs4_core/i4004/id_board/opa[0]/q}
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
set_db -quiet inst:mcs4_pad_frame/pad_clear_pad .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 38 22}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 52 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 53 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad2 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 54 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad3 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 55 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad4 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 56 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad5 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 57 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad6 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 58 20}}
set_db -quiet inst:mcs4_pad_frame/pad_io_pad7 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 59 20}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 41 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 42 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out2 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 43 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out3 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 44 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out4 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 45 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out5 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 46 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out6 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 47 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out7 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 48 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out8 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 49 19}}
set_db -quiet inst:mcs4_pad_frame/pad_p_out9 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 50 19}}
set_db -quiet inst:mcs4_pad_frame/pad_poc_pad .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 36 20}}
set_db -quiet inst:mcs4_pad_frame/pad_sysclk .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 34 19}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd0 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 62 18}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd1 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 63 18}}
set_db -quiet inst:mcs4_pad_frame/pad_vdd_ior .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 67 24}}
set_db -quiet inst:mcs4_pad_frame/pad_vss .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 64 17}}
set_db -quiet inst:mcs4_pad_frame/pad_vss_ior .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 68 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17335 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17336 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17922__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17923__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17924__6260 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 95 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17925__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17926__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17927__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17930__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17931__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17932__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17933__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17934__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17935__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17936__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 152 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17937__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17938__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 162 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17939__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 157 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17940__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17941__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 112 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17942__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17943__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 133 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17944__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17945__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17946__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17947__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17948__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17949__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17950 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17951__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17952__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 213 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17953__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17954__5107 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 133 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17956__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 142 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17957__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17960 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17961 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g17962 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25505__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25506__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25507__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25508__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25509__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25510__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25511__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25513__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25514__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25515__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25516__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25518__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25519__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25520__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25521__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25522__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25523__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25524__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25525__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25526__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25530__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25531__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25532__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25533__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25534__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25535__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25536__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25537__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25538__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25539__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25540__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25541__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25542__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25543__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25544__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25545__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25546__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25547__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25548__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25549__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25550__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25551__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25552__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25553__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25555__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25557__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25558__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25559__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25560__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25562__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25563__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25564__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25565__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25566__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25567__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25568__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25569__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25570__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25571__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25572__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25573__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25574__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25575__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25576__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25577__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25578__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25579__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25580__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25581__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25582__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25583__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25584__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25585__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25586__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25587__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25588__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25589__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25590__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25591__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25592__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25593__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25594__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25595__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25596__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25597__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25598__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25599__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25600__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25601__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25602__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25603__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25604__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25605__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25606__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25607__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25608__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25609__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25610__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25611__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25612__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25613__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25614__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25615__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25616__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25617__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25618__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25619__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25620__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25621__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25622__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25623__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25624__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25625__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25626__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25627__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25628__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25629__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25630__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25631__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25632__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25633__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25634__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25635__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25636__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25637__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25638__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25639__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25640__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25641__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25642__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25643__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25644__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25645__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25646__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25647__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25648__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25649__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25650__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25651__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25652__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25653__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25654__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25655__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25656__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25657__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25658__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25659__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25660__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25661__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25662__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25663__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25664__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25665__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25666__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25667__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25668__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25669__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25670__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25671__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25672__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25673__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25674__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25675__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25676__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25677__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25678__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25679__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25680__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25681__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25682__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25683__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25684__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25685__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25686__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25687__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25688__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25689__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25690__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25691__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25692__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25693__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25694__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25695__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25696__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25697__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25698__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25699__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25700__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25701__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25702__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25703__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25704__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25705__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25706__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25707__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25708__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25709__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25710__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25711__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25712__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25713__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25714__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25715__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25716__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25717__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25718__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25719__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25720__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25721__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25722__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25723__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25724__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25725__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25726__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25727__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25728__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25729__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25730__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25731__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25732__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25733__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25734__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25735__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25736__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25737__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25738__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25739__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25740__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25741__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25742__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25743__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25744__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25745__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25746__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25747__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25748__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25749__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25750__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25751__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25752__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25753__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25754__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25755__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25756__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25757__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25758__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25759__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25760__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25761__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25762__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25763__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25764__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25765__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25766__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25767__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25768__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25769__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25770__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25771__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25772__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25773__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25774__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25775__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25776__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25777__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25778__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25779__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25780__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25781__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25782__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25783__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25784__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25785__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25786__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25787__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25788__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25789__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25790__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25791__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25792__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25793__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25794__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25795__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25796__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25797__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25798__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25799__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25800__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25801__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25802__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25803__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25804__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25805__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25806__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25807__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25808__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25809 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
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
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25830 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25831 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25832 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25834__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25835__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25836 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25837 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25838 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25839__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25840__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25841__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25842__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25843__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25844__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25846 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25848__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25849__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25850__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25851__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25852__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25853 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25855__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25856__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25857__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25858 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25859__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25860__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25861__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25862__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25863 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25864__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25865__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25866__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25867__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25868__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25869__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25870__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25871__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25872 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25873__7482 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25874__4733 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25875__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 155 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25876__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25877__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25878__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g25879 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g256__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18671__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g257__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18672__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18673__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g258__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18674__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18675__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_g259__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18676__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18677__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18678__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18679__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18680__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18681__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18682__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18683__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18684__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18685__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18686__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18687__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18688__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18690__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g213__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g214__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g215__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_g216__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18691__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18693__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g191__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g190__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g192__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_g193__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g175__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g176__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g177__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_g178__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18694 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18696__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18697__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18698__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18699__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18700__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18701__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18702__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18703__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g53__8246 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g52__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g3__6131 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_g54__1881 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 140 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18704 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18706__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18707__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18708__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18709__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18710__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18711__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18712__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18713__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18714__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18715__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18716__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18717__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18718__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18719__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18720__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18721__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18722__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18723__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18724__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18725__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18726 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18727 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18728__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18729__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18730__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18731__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18733__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18736 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18738__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18739__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18740__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18741__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18742__7482 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18743__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18747__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18748__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18749__9945 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18750__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18751__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18752__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18753 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18754 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g5__6417 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g4__5477 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g6__2398 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18756__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18757__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g1__4319 .file_row_col {{../../rtl/verilog/./mcs4.v 68 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18758__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18759__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18760__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18761__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18762__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18763 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18765__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18766__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18767__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18768__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18769__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18770__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18771__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18772__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18773__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18774__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18775__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18776__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18777__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g18779 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
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
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29952__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29959__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29960__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29961__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29962__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29963__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29964__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29966__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29967__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29968__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29969__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29970__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29971__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29972__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29973__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29974__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29975__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29983__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29984__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29985__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29986__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29987__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29988__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29989__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29990__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29991__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29992__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29994__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29995__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29996__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g29999__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30000__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30001__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30002__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30003__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30005__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30006__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30007__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30013__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30015__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30016__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30017__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30018__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30019__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30020__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30027__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30032__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30033__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30034__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30035__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30037__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30038__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30039__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30040__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30041__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30042__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30044__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30045__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30046__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30047__5526 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30215__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30216__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30217__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30218__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30219__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30220__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30221__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30222__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30223__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30224__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30383__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30384__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30385__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30388__9315 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30389__9945 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30391__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30392__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30393__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30394__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30395__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30396__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30397__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30398__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30399__4319 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30400__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30401__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30404__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30405__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30406__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30407__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30408__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30409__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30411__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30412__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30413__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30414__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30416__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30418__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30420__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30422__9315 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30423__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30424__2883 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30425__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30426__1666 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30428__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30429__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30430__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30431__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30432__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30433__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30434__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30435__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30436__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30437__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30438__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30439__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30440__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30441__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30442__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30444__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30445__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30446__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30447__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30448__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30449__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30450__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30451__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30453__9945 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30454__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30455__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30456__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30457__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30458__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30459__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30460__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30468__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30469__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30470__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30471__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30472__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30473__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30474__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30475__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30476__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30477__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30478__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30479__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30480__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30481__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30482__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30483__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30484__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30485__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30486__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30487__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30488__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30489__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30490__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30491__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30492__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30493__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30494__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30495__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30496__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30497__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30498__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30499__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30500__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30501__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30502__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30503__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30504 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30505__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30506__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30508__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30509__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30510__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30511__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30512__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30513__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30514__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30515__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30516__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30517__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30518__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30519__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30520__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30521__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30522__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30523__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30524__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30525__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30526__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30527__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30528__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30529__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30530__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30531__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30532__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30533__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30534__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30535__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30536__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30537__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30538__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30539__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30540__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30541__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30542__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30543__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30544__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30545__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30546__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30547__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30548__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30549__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30550__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30551__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30552__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30553__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30554__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30599 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30600 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30601__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 185 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30602__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30603__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30604__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30605__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30616__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30618__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30619__1705 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30620__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30621__8246 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30622__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30623__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30624__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30625__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30627__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30628__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30629__6161 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30630__9315 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30632__9945 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30633__2883 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30634__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30635__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30637__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30638__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30639__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30640__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30641__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30642__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30643__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30644__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30646__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30647__3680 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30661__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30662__2802 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30667 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30668__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30669__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30671__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30672__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30673__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30674__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30675__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30677__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30680__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30681__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30682__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30683__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30684__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 92 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30685__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30686__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30687__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30688__5477 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30689__2398 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30690__5107 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30691__6260 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30693__4319 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30695__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30702__5526 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30703__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30704__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30706__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30707__2802 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30708__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30709__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30710__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30711__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30712__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30713__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30714__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30715__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30716__4733 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30717__6161 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30718__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30719__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30720__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30721__2346 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30722__1666 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30771 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30772__7410 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30773__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30775__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30776__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30778__6260 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 220 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30779__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30780__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30781__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30782__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30783__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 115 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30784__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30785__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30786__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30787__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30804__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30805__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30808__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30814__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 57 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30815__5115 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 31}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30816__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30817__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30818__6161 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30819__9315 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30820 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30822__9945 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30823__2883 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30824__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30825__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30826__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30827__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30828__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30830__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30831__6260 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30836__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30851__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30855 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30857__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30858__6783 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30859__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30860__1617 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30861__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30862__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30863__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30864__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30866__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30867__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30868__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30869__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30870__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30871__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 220 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30872__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30873__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30874__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30875__2883 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30876__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30877__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30878__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30879__6417 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30880__5477 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30882__2398 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30883__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30884__6260 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30885__4319 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30886__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30887__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30888__6783 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30890 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30891 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30892__3680 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30893__1617 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30894__2802 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30895__1705 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30901__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30903__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30905__7098 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30914__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30915__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30919__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30922__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30923__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30924__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30925__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30926__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30927__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30928__2346 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30929__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30930__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30931__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30932__5477 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30933__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30934__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30935__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30936__4319 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30937__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 220 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30938__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30939__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30940__3680 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30941__1617 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30942__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30943__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30944__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30945__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30946__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30947__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30952__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 64}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30953__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 220 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30954__7482 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30959__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30971__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30973__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30974__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30976 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30977 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30978 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30979__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30980__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30981__1666 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30982__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30983__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30984__5477 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30985__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30986__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30987__6260 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30988__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30990__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30991__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30992__6783 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30993__3680 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30994__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30995__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30996__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30997__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30998__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g30999__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31000__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31001__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31002__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31003__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31004__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31005__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31006__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31009 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31014__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31015__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31016__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31018__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31019__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31022__6417 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31023__5477 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31024__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31025__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31026__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31027__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31028__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31029__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 135 39}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31030__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 172 40}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31031__3680 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31032__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31033__2802 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 65 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31034 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31035 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31036__1705 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31037__5122 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31038__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31039__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31040__6131 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31041__1881 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31042__5115 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31043__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31044__4733 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31045__6161 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31046__9315 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31047__9945 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31048__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31049__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31050__1666 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31051__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31052__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31053__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31054__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31055__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31056__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31057__4319 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31058__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31059__5526 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31060__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31061__3680 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31062__1617 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31063__2802 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31125 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31126 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31128 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31130 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31131__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31132__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31133__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31134__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31135__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31136__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31137__5115 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31138__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31139__4733 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31140__6161 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31141 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31142 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31143 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31146 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31153 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31155 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31156 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31164 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31166 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31169 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31171 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31172 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31173 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31174 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 158 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31176 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31177 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31178 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31181 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31183 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31190 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31191 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 118 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31192 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31193 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31194 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 47 38}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31195 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31196 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31198 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31199 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31200 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31201 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31202 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31203 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31204 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31205 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31207 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31208 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31209 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31210 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31211 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31212 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31213 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31215 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31216 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 118 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31217 .file_row_col {{../../rtl/verilog/./i4004/alu.v 238 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31218 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31219 .file_row_col {{../../rtl/verilog/./i4004/alu.v 82 44}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31220 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31221 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31222 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31223 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31227 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31228 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31229 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31230 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31232 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 143 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31233 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31234 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31235 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31236 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31237 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31238 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31239 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31240 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31241 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31242 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31243 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31244 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31245 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31247 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31248 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31249 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31250 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31251 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31252 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31253 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31254 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31259 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 158 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31261 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31262 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31263 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 104 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31264 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31265 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31266 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31267 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31268 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31269 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31270 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31271 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31272 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31273 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 131 22}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31274 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31275 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31276 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 131 30}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31278 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31279 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31280 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31281 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31282 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31283 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 23}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31286 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31290 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31292 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31313 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31316 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31317 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31318 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31320 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31321 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31322 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31329 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31334 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31336 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31339 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31343 .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31348 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31349 .file_row_col {{../../rtl/verilog/./mcs4_pad_frame.v 26 17}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31351 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 179 15}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31358 .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31359 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31372 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31383 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31387 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31423 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31425 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31431 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31438 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31440 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31444 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_g31448 .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_char_num_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 25}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0550_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 132 14}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_acc_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0749_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_cy_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 34}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_L_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 116 10}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_shiftreg_cp_delay_reg[0]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_rom_0_timing_recovery_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_poc_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 104 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 24}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_src_ram_sel_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0751_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_alu_board_n0750_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_clockgen_clockdiv_reg[2]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_io_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 74 23}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_ram_0_timing_recovery_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_reg_num_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 99 24}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_ip_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_sp_board_row_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_id_board_n0343_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 66}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_i4004_id_board_opa_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4_pad_frame/mcs4_core_i4004_tio_board_timing_generator_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4_pad_frame/g2 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 120 28}}
set_db -quiet inst:mcs4_pad_frame/g31528 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g31529 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g31530 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g31533 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g31535 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g31538 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4_pad_frame/g31539 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 287 25}}
set_db -quiet inst:mcs4_pad_frame/g31540 .file_row_col {{../../rtl/verilog/./mcs4.v 73 16}}
set_db -quiet inst:mcs4_pad_frame/g31541 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/g31542 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4_pad_frame/g31543 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4_pad_frame/g31544 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4_pad_frame/g31545 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g31546 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4_pad_frame/g31547 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4_pad_frame/g31548 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g31549 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g31550 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g31551 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g31552 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g31553 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g31554 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g31555 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g31556 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g31557 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g31558 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g31559 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/g31562 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4_pad_frame/g31563 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/g31565 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g31566 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/g3 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 45}}
set_db -quiet inst:mcs4_pad_frame/g31567 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31568 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31569 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31574 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31575 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31580 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31581 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31586 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31587 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31592 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31593 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31615 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc31759 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc31763 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31765 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_bufs31766 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32053 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32093 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32109 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32127 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32135 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32139 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc32143 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32179 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32180 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32181 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32182 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32183 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32184 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32185 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32186 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32229 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32230 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32231 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32232 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32233 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32234 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32235 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32236 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32278 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32279 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32280 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32281 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32282 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32283 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32284 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32285 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32327 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32328 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32329 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32330 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32331 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32332 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32333 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32334 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32358 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32359 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32370 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32382 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32394 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32395 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32406 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32418 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32430 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32442 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32454 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32466 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32478 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32490 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32502 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32514 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32538 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32539 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32550 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32562 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/drc_buf_sp32574 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet {inst:mcs4_pad_frame/mcs4_core_ram_0_rfsh_addr_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 181 26}}
set_db -quiet inst:mcs4_pad_frame/g32586 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32587 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32588 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 261 34}}
set_db -quiet inst:mcs4_pad_frame/g32589 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4_pad_frame/g32590 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4_pad_frame/g32591 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32592 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32593 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 88 29}}
set_db -quiet inst:mcs4_pad_frame/g32594 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4_pad_frame/g32595 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4_pad_frame/g32596 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g32597 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4_pad_frame/g32598 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 171 64}}
set_db -quiet inst:mcs4_pad_frame/g32599 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4_pad_frame/g32600 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4_pad_frame/g32601 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 40}}
set_db -quiet inst:mcs4_pad_frame/g32602 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 40}}
# there is no file_row_col attribute information available
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 20.11-s111_1
## flowkit v20.10-p027_1
## Written on 06:31:53 15-May 2025
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
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 2e687277-786d-45cc-80f6-82aaec5f9606}
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

