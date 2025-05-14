######################################################################

# Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Tue May 13 06:46:40 EDT 2025

# This file contains the Genus script for design:mcs4

######################################################################

set_db -quiet information_level 11
set_db -quiet init_lib_search_path {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/ /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/}
set_db -quiet design_mode_process 60.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet db_units 2000
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet lp_power_unit mW
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 28 0.0 27.184538} {to_generic 17 48 16 49} {first_condense 6 57 13 66} {PBS_Generic_Opt-Post 31 59 37.994980999999996 65.179519} {{PBS_Generic-Postgen HBO Optimizations} 0 59 0.0 65.179519} {PBS_TechMap-Start 0 64 0.0 67.179519} {{PBS_TechMap-Premap HBO Optimizations} 0 64 0.0 67.179519} {second_condense 4 69 7 79} {reify 10 79 25 105} {{PBS_Techmap-Global Mapping} 15 79 34.224064 101.403583} {{PBS_TechMap-Datapath Postmap Operations} 36 115 35.81223499999999 137.21581799999998} {{PBS_TechMap-Postmap HBO Optimizations} 0 115 -0.04392099999998322 137.171897} {{PBS_TechMap-Postmap Clock Gating} 1 116 1.0 138.171897} {{PBS_TechMap-Postmap Cleanup} 1 117 0.9124769999999955 139.084374} {PBS_Techmap-Post_MBCI 0 117 0.0 139.084374} {incr_opt 88 209 85 230} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet tinfo_tstamp_file .rs_kevyn.carrillo@iteso.mx.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path ../../syn
set_db -quiet hdl_track_filename_row_col true
set_db -quiet use_area_from_lef true
set_db -quiet flow_metrics_snapshot_uuid 48576d66-286d-4072-83ff-5f48ffdf7ff4
set_db -quiet read_qrc_tech_file_rc_corner true
if {[vfind design:mcs4 -mode view_mcs4_slow] eq ""} {
 create_mode -name view_mcs4_slow -design design:mcs4 
}
if {[vfind design:mcs4 -mode view_mcs4_fast] eq ""} {
 create_mode -name view_mcs4_fast -design design:mcs4 
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
set_db -quiet library_domain:TC_mcs4_fast .wireload_selection none
set_db -quiet operating_condition:LS_fast/fast_vdd1v2/PVT_1P32V_0C .tree_type balanced_tree
set_db -quiet operating_condition:LS_fast/fast_vdd1v2/_nominal_ .tree_type balanced_tree
::legacy::set_attr -quiet ui_respects_preserve 0 /
::legacy::set_attribute -quiet library_domain library_domain:TC_mcs4_slow design:mcs4
::legacy::set_attr -quiet ui_respects_preserve true /
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name 20MHz_CLK -mode mode:mcs4/view_mcs4_slow -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mcs4 port:mcs4/sysclk
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .slew {250.0 250.0 1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_network_early_latency {1250.0 1250.0 1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_network_late_latency {1250.0 1250.0 1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_source_late_latency {1250.0 1250.0 1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_source_early_latency {1250.0 1250.0 1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_setup_uncertainty {1250.0 1250.0}
set_db -quiet clock:mcs4/view_mcs4_slow/20MHz_CLK .clock_hold_uncertainty {250.0 250.0}
define_clock -name 20MHz_CLK -mode mode:mcs4/view_mcs4_fast -domain domain_1 -period 50000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:mcs4 port:mcs4/sysclk
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .slew {1000.0 1000.0 5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_network_early_latency {5000.0 5000.0 5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_network_late_latency {5000.0 5000.0 5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_source_late_latency {5000.0 5000.0 5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_source_early_latency {5000.0 5000.0 5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_setup_uncertainty {5000.0 5000.0}
set_db -quiet clock:mcs4/view_mcs4_fast/20MHz_CLK .clock_hold_uncertainty {1000.0 1000.0}
define_cost_group -design design:mcs4 -name 20MHz_CLK
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name create_clock_delay_domain_1_20MHz_CLK_R_0 port:mcs4/sysclk
set_db -quiet external_delay:mcs4/view_mcs4_slow/create_clock_delay_domain_1_20MHz_CLK_R_0 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -edge_fall -name create_clock_delay_domain_1_20MHz_CLK_F_0 port:mcs4/sysclk
set_db -quiet external_delay:mcs4/view_mcs4_slow/create_clock_delay_domain_1_20MHz_CLK_F_0 .clock_network_latency_included true
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY port:mcs4/poc_pad
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_1_1 port:mcs4/clear_pad
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_2_1 {{port:mcs4/io_pad[7]} {port:mcs4/io_pad[7]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_3_1 {{port:mcs4/io_pad[6]} {port:mcs4/io_pad[6]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_4_1 {{port:mcs4/io_pad[5]} {port:mcs4/io_pad[5]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_5_1 {{port:mcs4/io_pad[4]} {port:mcs4/io_pad[4]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_6_1 {{port:mcs4/io_pad[3]} {port:mcs4/io_pad[3]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_7_1 {{port:mcs4/io_pad[2]} {port:mcs4/io_pad[2]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_8_1 {{port:mcs4/io_pad[1]} {port:mcs4/io_pad[1]}}
external_delay -accumulate -input {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name I_DELAY_9_1 {{port:mcs4/io_pad[0]} {port:mcs4/io_pad[0]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY {{port:mcs4/io_pad[7]} {port:mcs4/io_pad[7]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_9_1 {{port:mcs4/io_pad[6]} {port:mcs4/io_pad[6]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_10_1 {{port:mcs4/io_pad[5]} {port:mcs4/io_pad[5]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_11_1 {{port:mcs4/io_pad[4]} {port:mcs4/io_pad[4]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_12_1 {{port:mcs4/io_pad[3]} {port:mcs4/io_pad[3]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_13_1 {{port:mcs4/io_pad[2]} {port:mcs4/io_pad[2]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_14_1 {{port:mcs4/io_pad[1]} {port:mcs4/io_pad[1]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_15_1 {{port:mcs4/io_pad[0]} {port:mcs4/io_pad[0]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_16_1 {{port:mcs4/p_out[9]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_17_1 {{port:mcs4/p_out[8]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_18_1 {{port:mcs4/p_out[7]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_19_1 {{port:mcs4/p_out[6]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_20_1 {{port:mcs4/p_out[5]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_21_1 {{port:mcs4/p_out[4]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_22_1 {{port:mcs4/p_out[3]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_23_1 {{port:mcs4/p_out[2]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_24_1 {{port:mcs4/p_out[1]}}
external_delay -accumulate -output {2500.0 2500.0 2500.0 2500.0} -clock clock:mcs4/view_mcs4_slow/20MHz_CLK -name O_DELAY_25_1 {{port:mcs4/p_out[0]}}
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name create_clock_delay_domain_1_20MHz_CLK_R_0_1 port:mcs4/sysclk
set_db -quiet external_delay:mcs4/view_mcs4_fast/create_clock_delay_domain_1_20MHz_CLK_R_0_1 .clock_network_latency_included true
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -edge_fall -name create_clock_delay_domain_1_20MHz_CLK_F_0_1 port:mcs4/sysclk
set_db -quiet external_delay:mcs4/view_mcs4_fast/create_clock_delay_domain_1_20MHz_CLK_F_0_1 .clock_network_latency_included true
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_25_1 port:mcs4/poc_pad
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_26_1 port:mcs4/clear_pad
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_27_1 {{port:mcs4/io_pad[7]} {port:mcs4/io_pad[7]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_28_1 {{port:mcs4/io_pad[6]} {port:mcs4/io_pad[6]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_29_1 {{port:mcs4/io_pad[5]} {port:mcs4/io_pad[5]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_30_1 {{port:mcs4/io_pad[4]} {port:mcs4/io_pad[4]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_31_1 {{port:mcs4/io_pad[3]} {port:mcs4/io_pad[3]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_32_1 {{port:mcs4/io_pad[2]} {port:mcs4/io_pad[2]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_33_1 {{port:mcs4/io_pad[1]} {port:mcs4/io_pad[1]}}
external_delay -accumulate -input {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name I_DELAY_34_1 {{port:mcs4/io_pad[0]} {port:mcs4/io_pad[0]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_34_1 {{port:mcs4/io_pad[7]} {port:mcs4/io_pad[7]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_35_1 {{port:mcs4/io_pad[6]} {port:mcs4/io_pad[6]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_36_1 {{port:mcs4/io_pad[5]} {port:mcs4/io_pad[5]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_37_1 {{port:mcs4/io_pad[4]} {port:mcs4/io_pad[4]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_38_1 {{port:mcs4/io_pad[3]} {port:mcs4/io_pad[3]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_39_1 {{port:mcs4/io_pad[2]} {port:mcs4/io_pad[2]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_40_1 {{port:mcs4/io_pad[1]} {port:mcs4/io_pad[1]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_41_1 {{port:mcs4/io_pad[0]} {port:mcs4/io_pad[0]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_42_1 {{port:mcs4/p_out[9]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_43_1 {{port:mcs4/p_out[8]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_44_1 {{port:mcs4/p_out[7]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_45_1 {{port:mcs4/p_out[6]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_46_1 {{port:mcs4/p_out[5]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_47_1 {{port:mcs4/p_out[4]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_48_1 {{port:mcs4/p_out[3]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_49_1 {{port:mcs4/p_out[2]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_50_1 {{port:mcs4/p_out[1]}}
external_delay -accumulate -output {10000.0 10000.0 10000.0 10000.0} -clock clock:mcs4/view_mcs4_fast/20MHz_CLK -name O_DELAY_51_1 {{port:mcs4/p_out[0]}}
path_group -paths [specify_paths -mode mode:mcs4/view_mcs4_slow -to clock:mcs4/view_mcs4_slow/20MHz_CLK]  -name 20MHz_CLK -group cost_group:mcs4/20MHz_CLK -user_priority -1047552
path_group -paths [specify_paths -mode mode:mcs4/view_mcs4_fast -to clock:mcs4/view_mcs4_fast/20MHz_CLK]  -name 20MHz_CLK -group cost_group:mcs4/20MHz_CLK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:mcs4 .seq_reason_deleted_internal {{rom_0/n0135 unloaded rom_0/n0135} {rom_0/io_out unloaded rom_0/io_out} {rom_1/n0135 unloaded rom_1/n0135} {rom_1/io_out unloaded rom_1/io_out} {{ram_0/oport_reg[1]} unloaded {ram_0/oport[1]}} {{ram_0/oport_reg[2]} unloaded {ram_0/oport[2]}} {{ram_0/oport_reg[3]} unloaded {ram_0/oport[3]}} {shiftreg/serial_out_reg unloaded shiftreg/serial_out} {i4004/tio_board/n0432_reg {{constant 1}} i4004/tio_board/n0432} {{rom_0/fetch_addr_reg[0]} unloaded {rom_0/fetch_addr[0]}} {{rom_0/fetch_addr_reg[1]} unloaded {rom_0/fetch_addr[1]}} {{rom_0/fetch_addr_reg[2]} unloaded {rom_0/fetch_addr[2]}} {{rom_0/fetch_addr_reg[3]} unloaded {rom_0/fetch_addr[3]}} {{rom_0/fetch_addr_reg[4]} unloaded {rom_0/fetch_addr[4]}} {{rom_0/fetch_addr_reg[5]} unloaded {rom_0/fetch_addr[5]}} {{rom_0/fetch_addr_reg[6]} unloaded {rom_0/fetch_addr[6]}} {{rom_0/fetch_addr_reg[7]} unloaded {rom_0/fetch_addr[7]}} {{rom_1/fetch_addr_reg[0]} unloaded {rom_1/fetch_addr[0]}} {{rom_1/fetch_addr_reg[1]} unloaded {rom_1/fetch_addr[1]}} {{rom_1/fetch_addr_reg[2]} unloaded {rom_1/fetch_addr[2]}} {{rom_1/fetch_addr_reg[3]} unloaded {rom_1/fetch_addr[3]}} {{rom_1/fetch_addr_reg[4]} unloaded {rom_1/fetch_addr[4]}} {{rom_1/fetch_addr_reg[5]} unloaded {rom_1/fetch_addr[5]}} {{rom_1/fetch_addr_reg[6]} unloaded {rom_1/fetch_addr[6]}} {{rom_1/fetch_addr_reg[7]} unloaded {rom_1/fetch_addr[7]}} {{rom_store0/rom_data_reg[1]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[1]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[2]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[2]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[3]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[3]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[4]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[4]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[5]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[5]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[6]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[6]} {rom_store0/rom_data[0]}} {{rom_store0/rom_data_reg[7]} {{merged with rom_store0/rom_data_reg[0]}} {rom_store0/rom_data[7]} {rom_store0/rom_data[0]}} {{rom_store1/rom_data_reg[1]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[1]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[2]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[2]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[3]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[3]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[4]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[4]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[5]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[5]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[6]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[6]} {rom_store1/rom_data[0]}} {{rom_store1/rom_data_reg[7]} {{merged with rom_store1/rom_data_reg[0]}} {rom_store1/rom_data[7]} {rom_store1/rom_data[0]}} {{ram_0/ram2_ram_array_reg[20][0]} {{constant 0}} {ram_0/ram2/ram_array[20][0]}} {{ram_0/ram2_ram_array_reg[20][1]} {{constant 0}} {ram_0/ram2/ram_array[20][1]}} {{ram_0/ram2_ram_array_reg[20][2]} {{constant 0}} {ram_0/ram2/ram_array[20][2]}} {{ram_0/ram2_ram_array_reg[20][3]} {{constant 0}} {ram_0/ram2/ram_array[20][3]}} {{ram_0/ram2_ram_array_reg[21][0]} {{constant 0}} {ram_0/ram2/ram_array[21][0]}} {{ram_0/ram2_ram_array_reg[21][1]} {{constant 0}} {ram_0/ram2/ram_array[21][1]}} {{ram_0/ram2_ram_array_reg[21][2]} {{constant 0}} {ram_0/ram2/ram_array[21][2]}} {{ram_0/ram2_ram_array_reg[21][3]} {{constant 0}} {ram_0/ram2/ram_array[21][3]}} {{ram_0/ram2_ram_array_reg[22][0]} {{constant 0}} {ram_0/ram2/ram_array[22][0]}} {{ram_0/ram2_ram_array_reg[22][1]} {{constant 0}} {ram_0/ram2/ram_array[22][1]}} {{ram_0/ram2_ram_array_reg[22][2]} {{constant 0}} {ram_0/ram2/ram_array[22][2]}} {{ram_0/ram2_ram_array_reg[22][3]} {{constant 0}} {ram_0/ram2/ram_array[22][3]}} {{ram_0/ram2_ram_array_reg[23][0]} {{constant 0}} {ram_0/ram2/ram_array[23][0]}} {{ram_0/ram2_ram_array_reg[23][1]} {{constant 0}} {ram_0/ram2/ram_array[23][1]}} {{ram_0/ram2_ram_array_reg[23][2]} {{constant 0}} {ram_0/ram2/ram_array[23][2]}} {{ram_0/ram2_ram_array_reg[23][3]} {{constant 0}} {ram_0/ram2/ram_array[23][3]}} {{ram_0/ram2_ram_array_reg[24][0]} {{constant 0}} {ram_0/ram2/ram_array[24][0]}} {{ram_0/ram2_ram_array_reg[24][1]} {{constant 0}} {ram_0/ram2/ram_array[24][1]}} {{ram_0/ram2_ram_array_reg[24][2]} {{constant 0}} {ram_0/ram2/ram_array[24][2]}} {{ram_0/ram2_ram_array_reg[24][3]} {{constant 0}} {ram_0/ram2/ram_array[24][3]}} {{ram_0/ram3_ram_array_reg[20][0]} {{constant 0}} {ram_0/ram3/ram_array[20][0]}} {{ram_0/ram3_ram_array_reg[20][1]} {{constant 0}} {ram_0/ram3/ram_array[20][1]}} {{ram_0/ram3_ram_array_reg[20][2]} {{constant 0}} {ram_0/ram3/ram_array[20][2]}} {{ram_0/ram3_ram_array_reg[20][3]} {{constant 0}} {ram_0/ram3/ram_array[20][3]}} {{ram_0/ram3_ram_array_reg[21][0]} {{constant 0}} {ram_0/ram3/ram_array[21][0]}} {{ram_0/ram3_ram_array_reg[21][1]} {{constant 0}} {ram_0/ram3/ram_array[21][1]}} {{ram_0/ram3_ram_array_reg[21][2]} {{constant 0}} {ram_0/ram3/ram_array[21][2]}} {{ram_0/ram3_ram_array_reg[21][3]} {{constant 0}} {ram_0/ram3/ram_array[21][3]}} {{ram_0/ram3_ram_array_reg[22][0]} {{constant 0}} {ram_0/ram3/ram_array[22][0]}} {{ram_0/ram3_ram_array_reg[22][1]} {{constant 0}} {ram_0/ram3/ram_array[22][1]}} {{ram_0/ram3_ram_array_reg[22][2]} {{constant 0}} {ram_0/ram3/ram_array[22][2]}} {{ram_0/ram3_ram_array_reg[22][3]} {{constant 0}} {ram_0/ram3/ram_array[22][3]}} {{ram_0/ram3_ram_array_reg[23][0]} {{constant 0}} {ram_0/ram3/ram_array[23][0]}} {{ram_0/ram3_ram_array_reg[23][1]} {{constant 0}} {ram_0/ram3/ram_array[23][1]}} {{ram_0/ram3_ram_array_reg[23][2]} {{constant 0}} {ram_0/ram3/ram_array[23][2]}} {{ram_0/ram3_ram_array_reg[23][3]} {{constant 0}} {ram_0/ram3/ram_array[23][3]}} {{ram_0/ram3_ram_array_reg[24][0]} {{constant 0}} {ram_0/ram3/ram_array[24][0]}} {{ram_0/ram3_ram_array_reg[24][1]} {{constant 0}} {ram_0/ram3/ram_array[24][1]}} {{ram_0/ram3_ram_array_reg[24][2]} {{constant 0}} {ram_0/ram3/ram_array[24][2]}} {{ram_0/ram3_ram_array_reg[24][3]} {{constant 0}} {ram_0/ram3/ram_array[24][3]}} {{ram_0/ram3_ram_array_reg[25][0]} {{constant 0}} {ram_0/ram3/ram_array[25][0]}} {{ram_0/ram3_ram_array_reg[25][1]} {{constant 0}} {ram_0/ram3/ram_array[25][1]}} {{ram_0/ram3_ram_array_reg[25][2]} {{constant 0}} {ram_0/ram3/ram_array[25][2]}} {{ram_0/ram3_ram_array_reg[25][3]} {{constant 0}} {ram_0/ram3/ram_array[25][3]}} {{ram_0/ram3_ram_array_reg[26][0]} {{constant 0}} {ram_0/ram3/ram_array[26][0]}} {{ram_0/ram3_ram_array_reg[26][1]} {{constant 0}} {ram_0/ram3/ram_array[26][1]}} {{ram_0/ram3_ram_array_reg[26][2]} {{constant 0}} {ram_0/ram3/ram_array[26][2]}} {{ram_0/ram3_ram_array_reg[26][3]} {{constant 0}} {ram_0/ram3/ram_array[26][3]}} {{ram_0/ram3_ram_array_reg[27][0]} {{constant 0}} {ram_0/ram3/ram_array[27][0]}} {{ram_0/ram3_ram_array_reg[27][1]} {{constant 0}} {ram_0/ram3/ram_array[27][1]}} {{ram_0/ram3_ram_array_reg[27][2]} {{constant 0}} {ram_0/ram3/ram_array[27][2]}} {{ram_0/ram3_ram_array_reg[27][3]} {{constant 0}} {ram_0/ram3/ram_array[27][3]}} {{ram_0/ram3_ram_array_reg[28][0]} {{constant 0}} {ram_0/ram3/ram_array[28][0]}} {{ram_0/ram3_ram_array_reg[28][1]} {{constant 0}} {ram_0/ram3/ram_array[28][1]}} {{ram_0/ram3_ram_array_reg[28][2]} {{constant 0}} {ram_0/ram3/ram_array[28][2]}} {{ram_0/ram3_ram_array_reg[28][3]} {{constant 0}} {ram_0/ram3/ram_array[28][3]}} {{ram_0/ram3_ram_array_reg[29][0]} {{constant 0}} {ram_0/ram3/ram_array[29][0]}} {{ram_0/ram3_ram_array_reg[29][1]} {{constant 0}} {ram_0/ram3/ram_array[29][1]}} {{ram_0/ram3_ram_array_reg[29][2]} {{constant 0}} {ram_0/ram3/ram_array[29][2]}} {{ram_0/ram3_ram_array_reg[29][3]} {{constant 0}} {ram_0/ram3/ram_array[29][3]}} {{ram_0/ram3_ram_array_reg[30][0]} {{constant 0}} {ram_0/ram3/ram_array[30][0]}} {{ram_0/ram3_ram_array_reg[30][1]} {{constant 0}} {ram_0/ram3/ram_array[30][1]}} {{ram_0/ram3_ram_array_reg[30][2]} {{constant 0}} {ram_0/ram3/ram_array[30][2]}} {{ram_0/ram3_ram_array_reg[30][3]} {{constant 0}} {ram_0/ram3/ram_array[30][3]}} {{ram_0/ram3_ram_array_reg[31][0]} {{constant 0}} {ram_0/ram3/ram_array[31][0]}} {{ram_0/ram3_ram_array_reg[31][1]} {{constant 0}} {ram_0/ram3/ram_array[31][1]}} {{ram_0/ram3_ram_array_reg[31][2]} {{constant 0}} {ram_0/ram3/ram_array[31][2]}} {{ram_0/ram3_ram_array_reg[31][3]} {{constant 0}} {ram_0/ram3/ram_array[31][3]}} {{rom_store0/rom_data_reg[0]} {{constant 0(*)}} {rom_store0/rom_data[0]}} {{rom_store1/rom_data_reg[0]} {{constant 0(*)}} {rom_store1/rom_data[0]}} {{ram_0/ram0_ram_array_reg[22][0]} {{constant 0}} {ram_0/ram0/ram_array[22][0]}} {{ram_0/ram0_ram_array_reg[22][1]} {{constant 0}} {ram_0/ram0/ram_array[22][1]}} {{ram_0/ram0_ram_array_reg[22][2]} {{constant 0}} {ram_0/ram0/ram_array[22][2]}} {{ram_0/ram0_ram_array_reg[22][3]} {{constant 0}} {ram_0/ram0/ram_array[22][3]}} {{ram_0/ram0_ram_array_reg[23][0]} {{constant 0}} {ram_0/ram0/ram_array[23][0]}} {{ram_0/ram0_ram_array_reg[23][1]} {{constant 0}} {ram_0/ram0/ram_array[23][1]}} {{ram_0/ram0_ram_array_reg[23][2]} {{constant 0}} {ram_0/ram0/ram_array[23][2]}} {{ram_0/ram0_ram_array_reg[23][3]} {{constant 0}} {ram_0/ram0/ram_array[23][3]}} {{ram_0/ram0_ram_array_reg[24][0]} {{constant 0}} {ram_0/ram0/ram_array[24][0]}} {{ram_0/ram0_ram_array_reg[24][1]} {{constant 0}} {ram_0/ram0/ram_array[24][1]}} {{ram_0/ram0_ram_array_reg[24][2]} {{constant 0}} {ram_0/ram0/ram_array[24][2]}} {{ram_0/ram0_ram_array_reg[24][3]} {{constant 0}} {ram_0/ram0/ram_array[24][3]}} {{ram_0/ram0_ram_array_reg[25][0]} {{constant 0}} {ram_0/ram0/ram_array[25][0]}} {{ram_0/ram0_ram_array_reg[25][1]} {{constant 0}} {ram_0/ram0/ram_array[25][1]}} {{ram_0/ram0_ram_array_reg[25][2]} {{constant 0}} {ram_0/ram0/ram_array[25][2]}} {{ram_0/ram0_ram_array_reg[25][3]} {{constant 0}} {ram_0/ram0/ram_array[25][3]}} {{ram_0/ram0_ram_array_reg[26][0]} {{constant 0}} {ram_0/ram0/ram_array[26][0]}} {{ram_0/ram0_ram_array_reg[26][1]} {{constant 0}} {ram_0/ram0/ram_array[26][1]}} {{ram_0/ram0_ram_array_reg[26][2]} {{constant 0}} {ram_0/ram0/ram_array[26][2]}} {{ram_0/ram0_ram_array_reg[26][3]} {{constant 0}} {ram_0/ram0/ram_array[26][3]}} {{ram_0/ram0_ram_array_reg[30][0]} {{constant 0}} {ram_0/ram0/ram_array[30][0]}} {{ram_0/ram0_ram_array_reg[30][1]} {{constant 0}} {ram_0/ram0/ram_array[30][1]}} {{ram_0/ram0_ram_array_reg[30][2]} {{constant 0}} {ram_0/ram0/ram_array[30][2]}} {{ram_0/ram0_ram_array_reg[30][3]} {{constant 0}} {ram_0/ram0/ram_array[30][3]}} {{ram_0/ram0_ram_array_reg[31][0]} {{constant 0}} {ram_0/ram0/ram_array[31][0]}} {{ram_0/ram0_ram_array_reg[31][1]} {{constant 0}} {ram_0/ram0/ram_array[31][1]}} {{ram_0/ram0_ram_array_reg[31][2]} {{constant 0}} {ram_0/ram0/ram_array[31][2]}} {{ram_0/ram0_ram_array_reg[31][3]} {{constant 0}} {ram_0/ram0/ram_array[31][3]}} {{ram_0/ram1_ram_array_reg[22][0]} {{constant 0}} {ram_0/ram1/ram_array[22][0]}} {{ram_0/ram1_ram_array_reg[22][1]} {{constant 0}} {ram_0/ram1/ram_array[22][1]}} {{ram_0/ram1_ram_array_reg[22][2]} {{constant 0}} {ram_0/ram1/ram_array[22][2]}} {{ram_0/ram1_ram_array_reg[22][3]} {{constant 0}} {ram_0/ram1/ram_array[22][3]}} {{ram_0/ram1_ram_array_reg[23][0]} {{constant 0}} {ram_0/ram1/ram_array[23][0]}} {{ram_0/ram1_ram_array_reg[23][1]} {{constant 0}} {ram_0/ram1/ram_array[23][1]}} {{ram_0/ram1_ram_array_reg[23][2]} {{constant 0}} {ram_0/ram1/ram_array[23][2]}} {{ram_0/ram1_ram_array_reg[23][3]} {{constant 0}} {ram_0/ram1/ram_array[23][3]}} {{ram_0/ram1_ram_array_reg[30][0]} {{constant 0}} {ram_0/ram1/ram_array[30][0]}} {{ram_0/ram1_ram_array_reg[30][1]} {{constant 0}} {ram_0/ram1/ram_array[30][1]}} {{ram_0/ram1_ram_array_reg[30][2]} {{constant 0}} {ram_0/ram1/ram_array[30][2]}} {{ram_0/ram1_ram_array_reg[30][3]} {{constant 0}} {ram_0/ram1/ram_array[30][3]}} {{ram_0/ram1_ram_array_reg[31][0]} {{constant 0}} {ram_0/ram1/ram_array[31][0]}} {{ram_0/ram1_ram_array_reg[31][1]} {{constant 0}} {ram_0/ram1/ram_array[31][1]}} {{ram_0/ram1_ram_array_reg[31][2]} {{constant 0}} {ram_0/ram1/ram_array[31][2]}} {{ram_0/ram1_ram_array_reg[31][3]} {{constant 0}} {ram_0/ram1/ram_array[31][3]}} {{ram_0/ram2_ram_array_reg[25][0]} {{constant 0}} {ram_0/ram2/ram_array[25][0]}} {{ram_0/ram2_ram_array_reg[25][1]} {{constant 0}} {ram_0/ram2/ram_array[25][1]}} {{ram_0/ram2_ram_array_reg[25][2]} {{constant 0}} {ram_0/ram2/ram_array[25][2]}} {{ram_0/ram2_ram_array_reg[25][3]} {{constant 0}} {ram_0/ram2/ram_array[25][3]}} {{ram_0/ram2_ram_array_reg[26][0]} {{constant 0}} {ram_0/ram2/ram_array[26][0]}} {{ram_0/ram2_ram_array_reg[26][1]} {{constant 0}} {ram_0/ram2/ram_array[26][1]}} {{ram_0/ram2_ram_array_reg[26][2]} {{constant 0}} {ram_0/ram2/ram_array[26][2]}} {{ram_0/ram2_ram_array_reg[26][3]} {{constant 0}} {ram_0/ram2/ram_array[26][3]}} {{ram_0/ram2_ram_array_reg[27][0]} {{constant 0}} {ram_0/ram2/ram_array[27][0]}} {{ram_0/ram2_ram_array_reg[27][1]} {{constant 0}} {ram_0/ram2/ram_array[27][1]}} {{ram_0/ram2_ram_array_reg[27][2]} {{constant 0}} {ram_0/ram2/ram_array[27][2]}} {{ram_0/ram2_ram_array_reg[27][3]} {{constant 0}} {ram_0/ram2/ram_array[27][3]}} {{ram_0/ram2_ram_array_reg[28][0]} {{constant 0}} {ram_0/ram2/ram_array[28][0]}} {{ram_0/ram2_ram_array_reg[28][1]} {{constant 0}} {ram_0/ram2/ram_array[28][1]}} {{ram_0/ram2_ram_array_reg[28][2]} {{constant 0}} {ram_0/ram2/ram_array[28][2]}} {{ram_0/ram2_ram_array_reg[28][3]} {{constant 0}} {ram_0/ram2/ram_array[28][3]}} {{ram_0/ram2_ram_array_reg[29][0]} {{constant 0}} {ram_0/ram2/ram_array[29][0]}} {{ram_0/ram2_ram_array_reg[29][1]} {{constant 0}} {ram_0/ram2/ram_array[29][1]}} {{ram_0/ram2_ram_array_reg[29][2]} {{constant 0}} {ram_0/ram2/ram_array[29][2]}} {{ram_0/ram2_ram_array_reg[29][3]} {{constant 0}} {ram_0/ram2/ram_array[29][3]}} {{ram_0/ram2_ram_array_reg[30][0]} {{constant 0}} {ram_0/ram2/ram_array[30][0]}} {{ram_0/ram2_ram_array_reg[30][1]} {{constant 0}} {ram_0/ram2/ram_array[30][1]}} {{ram_0/ram2_ram_array_reg[30][2]} {{constant 0}} {ram_0/ram2/ram_array[30][2]}} {{ram_0/ram2_ram_array_reg[30][3]} {{constant 0}} {ram_0/ram2/ram_array[30][3]}} {{ram_0/ram2_ram_array_reg[31][0]} {{constant 0}} {ram_0/ram2/ram_array[31][0]}} {{ram_0/ram2_ram_array_reg[31][1]} {{constant 0}} {ram_0/ram2/ram_array[31][1]}} {{ram_0/ram2_ram_array_reg[31][2]} {{constant 0}} {ram_0/ram2/ram_array[31][2]}} {{ram_0/ram2_ram_array_reg[31][3]} {{constant 0}} {ram_0/ram2/ram_array[31][3]}} {{ram_0/ram1_ram_array_reg[20][0]} {{constant 0}} {ram_0/ram1/ram_array[20][0]}} {{ram_0/ram1_ram_array_reg[20][1]} {{constant 0}} {ram_0/ram1/ram_array[20][1]}} {{ram_0/ram1_ram_array_reg[20][2]} {{constant 0}} {ram_0/ram1/ram_array[20][2]}} {{ram_0/ram1_ram_array_reg[20][3]} {{constant 0}} {ram_0/ram1/ram_array[20][3]}} {{ram_0/ram1_ram_array_reg[21][0]} {{constant 0}} {ram_0/ram1/ram_array[21][0]}} {{ram_0/ram1_ram_array_reg[21][1]} {{constant 0}} {ram_0/ram1/ram_array[21][1]}} {{ram_0/ram1_ram_array_reg[21][2]} {{constant 0}} {ram_0/ram1/ram_array[21][2]}} {{ram_0/ram1_ram_array_reg[21][3]} {{constant 0}} {ram_0/ram1/ram_array[21][3]}} {{ram_0/ram1_ram_array_reg[24][0]} {{constant 0}} {ram_0/ram1/ram_array[24][0]}} {{ram_0/ram1_ram_array_reg[24][1]} {{constant 0}} {ram_0/ram1/ram_array[24][1]}} {{ram_0/ram1_ram_array_reg[24][2]} {{constant 0}} {ram_0/ram1/ram_array[24][2]}} {{ram_0/ram1_ram_array_reg[24][3]} {{constant 0}} {ram_0/ram1/ram_array[24][3]}} {{ram_0/ram1_ram_array_reg[25][0]} {{constant 0}} {ram_0/ram1/ram_array[25][0]}} {{ram_0/ram1_ram_array_reg[25][1]} {{constant 0}} {ram_0/ram1/ram_array[25][1]}} {{ram_0/ram1_ram_array_reg[25][2]} {{constant 0}} {ram_0/ram1/ram_array[25][2]}} {{ram_0/ram1_ram_array_reg[25][3]} {{constant 0}} {ram_0/ram1/ram_array[25][3]}} {{ram_0/ram1_ram_array_reg[26][0]} {{constant 0}} {ram_0/ram1/ram_array[26][0]}} {{ram_0/ram1_ram_array_reg[26][1]} {{constant 0}} {ram_0/ram1/ram_array[26][1]}} {{ram_0/ram1_ram_array_reg[26][2]} {{constant 0}} {ram_0/ram1/ram_array[26][2]}} {{ram_0/ram1_ram_array_reg[26][3]} {{constant 0}} {ram_0/ram1/ram_array[26][3]}} {{ram_0/ram1_ram_array_reg[27][0]} {{constant 0}} {ram_0/ram1/ram_array[27][0]}} {{ram_0/ram1_ram_array_reg[27][1]} {{constant 0}} {ram_0/ram1/ram_array[27][1]}} {{ram_0/ram1_ram_array_reg[27][2]} {{constant 0}} {ram_0/ram1/ram_array[27][2]}} {{ram_0/ram1_ram_array_reg[27][3]} {{constant 0}} {ram_0/ram1/ram_array[27][3]}} {{ram_0/ram1_ram_array_reg[28][0]} {{constant 0}} {ram_0/ram1/ram_array[28][0]}} {{ram_0/ram1_ram_array_reg[28][1]} {{constant 0}} {ram_0/ram1/ram_array[28][1]}} {{ram_0/ram1_ram_array_reg[28][2]} {{constant 0}} {ram_0/ram1/ram_array[28][2]}} {{ram_0/ram1_ram_array_reg[28][3]} {{constant 0}} {ram_0/ram1/ram_array[28][3]}} {{ram_0/ram1_ram_array_reg[29][0]} {{constant 0}} {ram_0/ram1/ram_array[29][0]}} {{ram_0/ram1_ram_array_reg[29][1]} {{constant 0}} {ram_0/ram1/ram_array[29][1]}} {{ram_0/ram1_ram_array_reg[29][2]} {{constant 0}} {ram_0/ram1/ram_array[29][2]}} {{ram_0/ram1_ram_array_reg[29][3]} {{constant 0}} {ram_0/ram1/ram_array[29][3]}} {{rom_0/rom_out_reg[0]} {{constant 0(*)}} {rom_0/rom_out[0]}} {{rom_0/rom_out_reg[1]} {{constant 0(*)}} {rom_0/rom_out[1]}} {{rom_0/rom_out_reg[2]} {{constant 0(*)}} {rom_0/rom_out[2]}} {{rom_0/rom_out_reg[3]} {{constant 0(*)}} {rom_0/rom_out[3]}} {{rom_1/rom_out_reg[0]} {{constant 0(*)}} {rom_1/rom_out[0]}} {{rom_1/rom_out_reg[1]} {{constant 0(*)}} {rom_1/rom_out[1]}} {{rom_1/rom_out_reg[2]} {{constant 0(*)}} {rom_1/rom_out[2]}} {{rom_1/rom_out_reg[3]} {{constant 0(*)}} {rom_1/rom_out[3]}} {{ram_0/ram0_ram_array_reg[20][0]} {{constant 0}} {ram_0/ram0/ram_array[20][0]}} {{ram_0/ram0_ram_array_reg[20][1]} {{constant 0}} {ram_0/ram0/ram_array[20][1]}} {{ram_0/ram0_ram_array_reg[20][2]} {{constant 0}} {ram_0/ram0/ram_array[20][2]}} {{ram_0/ram0_ram_array_reg[20][3]} {{constant 0}} {ram_0/ram0/ram_array[20][3]}} {{ram_0/ram0_ram_array_reg[21][0]} {{constant 0}} {ram_0/ram0/ram_array[21][0]}} {{ram_0/ram0_ram_array_reg[21][1]} {{constant 0}} {ram_0/ram0/ram_array[21][1]}} {{ram_0/ram0_ram_array_reg[21][2]} {{constant 0}} {ram_0/ram0/ram_array[21][2]}} {{ram_0/ram0_ram_array_reg[21][3]} {{constant 0}} {ram_0/ram0/ram_array[21][3]}} {{ram_0/ram0_ram_array_reg[27][0]} {{constant 0}} {ram_0/ram0/ram_array[27][0]}} {{ram_0/ram0_ram_array_reg[27][1]} {{constant 0}} {ram_0/ram0/ram_array[27][1]}} {{ram_0/ram0_ram_array_reg[27][2]} {{constant 0}} {ram_0/ram0/ram_array[27][2]}} {{ram_0/ram0_ram_array_reg[27][3]} {{constant 0}} {ram_0/ram0/ram_array[27][3]}} {{ram_0/ram0_ram_array_reg[28][0]} {{constant 0}} {ram_0/ram0/ram_array[28][0]}} {{ram_0/ram0_ram_array_reg[28][1]} {{constant 0}} {ram_0/ram0/ram_array[28][1]}} {{ram_0/ram0_ram_array_reg[28][2]} {{constant 0}} {ram_0/ram0/ram_array[28][2]}} {{ram_0/ram0_ram_array_reg[28][3]} {{constant 0}} {ram_0/ram0/ram_array[28][3]}} {{ram_0/ram0_ram_array_reg[29][0]} {{constant 0}} {ram_0/ram0/ram_array[29][0]}} {{ram_0/ram0_ram_array_reg[29][1]} {{constant 0}} {ram_0/ram0/ram_array[29][1]}} {{ram_0/ram0_ram_array_reg[29][2]} {{constant 0}} {ram_0/ram0/ram_array[29][2]}} {{ram_0/ram0_ram_array_reg[29][3]} {{constant 0}} {ram_0/ram0/ram_array[29][3]}} {{rom_0_rom_out_reg[0]} unloaded {rom_0/rom_out[0]}} {{rom_0_rom_out_reg[1]} unloaded {rom_0/rom_out[1]}} {{rom_0_rom_out_reg[2]} unloaded {rom_0/rom_out[2]}} {{rom_0_rom_out_reg[3]} unloaded {rom_0/rom_out[3]}} {{rom_1_rom_out_reg[0]} unloaded {rom_1/rom_out[0]}} {{rom_1_rom_out_reg[1]} unloaded {rom_1/rom_out[1]}} {{rom_1_rom_out_reg[2]} unloaded {rom_1/rom_out[2]}} {{rom_1_rom_out_reg[3]} unloaded {rom_1/rom_out[3]}} {{rom_store0_rom_data_reg[0]} unloaded {rom_store0/rom_data[0]}} {{rom_store1_rom_data_reg[0]} unloaded {rom_store1/rom_data[0]}} {rom_1_timing_recovery_a11_reg {{merged with rom_0_timing_recovery_a11_reg}} rom_1/timing_recovery/a11 rom_0/timing_recovery/a11} {rom_1_timing_recovery_a12_reg {{merged with rom_0_timing_recovery_a12_reg}} rom_1/timing_recovery/a12 rom_0/timing_recovery/a12} {rom_1_timing_recovery_a21_reg {{merged with rom_0_timing_recovery_a21_reg}} rom_1/timing_recovery/a21 rom_0/timing_recovery/a21} {rom_1_timing_recovery_a22_reg {{merged with rom_0_timing_recovery_a22_reg}} rom_1/timing_recovery/a22 rom_0/timing_recovery/a22} {rom_1_timing_recovery_a31_reg {{merged with rom_0_timing_recovery_a31_reg}} rom_1/timing_recovery/a31 rom_0/timing_recovery/a31} {rom_1_timing_recovery_a32_reg {{merged with rom_0_timing_recovery_a32_reg}} rom_1/timing_recovery/a32 rom_0/timing_recovery/a32} {rom_1_timing_recovery_m11_reg {{merged with rom_0_timing_recovery_m11_reg}} rom_1/timing_recovery/m11 rom_0/timing_recovery/m11} {rom_1_timing_recovery_m12_reg {{merged with rom_0_timing_recovery_m12_reg}} rom_1/timing_recovery/m12 rom_0/timing_recovery/m12} {rom_1_timing_recovery_m21_reg {{merged with rom_0_timing_recovery_m21_reg}} rom_1/timing_recovery/m21 rom_0/timing_recovery/m21} {rom_1_timing_recovery_m22_reg {{merged with rom_0_timing_recovery_m22_reg}} rom_1/timing_recovery/m22 rom_0/timing_recovery/m22} {rom_1_timing_recovery_x11_reg {{merged with rom_0_timing_recovery_x11_reg}} rom_1/timing_recovery/x11 rom_0/timing_recovery/x11} {rom_1_timing_recovery_x12_reg {{merged with rom_0_timing_recovery_x12_reg}} rom_1/timing_recovery/x12 rom_0/timing_recovery/x12} {rom_1_timing_recovery_x21_reg {{merged with rom_0_timing_recovery_x21_reg}} rom_1/timing_recovery/x21 rom_0/timing_recovery/x21} {rom_1_timing_recovery_x22_reg {{merged with rom_0_timing_recovery_x22_reg}} rom_1/timing_recovery/x22 rom_0/timing_recovery/x22}}
set_db -quiet design:mcs4 .max_fanout 15.000
set_db -quiet design:mcs4 .max_transition_by_mode {{mode:mcs4/view_mcs4_slow 10000.0} {mode:mcs4/view_mcs4_fast 40000.0}}
set_db -quiet design:mcs4 .max_fanout_by_mode {{mode:mcs4/view_mcs4_slow 15.000} {mode:mcs4/view_mcs4_fast 15.000}}
set_db -quiet design:mcs4 .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 16997} {cell_count 3043} {utilization  0.00} {runtime 17 48 16 49} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 13826} {cell_count 3260} {utilization  0.00} {runtime 6 57 13 66} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 13712} {cell_count 3222} {utilization  0.00} {runtime 4 69 7 79} }{reify {wns 41263} {tns 0} {vep 0} {area 8012} {cell_count 2256} {utilization  0.00} {runtime 10 79 25 105} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 8002} {cell_count 2277} {utilization  0.00} {runtime 88 209 85 230} }}
set_db -quiet design:mcs4 .seq_mbci_coverage 0.0
set_db -quiet design:mcs4 .hdl_user_name mcs4
set_db -quiet design:mcs4 .hdl_filelist {{default {-v2001 -f} {SYNTHESIS} {../../rtl/verilog/mcs4.f} {} {}}}
set_db -quiet design:mcs4 .seq_reason_deleted {{rom_0/n0135 unloaded} {rom_0/io_out unloaded} {rom_1/n0135 unloaded} {rom_1/io_out unloaded} {{ram_0/oport_reg[1]} unloaded} {{ram_0/oport_reg[2]} unloaded} {{ram_0/oport_reg[3]} unloaded} {shiftreg/serial_out_reg unloaded} {i4004/tio_board/n0432_reg {{constant 1}}} {{rom_0/fetch_addr_reg[0]} unloaded} {{rom_0/fetch_addr_reg[1]} unloaded} {{rom_0/fetch_addr_reg[2]} unloaded} {{rom_0/fetch_addr_reg[3]} unloaded} {{rom_0/fetch_addr_reg[4]} unloaded} {{rom_0/fetch_addr_reg[5]} unloaded} {{rom_0/fetch_addr_reg[6]} unloaded} {{rom_0/fetch_addr_reg[7]} unloaded} {{rom_1/fetch_addr_reg[0]} unloaded} {{rom_1/fetch_addr_reg[1]} unloaded} {{rom_1/fetch_addr_reg[2]} unloaded} {{rom_1/fetch_addr_reg[3]} unloaded} {{rom_1/fetch_addr_reg[4]} unloaded} {{rom_1/fetch_addr_reg[5]} unloaded} {{rom_1/fetch_addr_reg[6]} unloaded} {{rom_1/fetch_addr_reg[7]} unloaded} {{rom_store0/rom_data_reg[1]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[2]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[3]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[4]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[5]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[6]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store0/rom_data_reg[7]} {{merged with rom_store0/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[1]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[2]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[3]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[4]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[5]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[6]} {{merged with rom_store1/rom_data_reg[0]}}} {{rom_store1/rom_data_reg[7]} {{merged with rom_store1/rom_data_reg[0]}}} {{ram_0/ram2_ram_array_reg[20][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[20][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[20][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[20][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[21][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[21][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[21][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[21][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[22][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[22][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[22][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[22][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[23][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[23][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[23][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[23][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[24][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[24][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[24][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[24][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[20][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[20][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[20][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[20][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[21][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[21][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[21][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[21][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[22][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[22][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[22][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[22][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[23][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[23][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[23][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[23][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[24][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[24][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[24][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[24][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[25][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[25][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[25][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[25][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[26][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[26][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[26][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[26][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[27][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[27][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[27][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[27][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[28][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[28][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[28][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[28][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[29][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[29][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[29][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[29][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[30][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[30][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[30][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[30][3]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[31][0]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[31][1]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[31][2]} {{constant 0}}} {{ram_0/ram3_ram_array_reg[31][3]} {{constant 0}}} {{rom_store0/rom_data_reg[0]} {{constant 0(*)}}} {{rom_store1/rom_data_reg[0]} {{constant 0(*)}}} {{ram_0/ram0_ram_array_reg[22][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[22][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[22][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[22][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[23][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[23][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[23][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[23][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[24][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[24][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[24][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[24][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[25][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[25][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[25][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[25][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[26][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[26][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[26][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[26][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[30][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[30][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[30][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[30][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[31][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[31][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[31][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[31][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[22][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[22][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[22][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[22][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[23][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[23][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[23][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[23][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[30][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[30][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[30][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[30][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[31][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[31][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[31][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[31][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[25][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[25][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[25][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[25][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[26][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[26][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[26][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[26][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[27][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[27][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[27][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[27][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[28][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[28][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[28][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[28][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[29][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[29][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[29][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[29][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[30][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[30][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[30][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[30][3]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[31][0]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[31][1]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[31][2]} {{constant 0}}} {{ram_0/ram2_ram_array_reg[31][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[20][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[20][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[20][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[20][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[21][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[21][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[21][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[21][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[24][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[24][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[24][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[24][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[25][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[25][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[25][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[25][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[26][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[26][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[26][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[26][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[27][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[27][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[27][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[27][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[28][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[28][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[28][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[28][3]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[29][0]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[29][1]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[29][2]} {{constant 0}}} {{ram_0/ram1_ram_array_reg[29][3]} {{constant 0}}} {{rom_0/rom_out_reg[0]} {{constant 0(*)}}} {{rom_0/rom_out_reg[1]} {{constant 0(*)}}} {{rom_0/rom_out_reg[2]} {{constant 0(*)}}} {{rom_0/rom_out_reg[3]} {{constant 0(*)}}} {{rom_1/rom_out_reg[0]} {{constant 0(*)}}} {{rom_1/rom_out_reg[1]} {{constant 0(*)}}} {{rom_1/rom_out_reg[2]} {{constant 0(*)}}} {{rom_1/rom_out_reg[3]} {{constant 0(*)}}} {{ram_0/ram0_ram_array_reg[20][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[20][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[20][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[20][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[21][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[21][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[21][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[21][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[27][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[27][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[27][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[27][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[28][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[28][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[28][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[28][3]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[29][0]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[29][1]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[29][2]} {{constant 0}}} {{ram_0/ram0_ram_array_reg[29][3]} {{constant 0}}} {{rom_0_rom_out_reg[0]} unloaded} {{rom_0_rom_out_reg[1]} unloaded} {{rom_0_rom_out_reg[2]} unloaded} {{rom_0_rom_out_reg[3]} unloaded} {{rom_1_rom_out_reg[0]} unloaded} {{rom_1_rom_out_reg[1]} unloaded} {{rom_1_rom_out_reg[2]} unloaded} {{rom_1_rom_out_reg[3]} unloaded} {{rom_store0_rom_data_reg[0]} unloaded} {{rom_store1_rom_data_reg[0]} unloaded} {rom_1_timing_recovery_a11_reg {{merged with rom_0_timing_recovery_a11_reg}}} {rom_1_timing_recovery_a12_reg {{merged with rom_0_timing_recovery_a12_reg}}} {rom_1_timing_recovery_a21_reg {{merged with rom_0_timing_recovery_a21_reg}}} {rom_1_timing_recovery_a22_reg {{merged with rom_0_timing_recovery_a22_reg}}} {rom_1_timing_recovery_a31_reg {{merged with rom_0_timing_recovery_a31_reg}}} {rom_1_timing_recovery_a32_reg {{merged with rom_0_timing_recovery_a32_reg}}} {rom_1_timing_recovery_m11_reg {{merged with rom_0_timing_recovery_m11_reg}}} {rom_1_timing_recovery_m12_reg {{merged with rom_0_timing_recovery_m12_reg}}} {rom_1_timing_recovery_m21_reg {{merged with rom_0_timing_recovery_m21_reg}}} {rom_1_timing_recovery_m22_reg {{merged with rom_0_timing_recovery_m22_reg}}} {rom_1_timing_recovery_x11_reg {{merged with rom_0_timing_recovery_x11_reg}}} {rom_1_timing_recovery_x12_reg {{merged with rom_0_timing_recovery_x12_reg}}} {rom_1_timing_recovery_x21_reg {{merged with rom_0_timing_recovery_x21_reg}}} {rom_1_timing_recovery_x22_reg {{merged with rom_0_timing_recovery_x22_reg}}}}
set_db -quiet design:mcs4 .verification_directory fv/mcs4
set_db -quiet design:mcs4 .lp_clock_gating_max_flops inf
set_db -quiet design:mcs4 .arch_filename ../../rtl/verilog/./mcs4.v
set_db -quiet design:mcs4 .entity_filename ../../rtl/verilog/./mcs4.v
set_db -quiet port:mcs4/sysclk .original_name sysclk
set_db -quiet port:mcs4/poc_pad .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet port:mcs4/poc_pad .original_name poc_pad
set_db -quiet port:mcs4/clear_pad .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet port:mcs4/clear_pad .original_name clear_pad
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[7]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[7]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .original_name {io_pad[7]}
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[6]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[6]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .original_name {io_pad[6]}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[5]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[5]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .original_name {io_pad[5]}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[4]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[4]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .original_name {io_pad[4]}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[3]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[3]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .original_name {io_pad[3]}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[2]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[2]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .original_name {io_pad[2]}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[1]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[1]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .original_name {io_pad[1]}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[0]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[0]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .original_name {io_pad[0]}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[9]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[9]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[9]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[9]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[9]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[9]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[9]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[9]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[9]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[9]} .original_name {p_out[9]}
set_db -quiet {port:mcs4/p_out[9]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[8]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[8]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[8]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[8]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[8]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[8]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[8]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[8]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[8]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[8]} .original_name {p_out[8]}
set_db -quiet {port:mcs4/p_out[8]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[7]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[7]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[7]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[7]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[7]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[7]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[7]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[7]} .original_name {p_out[7]}
set_db -quiet {port:mcs4/p_out[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[6]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[6]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[6]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[6]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[6]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[6]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[6]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[6]} .original_name {p_out[6]}
set_db -quiet {port:mcs4/p_out[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[5]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[5]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[5]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[5]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[5]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[5]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[5]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[5]} .original_name {p_out[5]}
set_db -quiet {port:mcs4/p_out[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[4]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[4]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[4]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[4]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[4]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[4]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[4]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[4]} .original_name {p_out[4]}
set_db -quiet {port:mcs4/p_out[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[3]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[3]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[3]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[3]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[3]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[3]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[3]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[3]} .original_name {p_out[3]}
set_db -quiet {port:mcs4/p_out[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[2]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[2]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[2]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[2]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[2]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[2]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[2]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[2]} .original_name {p_out[2]}
set_db -quiet {port:mcs4/p_out[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[1]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[1]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[1]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[1]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[1]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[1]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[1]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[1]} .original_name {p_out[1]}
set_db -quiet {port:mcs4/p_out[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/p_out[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/p_out[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/p_out[0]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/p_out[0]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[0]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[0]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[0]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/p_out[0]} .max_capacitance 5.0
set_db -quiet {port:mcs4/p_out[0]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/p_out[0]} .original_name {p_out[0]}
set_db -quiet {port:mcs4/p_out[0]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[7]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[7]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[7]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[7]} .original_name {io_pad[7]}
set_db -quiet {port:mcs4/io_pad[7]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[6]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[6]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[6]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[6]} .original_name {io_pad[6]}
set_db -quiet {port:mcs4/io_pad[6]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[5]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[5]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[5]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[5]} .original_name {io_pad[5]}
set_db -quiet {port:mcs4/io_pad[5]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[4]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[4]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[4]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[4]} .original_name {io_pad[4]}
set_db -quiet {port:mcs4/io_pad[4]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[3]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[3]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[3]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[3]} .original_name {io_pad[3]}
set_db -quiet {port:mcs4/io_pad[3]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[2]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[2]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[2]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[2]} .original_name {io_pad[2]}
set_db -quiet {port:mcs4/io_pad[2]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[1]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[1]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[1]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[1]} .original_name {io_pad[1]}
set_db -quiet {port:mcs4/io_pad[1]} .external_pin_cap {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_min 5.0
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_max {5.0 5.0}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_min 5.0
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_min_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .external_driver_by_mode {{mode:mcs4/view_mcs4_slow {lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y lib_pin:LS_slow/slow_vdd1v0/BUFX2/Y}} {mode:mcs4/view_mcs4_fast {lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y lib_pin:LS_fast/fast_vdd1v2/BUFX2/Y}}}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[0]} .external_capacitance_max_by_mode {{mode:mcs4/view_mcs4_slow {5.0 5.0}} {mode:mcs4/view_mcs4_fast {5.0 5.0}}}
set_db -quiet {port:mcs4/io_pad[0]} .max_capacitance 5.0
set_db -quiet {port:mcs4/io_pad[0]} .max_capacitance_by_mode {{mode:mcs4/view_mcs4_slow 5.0} {mode:mcs4/view_mcs4_fast 5.0}}
set_db -quiet {port:mcs4/io_pad[0]} .original_name {io_pad[0]}
set_db -quiet {port:mcs4/io_pad[0]} .external_pin_cap {5.0 5.0}
set_db -quiet inst:mcs4/ram_0_src_ram_sel_reg .original_name ram_0/src_ram_sel
set_db -quiet inst:mcs4/ram_0_src_ram_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_src_ram_sel_reg .single_bit_orig_name ram_0/src_ram_sel
set_db -quiet inst:mcs4/ram_0_src_ram_sel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_src_ram_sel_reg/Q .original_name ram_0/src_ram_sel/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][1]} .original_name {{ram_0/ram1/ram_array[19][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][1]} .single_bit_orig_name {ram_0/ram1/ram_array[19][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[19][1]/Q} .original_name {ram_0/ram1/ram_array[19][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][0]} .original_name {{ram_0/ram1/ram_array[19][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][0]} .single_bit_orig_name {ram_0/ram1/ram_array[19][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[19][0]/Q} .original_name {ram_0/ram1/ram_array[19][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][2]} .original_name {{ram_0/ram0/ram_array[18][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][2]} .single_bit_orig_name {ram_0/ram0/ram_array[18][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[18][2]/Q} .original_name {ram_0/ram0/ram_array[18][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][3]} .original_name {{ram_0/ram0/ram_array[18][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][3]} .single_bit_orig_name {ram_0/ram0/ram_array[18][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[18][3]/Q} .original_name {ram_0/ram0/ram_array[18][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][1]} .original_name {{ram_0/ram0/ram_array[18][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][1]} .single_bit_orig_name {ram_0/ram0/ram_array[18][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[18][1]/Q} .original_name {ram_0/ram0/ram_array[18][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][0]} .original_name {{ram_0/ram0/ram_array[18][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][0]} .single_bit_orig_name {ram_0/ram0/ram_array[18][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[18][0]/Q} .original_name {ram_0/ram0/ram_array[18][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][3]} .original_name {{ram_0/ram0/ram_array[16][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][3]} .single_bit_orig_name {ram_0/ram0/ram_array[16][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[16][3]/Q} .original_name {ram_0/ram0/ram_array[16][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][2]} .original_name {{ram_0/ram0/ram_array[16][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][2]} .single_bit_orig_name {ram_0/ram0/ram_array[16][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[16][2]/Q} .original_name {ram_0/ram0/ram_array[16][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][1]} .original_name {{ram_0/ram0/ram_array[16][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][1]} .single_bit_orig_name {ram_0/ram0/ram_array[16][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[16][1]/Q} .original_name {ram_0/ram0/ram_array[16][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][0]} .original_name {{ram_0/ram0/ram_array[16][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][0]} .single_bit_orig_name {ram_0/ram0/ram_array[16][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[16][0]/Q} .original_name {ram_0/ram0/ram_array[16][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][3]} .original_name {{ram_0/ram2/ram_array[18][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][3]} .single_bit_orig_name {ram_0/ram2/ram_array[18][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[18][3]/Q} .original_name {ram_0/ram2/ram_array[18][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][2]} .original_name {{ram_0/ram2/ram_array[18][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][2]} .single_bit_orig_name {ram_0/ram2/ram_array[18][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[18][2]/Q} .original_name {ram_0/ram2/ram_array[18][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][1]} .original_name {{ram_0/ram2/ram_array[18][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][1]} .single_bit_orig_name {ram_0/ram2/ram_array[18][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[18][1]/Q} .original_name {ram_0/ram2/ram_array[18][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][0]} .original_name {{ram_0/ram2/ram_array[18][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][0]} .single_bit_orig_name {ram_0/ram2/ram_array[18][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[18][0]/Q} .original_name {ram_0/ram2/ram_array[18][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][3]} .original_name {{ram_0/ram2/ram_array[16][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][3]} .single_bit_orig_name {ram_0/ram2/ram_array[16][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[16][3]/Q} .original_name {ram_0/ram2/ram_array[16][3]/q}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[0]} .original_name {{ram_0/char_num[0]}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_char_num_reg[0]} .single_bit_orig_name {ram_0/char_num[0]}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_char_num_reg[0]/Q} .original_name {ram_0/char_num[0]/q}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[1]} .original_name {{ram_0/char_num[1]}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_char_num_reg[1]} .single_bit_orig_name {ram_0/char_num[1]}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_char_num_reg[1]/Q} .original_name {ram_0/char_num[1]/q}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[2]} .original_name {{ram_0/char_num[2]}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_char_num_reg[2]} .single_bit_orig_name {ram_0/char_num[2]}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_char_num_reg[2]/Q} .original_name {ram_0/char_num[2]/q}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[3]} .original_name {{ram_0/char_num[3]}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_char_num_reg[3]} .single_bit_orig_name {ram_0/char_num[3]}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_char_num_reg[3]/Q} .original_name {ram_0/char_num[3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][2]} .original_name {{ram_0/ram2/ram_array[16][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][2]} .single_bit_orig_name {ram_0/ram2/ram_array[16][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[16][2]/Q} .original_name {ram_0/ram2/ram_array[16][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][1]} .original_name {{ram_0/ram2/ram_array[16][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][1]} .single_bit_orig_name {ram_0/ram2/ram_array[16][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[16][1]/Q} .original_name {ram_0/ram2/ram_array[16][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][0]} .original_name {{ram_0/ram2/ram_array[16][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][0]} .single_bit_orig_name {ram_0/ram2/ram_array[16][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[16][0]/Q} .original_name {ram_0/ram2/ram_array[16][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][3]} .original_name {{ram_0/ram1/ram_array[6][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][3]} .single_bit_orig_name {ram_0/ram1/ram_array[6][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[6][3]/Q} .original_name {ram_0/ram1/ram_array[6][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][2]} .original_name {{ram_0/ram1/ram_array[6][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][2]} .single_bit_orig_name {ram_0/ram1/ram_array[6][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[6][2]/Q} .original_name {ram_0/ram1/ram_array[6][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][1]} .original_name {{ram_0/ram1/ram_array[6][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][1]} .single_bit_orig_name {ram_0/ram1/ram_array[6][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[6][1]/Q} .original_name {ram_0/ram1/ram_array[6][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][0]} .original_name {{ram_0/ram1/ram_array[6][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][0]} .single_bit_orig_name {ram_0/ram1/ram_array[6][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[6][0]/Q} .original_name {ram_0/ram1/ram_array[6][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][3]} .original_name {{ram_0/ram3/ram_array[6][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][3]} .single_bit_orig_name {ram_0/ram3/ram_array[6][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[6][3]/Q} .original_name {ram_0/ram3/ram_array[6][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][0]} .original_name {{ram_0/ram3/ram_array[6][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][0]} .single_bit_orig_name {ram_0/ram3/ram_array[6][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[6][0]/Q} .original_name {ram_0/ram3/ram_array[6][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][2]} .original_name {{ram_0/ram3/ram_array[6][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][2]} .single_bit_orig_name {ram_0/ram3/ram_array[6][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[6][2]/Q} .original_name {ram_0/ram3/ram_array[6][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][1]} .original_name {{ram_0/ram3/ram_array[6][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][1]} .single_bit_orig_name {ram_0/ram3/ram_array[6][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[6][1]/Q} .original_name {ram_0/ram3/ram_array[6][1]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0750_reg .original_name i4004/alu_board/n0750
set_db -quiet inst:mcs4/i4004_alu_board_n0750_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0750_reg .single_bit_orig_name i4004/alu_board/n0750
set_db -quiet inst:mcs4/i4004_alu_board_n0750_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0750_reg/Q .original_name i4004/alu_board/n0750/q
set_db -quiet inst:mcs4/i4004_alu_board_n0751_reg .original_name i4004/alu_board/n0751
set_db -quiet inst:mcs4/i4004_alu_board_n0751_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0751_reg .single_bit_orig_name i4004/alu_board/n0751
set_db -quiet inst:mcs4/i4004_alu_board_n0751_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0751_reg/Q .original_name i4004/alu_board/n0751/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][0]} .original_name {{ram_0/ram1/ram_array[8][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][0]} .single_bit_orig_name {ram_0/ram1/ram_array[8][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[8][0]/Q} .original_name {ram_0/ram1/ram_array[8][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][3]} .original_name {{ram_0/ram1/ram_array[2][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][3]} .single_bit_orig_name {ram_0/ram1/ram_array[2][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[2][3]/Q} .original_name {ram_0/ram1/ram_array[2][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][2]} .original_name {{ram_0/ram1/ram_array[2][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][2]} .single_bit_orig_name {ram_0/ram1/ram_array[2][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[2][2]/Q} .original_name {ram_0/ram1/ram_array[2][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][1]} .original_name {{ram_0/ram1/ram_array[2][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][1]} .single_bit_orig_name {ram_0/ram1/ram_array[2][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[2][1]/Q} .original_name {ram_0/ram1/ram_array[2][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][0]} .original_name {{ram_0/ram1/ram_array[2][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][0]} .single_bit_orig_name {ram_0/ram1/ram_array[2][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[2][0]/Q} .original_name {ram_0/ram1/ram_array[2][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][3]} .original_name {{ram_0/ram1/ram_array[0][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][3]} .single_bit_orig_name {ram_0/ram1/ram_array[0][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[0][3]/Q} .original_name {ram_0/ram1/ram_array[0][3]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0749_reg .original_name i4004/alu_board/n0749
set_db -quiet inst:mcs4/i4004_alu_board_n0749_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0749_reg .single_bit_orig_name i4004/alu_board/n0749
set_db -quiet inst:mcs4/i4004_alu_board_n0749_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0749_reg/Q .original_name i4004/alu_board/n0749/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][2]} .original_name {{ram_0/ram1/ram_array[0][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][2]} .single_bit_orig_name {ram_0/ram1/ram_array[0][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[0][2]/Q} .original_name {ram_0/ram1/ram_array[0][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][1]} .original_name {{ram_0/ram1/ram_array[0][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][1]} .single_bit_orig_name {ram_0/ram1/ram_array[0][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[0][1]/Q} .original_name {ram_0/ram1/ram_array[0][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][0]} .original_name {{ram_0/ram1/ram_array[0][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][0]} .single_bit_orig_name {ram_0/ram1/ram_array[0][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[0][0]/Q} .original_name {ram_0/ram1/ram_array[0][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][3]} .original_name {{ram_0/ram3/ram_array[2][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][3]} .single_bit_orig_name {ram_0/ram3/ram_array[2][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[2][3]/Q} .original_name {ram_0/ram3/ram_array[2][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][2]} .original_name {{ram_0/ram3/ram_array[2][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][2]} .single_bit_orig_name {ram_0/ram3/ram_array[2][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[2][2]/Q} .original_name {ram_0/ram3/ram_array[2][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][1]} .original_name {{ram_0/ram3/ram_array[2][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][1]} .single_bit_orig_name {ram_0/ram3/ram_array[2][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[2][1]/Q} .original_name {ram_0/ram3/ram_array[2][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][0]} .original_name {{ram_0/ram3/ram_array[2][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][0]} .single_bit_orig_name {ram_0/ram3/ram_array[2][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[2][0]/Q} .original_name {ram_0/ram3/ram_array[2][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][3]} .original_name {{ram_0/ram3/ram_array[0][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][3]} .single_bit_orig_name {ram_0/ram3/ram_array[0][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[0][3]/Q} .original_name {ram_0/ram3/ram_array[0][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][2]} .original_name {{ram_0/ram3/ram_array[0][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][2]} .single_bit_orig_name {ram_0/ram3/ram_array[0][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[0][2]/Q} .original_name {ram_0/ram3/ram_array[0][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][1]} .original_name {{ram_0/ram3/ram_array[0][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][1]} .single_bit_orig_name {ram_0/ram3/ram_array[0][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[0][1]/Q} .original_name {ram_0/ram3/ram_array[0][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][0]} .original_name {{ram_0/ram3/ram_array[0][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][0]} .single_bit_orig_name {ram_0/ram3/ram_array[0][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[0][0]/Q} .original_name {ram_0/ram3/ram_array[0][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][1]} .original_name {{ram_0/ram1/ram_array[15][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][1]} .single_bit_orig_name {ram_0/ram1/ram_array[15][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[15][1]/Q} .original_name {ram_0/ram1/ram_array[15][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][3]} .original_name {{ram_0/ram1/ram_array[15][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][3]} .single_bit_orig_name {ram_0/ram1/ram_array[15][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[15][3]/Q} .original_name {ram_0/ram1/ram_array[15][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][2]} .original_name {{ram_0/ram1/ram_array[15][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][2]} .single_bit_orig_name {ram_0/ram1/ram_array[15][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[15][2]/Q} .original_name {ram_0/ram1/ram_array[15][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][0]} .original_name {{ram_0/ram1/ram_array[15][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][0]} .single_bit_orig_name {ram_0/ram1/ram_array[15][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[15][0]/Q} .original_name {ram_0/ram1/ram_array[15][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][3]} .original_name {{ram_0/ram3/ram_array[15][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][3]} .single_bit_orig_name {ram_0/ram3/ram_array[15][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[15][3]/Q} .original_name {ram_0/ram3/ram_array[15][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][2]} .original_name {{ram_0/ram3/ram_array[15][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][2]} .single_bit_orig_name {ram_0/ram3/ram_array[15][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[15][2]/Q} .original_name {ram_0/ram3/ram_array[15][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][1]} .original_name {{ram_0/ram3/ram_array[15][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][1]} .single_bit_orig_name {ram_0/ram3/ram_array[15][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[15][1]/Q} .original_name {ram_0/ram3/ram_array[15][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][0]} .original_name {{ram_0/ram3/ram_array[15][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][0]} .single_bit_orig_name {ram_0/ram3/ram_array[15][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[15][0]/Q} .original_name {ram_0/ram3/ram_array[15][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][3]} .original_name {{ram_0/ram1/ram_array[11][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][3]} .single_bit_orig_name {ram_0/ram1/ram_array[11][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[11][3]/Q} .original_name {ram_0/ram1/ram_array[11][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][2]} .original_name {{ram_0/ram1/ram_array[11][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][2]} .single_bit_orig_name {ram_0/ram1/ram_array[11][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[11][2]/Q} .original_name {ram_0/ram1/ram_array[11][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][1]} .original_name {{ram_0/ram1/ram_array[11][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][1]} .single_bit_orig_name {ram_0/ram1/ram_array[11][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[11][1]/Q} .original_name {ram_0/ram1/ram_array[11][1]/q}
set_db -quiet {inst:mcs4/ram_0_oport_reg[0]} .original_name {{ram_0/oport[0]}}
set_db -quiet {inst:mcs4/ram_0_oport_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_oport_reg[0]} .single_bit_orig_name {ram_0/oport[0]}
set_db -quiet {inst:mcs4/ram_0_oport_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_oport_reg[0]/Q} .original_name {ram_0/oport[0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][0]} .original_name {{ram_0/ram1/ram_array[11][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][0]} .single_bit_orig_name {ram_0/ram1/ram_array[11][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[11][0]/Q} .original_name {ram_0/ram1/ram_array[11][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][2]} .original_name {{ram_0/ram1/ram_array[9][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][2]} .single_bit_orig_name {ram_0/ram1/ram_array[9][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[9][2]/Q} .original_name {ram_0/ram1/ram_array[9][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][3]} .original_name {{ram_0/ram1/ram_array[9][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][3]} .single_bit_orig_name {ram_0/ram1/ram_array[9][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[9][3]/Q} .original_name {ram_0/ram1/ram_array[9][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][1]} .original_name {{ram_0/ram1/ram_array[9][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][1]} .single_bit_orig_name {ram_0/ram1/ram_array[9][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[9][1]/Q} .original_name {ram_0/ram1/ram_array[9][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][0]} .original_name {{ram_0/ram1/ram_array[9][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][0]} .single_bit_orig_name {ram_0/ram1/ram_array[9][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[9][0]/Q} .original_name {ram_0/ram1/ram_array[9][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][2]} .original_name {{ram_0/ram3/ram_array[11][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][2]} .single_bit_orig_name {ram_0/ram3/ram_array[11][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[11][2]/Q} .original_name {ram_0/ram3/ram_array[11][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][3]} .original_name {{ram_0/ram3/ram_array[11][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][3]} .single_bit_orig_name {ram_0/ram3/ram_array[11][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[11][3]/Q} .original_name {ram_0/ram3/ram_array[11][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][1]} .original_name {{ram_0/ram3/ram_array[11][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][1]} .single_bit_orig_name {ram_0/ram3/ram_array[11][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[11][1]/Q} .original_name {ram_0/ram3/ram_array[11][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][0]} .original_name {{ram_0/ram3/ram_array[11][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][0]} .single_bit_orig_name {ram_0/ram3/ram_array[11][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[11][0]/Q} .original_name {ram_0/ram3/ram_array[11][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][2]} .original_name {{ram_0/ram3/ram_array[9][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][2]} .single_bit_orig_name {ram_0/ram3/ram_array[9][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[9][2]/Q} .original_name {ram_0/ram3/ram_array[9][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][3]} .original_name {{ram_0/ram3/ram_array[9][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][3]} .single_bit_orig_name {ram_0/ram3/ram_array[9][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[9][3]/Q} .original_name {ram_0/ram3/ram_array[9][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][1]} .original_name {{ram_0/ram3/ram_array[9][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][1]} .single_bit_orig_name {ram_0/ram3/ram_array[9][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[9][1]/Q} .original_name {ram_0/ram3/ram_array[9][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][0]} .original_name {{ram_0/ram3/ram_array[9][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][0]} .single_bit_orig_name {ram_0/ram3/ram_array[9][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[9][0]/Q} .original_name {ram_0/ram3/ram_array[9][0]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0805_reg .original_name i4004/id_board/n0805
set_db -quiet inst:mcs4/i4004_id_board_n0805_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0805_reg .single_bit_orig_name i4004/id_board/n0805
set_db -quiet inst:mcs4/i4004_id_board_n0805_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0805_reg/Q .original_name i4004/id_board/n0805/q
set_db -quiet inst:mcs4/i4004_id_board_n0801_reg .original_name i4004/id_board/n0801
set_db -quiet inst:mcs4/i4004_id_board_n0801_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0801_reg .single_bit_orig_name i4004/id_board/n0801
set_db -quiet inst:mcs4/i4004_id_board_n0801_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0801_reg/Q .original_name i4004/id_board/n0801/q
set_db -quiet inst:mcs4/i4004_id_board_n0797_reg .original_name i4004/id_board/n0797
set_db -quiet inst:mcs4/i4004_id_board_n0797_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0797_reg .single_bit_orig_name i4004/id_board/n0797
set_db -quiet inst:mcs4/i4004_id_board_n0797_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0797_reg/Q .original_name i4004/id_board/n0797/q
set_db -quiet inst:mcs4/i4004_tio_board_n0699_reg .original_name i4004/tio_board/n0699
set_db -quiet inst:mcs4/i4004_tio_board_n0699_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_n0699_reg .single_bit_orig_name i4004/tio_board/n0699
set_db -quiet inst:mcs4/i4004_tio_board_n0699_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_n0699_reg/Q .original_name i4004/tio_board/n0699/q
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[0]} .original_name {{i4004/tio_board/data_out[0]}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[0]} .single_bit_orig_name {i4004/tio_board/data_out[0]}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_tio_board_data_out_reg[0]/Q} .original_name {i4004/tio_board/data_out[0]/q}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[3]} .original_name {{i4004/tio_board/data_out[3]}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[3]} .single_bit_orig_name {i4004/tio_board/data_out[3]}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_tio_board_data_out_reg[3]/Q} .original_name {i4004/tio_board/data_out[3]/q}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[2]} .original_name {{i4004/tio_board/data_out[2]}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[2]} .single_bit_orig_name {i4004/tio_board/data_out[2]}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_tio_board_data_out_reg[2]/Q} .original_name {i4004/tio_board/data_out[2]/q}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[1]} .original_name {{i4004/tio_board/data_out[1]}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[1]} .single_bit_orig_name {i4004/tio_board/data_out[1]}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_tio_board_data_out_reg[1]/Q} .original_name {i4004/tio_board/data_out[1]/q}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[2]} .original_name {{rom_1/data_out[2]}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_1_data_out_reg[2]} .single_bit_orig_name {rom_1/data_out[2]}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_1_data_out_reg[2]/Q} .original_name {rom_1/data_out[2]/q}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[1]} .original_name {{rom_1/data_out[1]}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_1_data_out_reg[1]} .single_bit_orig_name {rom_1/data_out[1]}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_1_data_out_reg[1]/Q} .original_name {rom_1/data_out[1]/q}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[3]} .original_name {{rom_1/data_out[3]}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_1_data_out_reg[3]} .single_bit_orig_name {rom_1/data_out[3]}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_1_data_out_reg[3]/Q} .original_name {rom_1/data_out[3]/q}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[0]} .original_name {{rom_1/data_out[0]}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_1_data_out_reg[0]} .single_bit_orig_name {rom_1/data_out[0]}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_1_data_out_reg[0]/Q} .original_name {rom_1/data_out[0]/q}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[2]} .original_name {{rom_0/data_out[2]}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_0_data_out_reg[2]} .single_bit_orig_name {rom_0/data_out[2]}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_0_data_out_reg[2]/Q} .original_name {rom_0/data_out[2]/q}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[3]} .original_name {{rom_0/data_out[3]}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_0_data_out_reg[3]} .single_bit_orig_name {rom_0/data_out[3]}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_0_data_out_reg[3]/Q} .original_name {rom_0/data_out[3]/q}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[1]} .original_name {{rom_0/data_out[1]}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_0_data_out_reg[1]} .single_bit_orig_name {rom_0/data_out[1]}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_0_data_out_reg[1]/Q} .original_name {rom_0/data_out[1]/q}
set_db -quiet inst:mcs4/rom_0_srcff_reg .original_name rom_0/srcff
set_db -quiet inst:mcs4/rom_0_srcff_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_srcff_reg .single_bit_orig_name rom_0/srcff
set_db -quiet inst:mcs4/rom_0_srcff_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_srcff_reg/Q .original_name rom_0/srcff/q
set_db -quiet inst:mcs4/rom_1_srcff_reg .original_name rom_1/srcff
set_db -quiet inst:mcs4/rom_1_srcff_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_1_srcff_reg .single_bit_orig_name rom_1/srcff
set_db -quiet inst:mcs4/rom_1_srcff_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_1_srcff_reg/Q .original_name rom_1/srcff/q
set_db -quiet {inst:mcs4/rom_0_data_out_reg[0]} .original_name {{rom_0/data_out[0]}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/rom_0_data_out_reg[0]} .single_bit_orig_name {rom_0/data_out[0]}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/rom_0_data_out_reg[0]/Q} .original_name {rom_0/data_out[0]/q}
set_db -quiet inst:mcs4/i4004_ip_board_carry_out_reg .original_name i4004/ip_board/carry_out
set_db -quiet inst:mcs4/i4004_ip_board_carry_out_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_carry_out_reg .single_bit_orig_name i4004/ip_board/carry_out
set_db -quiet inst:mcs4/i4004_ip_board_carry_out_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_carry_out_reg/Q .original_name i4004/ip_board/carry_out/q
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][0]} .original_name {{i4004/sp_board/dram_array[7][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][0]} .single_bit_orig_name {i4004/sp_board/dram_array[7][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][0]/Q} .original_name {i4004/sp_board/dram_array[7][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][1]} .original_name {{i4004/sp_board/dram_array[7][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][1]} .single_bit_orig_name {i4004/sp_board/dram_array[7][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][1]/Q} .original_name {i4004/sp_board/dram_array[7][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][2]} .original_name {{i4004/sp_board/dram_array[7][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][2]} .single_bit_orig_name {i4004/sp_board/dram_array[7][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][2]/Q} .original_name {i4004/sp_board/dram_array[7][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][3]} .original_name {{i4004/sp_board/dram_array[7][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][3]} .single_bit_orig_name {i4004/sp_board/dram_array[7][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][3]/Q} .original_name {i4004/sp_board/dram_array[7][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][4]} .original_name {{i4004/sp_board/dram_array[7][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][4]} .single_bit_orig_name {i4004/sp_board/dram_array[7][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][4]/Q} .original_name {i4004/sp_board/dram_array[7][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][5]} .original_name {{i4004/sp_board/dram_array[7][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][5]} .single_bit_orig_name {i4004/sp_board/dram_array[7][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][5]/Q} .original_name {i4004/sp_board/dram_array[7][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][6]} .original_name {{i4004/sp_board/dram_array[7][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][6]} .single_bit_orig_name {i4004/sp_board/dram_array[7][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][6]/Q} .original_name {i4004/sp_board/dram_array[7][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][7]} .original_name {{i4004/sp_board/dram_array[7][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][7]} .single_bit_orig_name {i4004/sp_board/dram_array[7][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[7][7]/Q} .original_name {i4004/sp_board/dram_array[7][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][0]} .original_name {{i4004/sp_board/dram_array[3][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][0]} .single_bit_orig_name {i4004/sp_board/dram_array[3][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][0]/Q} .original_name {i4004/sp_board/dram_array[3][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][1]} .original_name {{i4004/sp_board/dram_array[3][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][1]} .single_bit_orig_name {i4004/sp_board/dram_array[3][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][1]/Q} .original_name {i4004/sp_board/dram_array[3][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][2]} .original_name {{i4004/sp_board/dram_array[3][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][2]} .single_bit_orig_name {i4004/sp_board/dram_array[3][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][2]/Q} .original_name {i4004/sp_board/dram_array[3][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][3]} .original_name {{i4004/sp_board/dram_array[3][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][3]} .single_bit_orig_name {i4004/sp_board/dram_array[3][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][3]/Q} .original_name {i4004/sp_board/dram_array[3][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][4]} .original_name {{i4004/sp_board/dram_array[3][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][4]} .single_bit_orig_name {i4004/sp_board/dram_array[3][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][4]/Q} .original_name {i4004/sp_board/dram_array[3][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][5]} .original_name {{i4004/sp_board/dram_array[3][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][5]} .single_bit_orig_name {i4004/sp_board/dram_array[3][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][5]/Q} .original_name {i4004/sp_board/dram_array[3][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][6]} .original_name {{i4004/sp_board/dram_array[3][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][6]} .single_bit_orig_name {i4004/sp_board/dram_array[3][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][6]/Q} .original_name {i4004/sp_board/dram_array[3][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][7]} .original_name {{i4004/sp_board/dram_array[3][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][7]} .single_bit_orig_name {i4004/sp_board/dram_array[3][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[3][7]/Q} .original_name {i4004/sp_board/dram_array[3][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][0]} .original_name {{i4004/sp_board/dram_array[5][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][0]} .single_bit_orig_name {i4004/sp_board/dram_array[5][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][0]/Q} .original_name {i4004/sp_board/dram_array[5][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][1]} .original_name {{i4004/sp_board/dram_array[5][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][1]} .single_bit_orig_name {i4004/sp_board/dram_array[5][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][1]/Q} .original_name {i4004/sp_board/dram_array[5][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][2]} .original_name {{i4004/sp_board/dram_array[5][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][2]} .single_bit_orig_name {i4004/sp_board/dram_array[5][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][2]/Q} .original_name {i4004/sp_board/dram_array[5][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][3]} .original_name {{i4004/sp_board/dram_array[5][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][3]} .single_bit_orig_name {i4004/sp_board/dram_array[5][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][3]/Q} .original_name {i4004/sp_board/dram_array[5][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][4]} .original_name {{i4004/sp_board/dram_array[5][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][4]} .single_bit_orig_name {i4004/sp_board/dram_array[5][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][4]/Q} .original_name {i4004/sp_board/dram_array[5][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][5]} .original_name {{i4004/sp_board/dram_array[5][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][5]} .single_bit_orig_name {i4004/sp_board/dram_array[5][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][5]/Q} .original_name {i4004/sp_board/dram_array[5][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][6]} .original_name {{i4004/sp_board/dram_array[5][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][6]} .single_bit_orig_name {i4004/sp_board/dram_array[5][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][6]/Q} .original_name {i4004/sp_board/dram_array[5][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][7]} .original_name {{i4004/sp_board/dram_array[5][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][7]} .single_bit_orig_name {i4004/sp_board/dram_array[5][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[5][7]/Q} .original_name {i4004/sp_board/dram_array[5][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][2]} .original_name {{i4004/sp_board/dram_array[6][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][2]} .single_bit_orig_name {i4004/sp_board/dram_array[6][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][2]/Q} .original_name {i4004/sp_board/dram_array[6][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][3]} .original_name {{i4004/sp_board/dram_array[6][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][3]} .single_bit_orig_name {i4004/sp_board/dram_array[6][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][3]/Q} .original_name {i4004/sp_board/dram_array[6][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][4]} .original_name {{i4004/sp_board/dram_array[6][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][4]} .single_bit_orig_name {i4004/sp_board/dram_array[6][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][4]/Q} .original_name {i4004/sp_board/dram_array[6][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][5]} .original_name {{i4004/sp_board/dram_array[6][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][5]} .single_bit_orig_name {i4004/sp_board/dram_array[6][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][5]/Q} .original_name {i4004/sp_board/dram_array[6][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][7]} .original_name {{i4004/sp_board/dram_array[6][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][7]} .single_bit_orig_name {i4004/sp_board/dram_array[6][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][7]/Q} .original_name {i4004/sp_board/dram_array[6][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][0]} .original_name {{i4004/sp_board/dram_array[6][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][0]} .single_bit_orig_name {i4004/sp_board/dram_array[6][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][0]/Q} .original_name {i4004/sp_board/dram_array[6][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][6]} .original_name {{i4004/sp_board/dram_array[6][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][6]} .single_bit_orig_name {i4004/sp_board/dram_array[6][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][6]/Q} .original_name {i4004/sp_board/dram_array[6][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][1]} .original_name {{i4004/sp_board/dram_array[6][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][1]} .single_bit_orig_name {i4004/sp_board/dram_array[6][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[6][1]/Q} .original_name {i4004/sp_board/dram_array[6][1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][0]} .original_name {{i4004/ip_board/dram_array[1][0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][0]} .single_bit_orig_name {i4004/ip_board/dram_array[1][0]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][0]/Q} .original_name {i4004/ip_board/dram_array[1][0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][1]} .original_name {{i4004/ip_board/dram_array[1][1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][1]} .single_bit_orig_name {i4004/ip_board/dram_array[1][1]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][1]/Q} .original_name {i4004/ip_board/dram_array[1][1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][2]} .original_name {{i4004/ip_board/dram_array[1][2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][2]} .single_bit_orig_name {i4004/ip_board/dram_array[1][2]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][2]/Q} .original_name {i4004/ip_board/dram_array[1][2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][3]} .original_name {{i4004/ip_board/dram_array[1][3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][3]} .single_bit_orig_name {i4004/ip_board/dram_array[1][3]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][3]/Q} .original_name {i4004/ip_board/dram_array[1][3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][4]} .original_name {{i4004/ip_board/dram_array[1][4]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][4]} .single_bit_orig_name {i4004/ip_board/dram_array[1][4]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][4]/Q} .original_name {i4004/ip_board/dram_array[1][4]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][5]} .original_name {{i4004/ip_board/dram_array[1][5]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][5]} .single_bit_orig_name {i4004/ip_board/dram_array[1][5]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][5]/Q} .original_name {i4004/ip_board/dram_array[1][5]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][6]} .original_name {{i4004/ip_board/dram_array[1][6]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][6]} .single_bit_orig_name {i4004/ip_board/dram_array[1][6]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][6]/Q} .original_name {i4004/ip_board/dram_array[1][6]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][7]} .original_name {{i4004/ip_board/dram_array[1][7]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][7]} .single_bit_orig_name {i4004/ip_board/dram_array[1][7]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][7]/Q} .original_name {i4004/ip_board/dram_array[1][7]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][8]} .original_name {{i4004/ip_board/dram_array[1][8]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][8]} .single_bit_orig_name {i4004/ip_board/dram_array[1][8]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][8]/Q} .original_name {i4004/ip_board/dram_array[1][8]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][9]} .original_name {{i4004/ip_board/dram_array[1][9]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][9]} .single_bit_orig_name {i4004/ip_board/dram_array[1][9]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][9]/Q} .original_name {i4004/ip_board/dram_array[1][9]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][10]} .original_name {{i4004/ip_board/dram_array[1][10]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][10]} .single_bit_orig_name {i4004/ip_board/dram_array[1][10]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][10]/Q} .original_name {i4004/ip_board/dram_array[1][10]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][11]} .original_name {{i4004/ip_board/dram_array[1][11]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][11]} .single_bit_orig_name {i4004/ip_board/dram_array[1][11]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[1][11]/Q} .original_name {i4004/ip_board/dram_array[1][11]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][0]} .original_name {{i4004/ip_board/dram_array[2][0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][0]} .single_bit_orig_name {i4004/ip_board/dram_array[2][0]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][0]/Q} .original_name {i4004/ip_board/dram_array[2][0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][1]} .original_name {{i4004/ip_board/dram_array[2][1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][1]} .single_bit_orig_name {i4004/ip_board/dram_array[2][1]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][1]/Q} .original_name {i4004/ip_board/dram_array[2][1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][2]} .original_name {{i4004/ip_board/dram_array[2][2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][2]} .single_bit_orig_name {i4004/ip_board/dram_array[2][2]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][2]/Q} .original_name {i4004/ip_board/dram_array[2][2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][3]} .original_name {{i4004/ip_board/dram_array[2][3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][3]} .single_bit_orig_name {i4004/ip_board/dram_array[2][3]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][3]/Q} .original_name {i4004/ip_board/dram_array[2][3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][4]} .original_name {{i4004/ip_board/dram_array[2][4]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][4]} .single_bit_orig_name {i4004/ip_board/dram_array[2][4]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][4]/Q} .original_name {i4004/ip_board/dram_array[2][4]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][5]} .original_name {{i4004/ip_board/dram_array[2][5]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][5]} .single_bit_orig_name {i4004/ip_board/dram_array[2][5]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][5]/Q} .original_name {i4004/ip_board/dram_array[2][5]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][6]} .original_name {{i4004/ip_board/dram_array[2][6]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][6]} .single_bit_orig_name {i4004/ip_board/dram_array[2][6]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][6]/Q} .original_name {i4004/ip_board/dram_array[2][6]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][7]} .original_name {{i4004/ip_board/dram_array[2][7]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][7]} .single_bit_orig_name {i4004/ip_board/dram_array[2][7]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][7]/Q} .original_name {i4004/ip_board/dram_array[2][7]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][8]} .original_name {{i4004/ip_board/dram_array[2][8]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][8]} .single_bit_orig_name {i4004/ip_board/dram_array[2][8]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][8]/Q} .original_name {i4004/ip_board/dram_array[2][8]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][9]} .original_name {{i4004/ip_board/dram_array[2][9]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][9]} .single_bit_orig_name {i4004/ip_board/dram_array[2][9]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][9]/Q} .original_name {i4004/ip_board/dram_array[2][9]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][10]} .original_name {{i4004/ip_board/dram_array[2][10]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][10]} .single_bit_orig_name {i4004/ip_board/dram_array[2][10]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][10]/Q} .original_name {i4004/ip_board/dram_array[2][10]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][11]} .original_name {{i4004/ip_board/dram_array[2][11]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][11]} .single_bit_orig_name {i4004/ip_board/dram_array[2][11]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[2][11]/Q} .original_name {i4004/ip_board/dram_array[2][11]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][3]} .original_name {{ram_0/ram1/ram_array[12][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][3]} .single_bit_orig_name {ram_0/ram1/ram_array[12][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[12][3]/Q} .original_name {ram_0/ram1/ram_array[12][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][2]} .original_name {{ram_0/ram1/ram_array[12][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][2]} .single_bit_orig_name {ram_0/ram1/ram_array[12][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[12][2]/Q} .original_name {ram_0/ram1/ram_array[12][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][1]} .original_name {{ram_0/ram1/ram_array[12][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][1]} .single_bit_orig_name {ram_0/ram1/ram_array[12][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[12][1]/Q} .original_name {ram_0/ram1/ram_array[12][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][0]} .original_name {{ram_0/ram1/ram_array[12][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][0]} .single_bit_orig_name {ram_0/ram1/ram_array[12][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[12][0]/Q} .original_name {ram_0/ram1/ram_array[12][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][0]} .original_name {{ram_0/ram3/ram_array[8][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][0]} .single_bit_orig_name {ram_0/ram3/ram_array[8][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[8][0]/Q} .original_name {ram_0/ram3/ram_array[8][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][1]} .original_name {{ram_0/ram3/ram_array[8][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][1]} .single_bit_orig_name {ram_0/ram3/ram_array[8][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[8][1]/Q} .original_name {ram_0/ram3/ram_array[8][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][2]} .original_name {{ram_0/ram3/ram_array[8][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][2]} .single_bit_orig_name {ram_0/ram3/ram_array[8][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[8][2]/Q} .original_name {ram_0/ram3/ram_array[8][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][3]} .original_name {{ram_0/ram3/ram_array[8][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][3]} .single_bit_orig_name {ram_0/ram3/ram_array[8][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[8][3]/Q} .original_name {ram_0/ram3/ram_array[8][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][0]} .original_name {{ram_0/ram3/ram_array[10][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][0]} .single_bit_orig_name {ram_0/ram3/ram_array[10][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[10][0]/Q} .original_name {ram_0/ram3/ram_array[10][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][1]} .original_name {{ram_0/ram3/ram_array[10][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][1]} .single_bit_orig_name {ram_0/ram3/ram_array[10][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[10][1]/Q} .original_name {ram_0/ram3/ram_array[10][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][2]} .original_name {{ram_0/ram3/ram_array[10][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][2]} .single_bit_orig_name {ram_0/ram3/ram_array[10][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[10][2]/Q} .original_name {ram_0/ram3/ram_array[10][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][3]} .original_name {{ram_0/ram3/ram_array[10][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][3]} .single_bit_orig_name {ram_0/ram3/ram_array[10][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[10][3]/Q} .original_name {ram_0/ram3/ram_array[10][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][1]} .original_name {{ram_0/ram3/ram_array[12][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][1]} .single_bit_orig_name {ram_0/ram3/ram_array[12][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[12][1]/Q} .original_name {ram_0/ram3/ram_array[12][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][1]} .original_name {{ram_0/ram1/ram_array[8][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][1]} .single_bit_orig_name {ram_0/ram1/ram_array[8][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[8][1]/Q} .original_name {ram_0/ram1/ram_array[8][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][2]} .original_name {{ram_0/ram1/ram_array[8][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][2]} .single_bit_orig_name {ram_0/ram1/ram_array[8][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[8][2]/Q} .original_name {ram_0/ram1/ram_array[8][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][3]} .original_name {{ram_0/ram1/ram_array[8][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][3]} .single_bit_orig_name {ram_0/ram1/ram_array[8][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[8][3]/Q} .original_name {ram_0/ram1/ram_array[8][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][0]} .original_name {{ram_0/ram1/ram_array[10][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][0]} .single_bit_orig_name {ram_0/ram1/ram_array[10][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[10][0]/Q} .original_name {ram_0/ram1/ram_array[10][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][1]} .original_name {{ram_0/ram1/ram_array[10][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][1]} .single_bit_orig_name {ram_0/ram1/ram_array[10][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[10][1]/Q} .original_name {ram_0/ram1/ram_array[10][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][2]} .original_name {{ram_0/ram1/ram_array[10][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][2]} .single_bit_orig_name {ram_0/ram1/ram_array[10][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[10][2]/Q} .original_name {ram_0/ram1/ram_array[10][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][3]} .original_name {{ram_0/ram1/ram_array[10][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][3]} .single_bit_orig_name {ram_0/ram1/ram_array[10][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[10][3]/Q} .original_name {ram_0/ram1/ram_array[10][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][0]} .original_name {{ram_0/ram3/ram_array[14][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][0]} .single_bit_orig_name {ram_0/ram3/ram_array[14][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[14][0]/Q} .original_name {ram_0/ram3/ram_array[14][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][1]} .original_name {{ram_0/ram3/ram_array[14][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][1]} .single_bit_orig_name {ram_0/ram3/ram_array[14][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[14][1]/Q} .original_name {ram_0/ram3/ram_array[14][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][2]} .original_name {{ram_0/ram3/ram_array[14][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][2]} .single_bit_orig_name {ram_0/ram3/ram_array[14][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[14][2]/Q} .original_name {ram_0/ram3/ram_array[14][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][3]} .original_name {{ram_0/ram3/ram_array[14][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][3]} .single_bit_orig_name {ram_0/ram3/ram_array[14][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[14][3]/Q} .original_name {ram_0/ram3/ram_array[14][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][0]} .original_name {{ram_0/ram1/ram_array[14][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][0]} .single_bit_orig_name {ram_0/ram1/ram_array[14][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[14][0]/Q} .original_name {ram_0/ram1/ram_array[14][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][1]} .original_name {{ram_0/ram1/ram_array[14][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][1]} .single_bit_orig_name {ram_0/ram1/ram_array[14][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[14][1]/Q} .original_name {ram_0/ram1/ram_array[14][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][2]} .original_name {{ram_0/ram1/ram_array[14][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][2]} .single_bit_orig_name {ram_0/ram1/ram_array[14][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[14][2]/Q} .original_name {ram_0/ram1/ram_array[14][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][3]} .original_name {{ram_0/ram1/ram_array[14][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][3]} .single_bit_orig_name {ram_0/ram1/ram_array[14][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[14][3]/Q} .original_name {ram_0/ram1/ram_array[14][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][3]} .original_name {{ram_0/ram3/ram_array[12][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][3]} .single_bit_orig_name {ram_0/ram3/ram_array[12][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[12][3]/Q} .original_name {ram_0/ram3/ram_array[12][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][2]} .original_name {{ram_0/ram3/ram_array[12][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][2]} .single_bit_orig_name {ram_0/ram3/ram_array[12][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[12][2]/Q} .original_name {ram_0/ram3/ram_array[12][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][0]} .original_name {{ram_0/ram3/ram_array[12][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][0]} .single_bit_orig_name {ram_0/ram3/ram_array[12][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[12][0]/Q} .original_name {ram_0/ram3/ram_array[12][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][3]} .original_name {{ram_0/ram0/ram_array[14][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][3]} .single_bit_orig_name {ram_0/ram0/ram_array[14][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[14][3]/Q} .original_name {ram_0/ram0/ram_array[14][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][0]} .original_name {{ram_0/ram3/ram_array[16][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][0]} .single_bit_orig_name {ram_0/ram3/ram_array[16][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[16][0]/Q} .original_name {ram_0/ram3/ram_array[16][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][1]} .original_name {{ram_0/ram3/ram_array[16][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][1]} .single_bit_orig_name {ram_0/ram3/ram_array[16][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[16][1]/Q} .original_name {ram_0/ram3/ram_array[16][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][2]} .original_name {{ram_0/ram3/ram_array[16][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][2]} .single_bit_orig_name {ram_0/ram3/ram_array[16][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[16][2]/Q} .original_name {ram_0/ram3/ram_array[16][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][3]} .original_name {{ram_0/ram3/ram_array[16][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][3]} .single_bit_orig_name {ram_0/ram3/ram_array[16][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[16][3]/Q} .original_name {ram_0/ram3/ram_array[16][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][0]} .original_name {{ram_0/ram3/ram_array[18][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][0]} .single_bit_orig_name {ram_0/ram3/ram_array[18][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[18][0]/Q} .original_name {ram_0/ram3/ram_array[18][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][1]} .original_name {{ram_0/ram3/ram_array[18][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][1]} .single_bit_orig_name {ram_0/ram3/ram_array[18][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[18][1]/Q} .original_name {ram_0/ram3/ram_array[18][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][2]} .original_name {{ram_0/ram3/ram_array[18][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][2]} .single_bit_orig_name {ram_0/ram3/ram_array[18][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[18][2]/Q} .original_name {ram_0/ram3/ram_array[18][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][3]} .original_name {{ram_0/ram3/ram_array[18][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][3]} .single_bit_orig_name {ram_0/ram3/ram_array[18][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[18][3]/Q} .original_name {ram_0/ram3/ram_array[18][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][0]} .original_name {{ram_0/ram1/ram_array[16][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][0]} .single_bit_orig_name {ram_0/ram1/ram_array[16][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[16][0]/Q} .original_name {ram_0/ram1/ram_array[16][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][1]} .original_name {{ram_0/ram1/ram_array[16][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][1]} .single_bit_orig_name {ram_0/ram1/ram_array[16][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[16][1]/Q} .original_name {ram_0/ram1/ram_array[16][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][2]} .original_name {{ram_0/ram1/ram_array[16][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][2]} .single_bit_orig_name {ram_0/ram1/ram_array[16][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[16][2]/Q} .original_name {ram_0/ram1/ram_array[16][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][3]} .original_name {{ram_0/ram1/ram_array[16][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][3]} .single_bit_orig_name {ram_0/ram1/ram_array[16][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[16][3]/Q} .original_name {ram_0/ram1/ram_array[16][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][0]} .original_name {{ram_0/ram1/ram_array[18][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][0]} .single_bit_orig_name {ram_0/ram1/ram_array[18][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[18][0]/Q} .original_name {ram_0/ram1/ram_array[18][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][1]} .original_name {{ram_0/ram1/ram_array[18][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][1]} .single_bit_orig_name {ram_0/ram1/ram_array[18][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[18][1]/Q} .original_name {ram_0/ram1/ram_array[18][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][2]} .original_name {{ram_0/ram1/ram_array[18][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][2]} .single_bit_orig_name {ram_0/ram1/ram_array[18][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[18][2]/Q} .original_name {ram_0/ram1/ram_array[18][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][3]} .original_name {{ram_0/ram1/ram_array[18][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][3]} .single_bit_orig_name {ram_0/ram1/ram_array[18][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[18][3]/Q} .original_name {ram_0/ram1/ram_array[18][3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][0]} .original_name {{i4004/ip_board/dram_array[3][0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][0]} .single_bit_orig_name {i4004/ip_board/dram_array[3][0]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][0]/Q} .original_name {i4004/ip_board/dram_array[3][0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][1]} .original_name {{i4004/ip_board/dram_array[3][1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][1]} .single_bit_orig_name {i4004/ip_board/dram_array[3][1]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][1]/Q} .original_name {i4004/ip_board/dram_array[3][1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][2]} .original_name {{i4004/ip_board/dram_array[3][2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][2]} .single_bit_orig_name {i4004/ip_board/dram_array[3][2]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][2]/Q} .original_name {i4004/ip_board/dram_array[3][2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][3]} .original_name {{i4004/ip_board/dram_array[3][3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][3]} .single_bit_orig_name {i4004/ip_board/dram_array[3][3]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][3]/Q} .original_name {i4004/ip_board/dram_array[3][3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][4]} .original_name {{i4004/ip_board/dram_array[3][4]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][4]} .single_bit_orig_name {i4004/ip_board/dram_array[3][4]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][4]/Q} .original_name {i4004/ip_board/dram_array[3][4]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][5]} .original_name {{i4004/ip_board/dram_array[3][5]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][5]} .single_bit_orig_name {i4004/ip_board/dram_array[3][5]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][5]/Q} .original_name {i4004/ip_board/dram_array[3][5]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][7]} .original_name {{i4004/ip_board/dram_array[3][7]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][7]} .single_bit_orig_name {i4004/ip_board/dram_array[3][7]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][7]/Q} .original_name {i4004/ip_board/dram_array[3][7]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][8]} .original_name {{i4004/ip_board/dram_array[3][8]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][8]} .single_bit_orig_name {i4004/ip_board/dram_array[3][8]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][8]/Q} .original_name {i4004/ip_board/dram_array[3][8]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][9]} .original_name {{i4004/ip_board/dram_array[3][9]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][9]} .single_bit_orig_name {i4004/ip_board/dram_array[3][9]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][9]/Q} .original_name {i4004/ip_board/dram_array[3][9]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][10]} .original_name {{i4004/ip_board/dram_array[3][10]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][10]} .single_bit_orig_name {i4004/ip_board/dram_array[3][10]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][10]/Q} .original_name {i4004/ip_board/dram_array[3][10]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][11]} .original_name {{i4004/ip_board/dram_array[3][11]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][11]} .single_bit_orig_name {i4004/ip_board/dram_array[3][11]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][11]/Q} .original_name {i4004/ip_board/dram_array[3][11]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][6]} .original_name {{i4004/ip_board/dram_array[3][6]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][6]} .single_bit_orig_name {i4004/ip_board/dram_array[3][6]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[3][6]/Q} .original_name {i4004/ip_board/dram_array[3][6]/q}
set_db -quiet inst:mcs4/i4004_ip_board_n0517_reg .original_name i4004/ip_board/n0517
set_db -quiet inst:mcs4/i4004_ip_board_n0517_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_n0517_reg .single_bit_orig_name i4004/ip_board/n0517
set_db -quiet inst:mcs4/i4004_ip_board_n0517_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_n0517_reg/Q .original_name i4004/ip_board/n0517/q
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][0]} .original_name {{ram_0/ram2/ram_array[8][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][0]} .single_bit_orig_name {ram_0/ram2/ram_array[8][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[8][0]/Q} .original_name {ram_0/ram2/ram_array[8][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][1]} .original_name {{ram_0/ram2/ram_array[8][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][1]} .single_bit_orig_name {ram_0/ram2/ram_array[8][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[8][1]/Q} .original_name {ram_0/ram2/ram_array[8][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][2]} .original_name {{ram_0/ram2/ram_array[8][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][2]} .single_bit_orig_name {ram_0/ram2/ram_array[8][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[8][2]/Q} .original_name {ram_0/ram2/ram_array[8][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][3]} .original_name {{ram_0/ram2/ram_array[8][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][3]} .single_bit_orig_name {ram_0/ram2/ram_array[8][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[8][3]/Q} .original_name {ram_0/ram2/ram_array[8][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][0]} .original_name {{ram_0/ram2/ram_array[10][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][0]} .single_bit_orig_name {ram_0/ram2/ram_array[10][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[10][0]/Q} .original_name {ram_0/ram2/ram_array[10][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][1]} .original_name {{ram_0/ram2/ram_array[10][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][1]} .single_bit_orig_name {ram_0/ram2/ram_array[10][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[10][1]/Q} .original_name {ram_0/ram2/ram_array[10][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][2]} .original_name {{ram_0/ram2/ram_array[10][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][2]} .single_bit_orig_name {ram_0/ram2/ram_array[10][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[10][2]/Q} .original_name {ram_0/ram2/ram_array[10][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][3]} .original_name {{ram_0/ram2/ram_array[10][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][3]} .single_bit_orig_name {ram_0/ram2/ram_array[10][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[10][3]/Q} .original_name {ram_0/ram2/ram_array[10][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][0]} .original_name {{ram_0/ram0/ram_array[8][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][0]} .single_bit_orig_name {ram_0/ram0/ram_array[8][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[8][0]/Q} .original_name {ram_0/ram0/ram_array[8][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][1]} .original_name {{ram_0/ram0/ram_array[8][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][1]} .single_bit_orig_name {ram_0/ram0/ram_array[8][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[8][1]/Q} .original_name {ram_0/ram0/ram_array[8][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][2]} .original_name {{ram_0/ram0/ram_array[8][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][2]} .single_bit_orig_name {ram_0/ram0/ram_array[8][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[8][2]/Q} .original_name {ram_0/ram0/ram_array[8][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][3]} .original_name {{ram_0/ram0/ram_array[8][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][3]} .single_bit_orig_name {ram_0/ram0/ram_array[8][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[8][3]/Q} .original_name {ram_0/ram0/ram_array[8][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][0]} .original_name {{ram_0/ram0/ram_array[10][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][0]} .single_bit_orig_name {ram_0/ram0/ram_array[10][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[10][0]/Q} .original_name {ram_0/ram0/ram_array[10][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][1]} .original_name {{ram_0/ram0/ram_array[10][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][1]} .single_bit_orig_name {ram_0/ram0/ram_array[10][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[10][1]/Q} .original_name {ram_0/ram0/ram_array[10][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][2]} .original_name {{ram_0/ram0/ram_array[10][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][2]} .single_bit_orig_name {ram_0/ram0/ram_array[10][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[10][2]/Q} .original_name {ram_0/ram0/ram_array[10][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][3]} .original_name {{ram_0/ram0/ram_array[10][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][3]} .single_bit_orig_name {ram_0/ram0/ram_array[10][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[10][3]/Q} .original_name {ram_0/ram0/ram_array[10][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][0]} .original_name {{ram_0/ram2/ram_array[14][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][0]} .single_bit_orig_name {ram_0/ram2/ram_array[14][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[14][0]/Q} .original_name {ram_0/ram2/ram_array[14][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][1]} .original_name {{ram_0/ram2/ram_array[14][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][1]} .single_bit_orig_name {ram_0/ram2/ram_array[14][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[14][1]/Q} .original_name {ram_0/ram2/ram_array[14][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][2]} .original_name {{ram_0/ram2/ram_array[14][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][2]} .single_bit_orig_name {ram_0/ram2/ram_array[14][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[14][2]/Q} .original_name {ram_0/ram2/ram_array[14][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][3]} .original_name {{ram_0/ram2/ram_array[14][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][3]} .single_bit_orig_name {ram_0/ram2/ram_array[14][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[14][3]/Q} .original_name {ram_0/ram2/ram_array[14][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][0]} .original_name {{ram_0/ram0/ram_array[14][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][0]} .single_bit_orig_name {ram_0/ram0/ram_array[14][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[14][0]/Q} .original_name {ram_0/ram0/ram_array[14][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][1]} .original_name {{ram_0/ram0/ram_array[14][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][1]} .single_bit_orig_name {ram_0/ram0/ram_array[14][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[14][1]/Q} .original_name {ram_0/ram0/ram_array[14][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][2]} .original_name {{ram_0/ram0/ram_array[14][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][2]} .single_bit_orig_name {ram_0/ram0/ram_array[14][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[14][2]/Q} .original_name {ram_0/ram0/ram_array[14][2]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_sync_reg .original_name i4004/tio_board/timing_generator/sync
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_sync_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_sync_reg .single_bit_orig_name i4004/tio_board/timing_generator/sync
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_sync_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_sync_reg/Q .original_name i4004/tio_board/timing_generator/sync/q
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[2]} .original_name {{i4004/alu_board/tmp[2]}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[2]} .single_bit_orig_name {i4004/alu_board/tmp[2]}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_tmp_reg[2]/Q} .original_name {i4004/alu_board/tmp[2]/q}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[0]} .original_name {{i4004/alu_board/tmp[0]}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[0]} .single_bit_orig_name {i4004/alu_board/tmp[0]}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_tmp_reg[0]/Q} .original_name {i4004/alu_board/tmp[0]/q}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[3]} .original_name {{i4004/alu_board/tmp[3]}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[3]} .single_bit_orig_name {i4004/alu_board/tmp[3]}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_tmp_reg[3]/Q} .original_name {i4004/alu_board/tmp[3]/q}
set_db -quiet inst:mcs4/rom_0_chipsel_reg .original_name rom_0/chipsel
set_db -quiet inst:mcs4/rom_0_chipsel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_chipsel_reg .single_bit_orig_name rom_0/chipsel
set_db -quiet inst:mcs4/rom_0_chipsel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_chipsel_reg/Q .original_name rom_0/chipsel/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg .original_name i4004/ip_board/addr_rfsh_1/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg .single_bit_orig_name i4004/ip_board/addr_rfsh_1/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg/Q .original_name i4004/ip_board/addr_rfsh_1/slave/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_slave_reg .original_name i4004/ip_board/addr_ptr_1/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_slave_reg .single_bit_orig_name i4004/ip_board/addr_ptr_1/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_ptr_1_slave_reg/Q .original_name i4004/ip_board/addr_ptr_1/slave/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg .original_name i4004/sp_board/reg_rfsh_2/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_2/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg/Q .original_name i4004/sp_board/reg_rfsh_2/slave/q
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[1]} .original_name {{i4004/alu_board/tmp[1]}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[1]} .single_bit_orig_name {i4004/alu_board/tmp[1]}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_tmp_reg[1]/Q} .original_name {i4004/alu_board/tmp[1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[2]} .original_name {{i4004/sp_board/din_n[2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[2]} .single_bit_orig_name {i4004/sp_board/din_n[2]}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_din_n_reg[2]/Q} .original_name {i4004/sp_board/din_n[2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[3]} .original_name {{i4004/sp_board/din_n[3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[3]} .single_bit_orig_name {i4004/sp_board/din_n[3]}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_din_n_reg[3]/Q} .original_name {i4004/sp_board/din_n[3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[1]} .original_name {{i4004/sp_board/din_n[1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[1]} .single_bit_orig_name {i4004/sp_board/din_n[1]}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_din_n_reg[1]/Q} .original_name {i4004/sp_board/din_n[1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[0]} .original_name {{i4004/sp_board/din_n[0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[0]} .single_bit_orig_name {i4004/sp_board/din_n[0]}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_din_n_reg[0]/Q} .original_name {i4004/sp_board/din_n[0]/q}
set_db -quiet inst:mcs4/rom_1_chipsel_reg .original_name rom_1/chipsel
set_db -quiet inst:mcs4/rom_1_chipsel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_1_chipsel_reg .single_bit_orig_name rom_1/chipsel
set_db -quiet inst:mcs4/rom_1_chipsel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_1_chipsel_reg/Q .original_name rom_1/chipsel/q
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[1]} .original_name {{clockgen/clockdiv[1]}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[1]} .single_bit_orig_name {clockgen/clockdiv[1]}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[1]/Q} .original_name {clockgen/clockdiv[1]/q}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[3]} .original_name {{shiftreg/cp_delay[3]}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[3]} .single_bit_orig_name {shiftreg/cp_delay[3]}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[3]/Q} .original_name {shiftreg/cp_delay[3]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0872_reg .original_name i4004/alu_board/n0872
set_db -quiet inst:mcs4/i4004_alu_board_n0872_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0872_reg .single_bit_orig_name i4004/alu_board/n0872
set_db -quiet inst:mcs4/i4004_alu_board_n0872_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0872_reg/Q .original_name i4004/alu_board/n0872/q
set_db -quiet inst:mcs4/i4004_alu_board_n0893_reg .original_name i4004/alu_board/n0893
set_db -quiet inst:mcs4/i4004_alu_board_n0893_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0893_reg .single_bit_orig_name i4004/alu_board/n0893
set_db -quiet inst:mcs4/i4004_alu_board_n0893_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0893_reg/Q .original_name i4004/alu_board/n0893/q
set_db -quiet inst:mcs4/i4004_alu_board_n0891_reg .original_name i4004/alu_board/n0891
set_db -quiet inst:mcs4/i4004_alu_board_n0891_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0891_reg .single_bit_orig_name i4004/alu_board/n0891
set_db -quiet inst:mcs4/i4004_alu_board_n0891_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0891_reg/Q .original_name i4004/alu_board/n0891/q
set_db -quiet inst:mcs4/i4004_alu_board_n0889_reg .original_name i4004/alu_board/n0889
set_db -quiet inst:mcs4/i4004_alu_board_n0889_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0889_reg .single_bit_orig_name i4004/alu_board/n0889
set_db -quiet inst:mcs4/i4004_alu_board_n0889_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0889_reg/Q .original_name i4004/alu_board/n0889/q
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[3]} .original_name {{i4004/ip_board/incr_in[3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[3]} .single_bit_orig_name {i4004/ip_board/incr_in[3]}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_incr_in_reg[3]/Q} .original_name {i4004/ip_board/incr_in[3]/q}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[2]} .original_name {{i4004/alu_board/acc[2]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[2]} .single_bit_orig_name {i4004/alu_board/acc[2]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_reg[2]/Q} .original_name {i4004/alu_board/acc[2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[1]} .original_name {{i4004/ip_board/incr_in[1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[1]} .single_bit_orig_name {i4004/ip_board/incr_in[1]}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_incr_in_reg[1]/Q} .original_name {i4004/ip_board/incr_in[1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[0]} .original_name {{i4004/ip_board/incr_in[0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[0]} .single_bit_orig_name {i4004/ip_board/incr_in[0]}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_incr_in_reg[0]/Q} .original_name {i4004/ip_board/incr_in[0]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0887_reg .original_name i4004/alu_board/n0887
set_db -quiet inst:mcs4/i4004_alu_board_n0887_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0887_reg .single_bit_orig_name i4004/alu_board/n0887
set_db -quiet inst:mcs4/i4004_alu_board_n0887_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0887_reg/Q .original_name i4004/alu_board/n0887/q
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[0]} .original_name {{clockgen/clockdiv[0]}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[0]} .single_bit_orig_name {clockgen/clockdiv[0]}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[0]/Q} .original_name {clockgen/clockdiv[0]/q}
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[0]/QN} .original_name {clockgen/clockdiv[0]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0873_reg .original_name i4004/alu_board/n0873
set_db -quiet inst:mcs4/i4004_alu_board_n0873_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0873_reg .single_bit_orig_name i4004/alu_board/n0873
set_db -quiet inst:mcs4/i4004_alu_board_n0873_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0873_reg/Q .original_name i4004/alu_board/n0873/q
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[3]} .original_name {{i4004/alu_board/acc[3]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[3]} .single_bit_orig_name {i4004/alu_board/acc[3]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_reg[3]/Q} .original_name {i4004/alu_board/acc[3]/q}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[2]} .original_name {{shiftreg/cp_delay[2]}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[2]} .single_bit_orig_name {shiftreg/cp_delay[2]}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[2]/Q} .original_name {shiftreg/cp_delay[2]/q}
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[2]/QN} .original_name {shiftreg/cp_delay[2]/q}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[0]} .original_name {{i4004/alu_board/acc[0]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[0]} .single_bit_orig_name {i4004/alu_board/acc[0]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_reg[0]/Q} .original_name {i4004/alu_board/acc[0]/q}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[0]} .original_name {{shiftreg/cp_delay[0]}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[0]} .single_bit_orig_name {shiftreg/cp_delay[0]}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[0]/Q} .original_name {shiftreg/cp_delay[0]/q}
set_db -quiet inst:mcs4/i4004_alu_board_cy_reg .original_name i4004/alu_board/cy
set_db -quiet inst:mcs4/i4004_alu_board_cy_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_cy_reg .single_bit_orig_name i4004/alu_board/cy
set_db -quiet inst:mcs4/i4004_alu_board_cy_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_cy_reg/Q .original_name i4004/alu_board/cy/q
set_db -quiet {inst:mcs4/ram_0_opa_reg[3]} .original_name {{ram_0/opa[3]}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_opa_reg[3]} .single_bit_orig_name {ram_0/opa[3]}
set_db -quiet {inst:mcs4/ram_0_opa_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_opa_reg[3]/Q} .original_name {ram_0/opa[3]/q}
set_db -quiet inst:mcs4/rom_0_extbusdrive_reg .original_name rom_0/extbusdrive
set_db -quiet inst:mcs4/rom_0_extbusdrive_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_extbusdrive_reg .single_bit_orig_name rom_0/extbusdrive
set_db -quiet inst:mcs4/rom_0_extbusdrive_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_extbusdrive_reg/Q .original_name rom_0/extbusdrive/q
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[4]} .original_name {{clockgen/clockdiv[4]}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[4]} .single_bit_orig_name {clockgen/clockdiv[4]}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[4]/Q} .original_name {clockgen/clockdiv[4]/q}
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[4]/QN} .original_name {clockgen/clockdiv[4]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[2]} .original_name {{i4004/ip_board/incr_in[2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[2]} .single_bit_orig_name {i4004/ip_board/incr_in[2]}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_incr_in_reg[2]/Q} .original_name {i4004/ip_board/incr_in[2]/q}
set_db -quiet inst:mcs4/rom_1_extbusdrive_reg .original_name rom_1/extbusdrive
set_db -quiet inst:mcs4/rom_1_extbusdrive_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_1_extbusdrive_reg .single_bit_orig_name rom_1/extbusdrive
set_db -quiet inst:mcs4/rom_1_extbusdrive_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_1_extbusdrive_reg/Q .original_name rom_1/extbusdrive/q
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[3]} .original_name {{clockgen/clockdiv[3]}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[3]} .single_bit_orig_name {clockgen/clockdiv[3]}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[3]/Q} .original_name {clockgen/clockdiv[3]/q}
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[3]/QN} .original_name {clockgen/clockdiv[3]/q}
set_db -quiet {inst:mcs4/ram_0_opa_reg[1]} .original_name {{ram_0/opa[1]}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_opa_reg[1]} .single_bit_orig_name {ram_0/opa[1]}
set_db -quiet {inst:mcs4/ram_0_opa_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_opa_reg[1]/Q} .original_name {ram_0/opa[1]/q}
set_db -quiet {pin:mcs4/ram_0_opa_reg[1]/QN} .original_name {ram_0/opa[1]/q}
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg .original_name i4004/ip_board/addr_rfsh_0/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg .single_bit_orig_name i4004/ip_board/addr_rfsh_0/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg/Q .original_name i4004/ip_board/addr_rfsh_0/slave/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg .original_name i4004/sp_board/reg_rfsh_0/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_0/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg/Q .original_name i4004/sp_board/reg_rfsh_0/slave/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_slave_reg .original_name i4004/ip_board/addr_ptr_0/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_slave_reg .single_bit_orig_name i4004/ip_board/addr_ptr_0/slave
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_ptr_0_slave_reg/Q .original_name i4004/ip_board/addr_ptr_0/slave/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg .original_name i4004/sp_board/reg_rfsh_1/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_1/slave
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg/Q .original_name i4004/sp_board/reg_rfsh_1/slave/q
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[2]} .original_name {{i4004/id_board/opr[2]}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[2]} .single_bit_orig_name {i4004/id_board/opr[2]}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[2]/Q} .original_name {i4004/id_board/opr[2]/q}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[3]} .original_name {{i4004/id_board/opr[3]}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[3]} .single_bit_orig_name {i4004/id_board/opr[3]}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[3]/Q} .original_name {i4004/id_board/opr[3]/q}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[2]} .original_name {{i4004/id_board/opa[2]}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[2]} .single_bit_orig_name {i4004/id_board/opa[2]}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[2]/Q} .original_name {i4004/id_board/opa[2]/q}
set_db -quiet inst:mcs4/clockgen_clk2_reg .original_name clockgen/clk2
set_db -quiet inst:mcs4/clockgen_clk2_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/clockgen_clk2_reg .single_bit_orig_name clockgen/clk2
set_db -quiet inst:mcs4/clockgen_clk2_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/clockgen_clk2_reg/Q .original_name clockgen/clk2/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][2]} .original_name {{ram_0/ram1/ram_array[19][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][2]} .single_bit_orig_name {ram_0/ram1/ram_array[19][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[19][2]/Q} .original_name {ram_0/ram1/ram_array[19][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][3]} .original_name {{ram_0/ram1/ram_array[19][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][3]} .single_bit_orig_name {ram_0/ram1/ram_array[19][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[19][3]/Q} .original_name {ram_0/ram1/ram_array[19][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][0]} .original_name {{ram_0/ram3/ram_array[17][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][0]} .single_bit_orig_name {ram_0/ram3/ram_array[17][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[17][0]/Q} .original_name {ram_0/ram3/ram_array[17][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][1]} .original_name {{ram_0/ram3/ram_array[17][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][1]} .single_bit_orig_name {ram_0/ram3/ram_array[17][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[17][1]/Q} .original_name {ram_0/ram3/ram_array[17][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][2]} .original_name {{ram_0/ram3/ram_array[17][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][2]} .single_bit_orig_name {ram_0/ram3/ram_array[17][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[17][2]/Q} .original_name {ram_0/ram3/ram_array[17][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][3]} .original_name {{ram_0/ram3/ram_array[17][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][3]} .single_bit_orig_name {ram_0/ram3/ram_array[17][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[17][3]/Q} .original_name {ram_0/ram3/ram_array[17][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][0]} .original_name {{ram_0/ram3/ram_array[19][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][0]} .single_bit_orig_name {ram_0/ram3/ram_array[19][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[19][0]/Q} .original_name {ram_0/ram3/ram_array[19][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][1]} .original_name {{ram_0/ram3/ram_array[19][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][1]} .single_bit_orig_name {ram_0/ram3/ram_array[19][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[19][1]/Q} .original_name {ram_0/ram3/ram_array[19][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][2]} .original_name {{ram_0/ram3/ram_array[19][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][2]} .single_bit_orig_name {ram_0/ram3/ram_array[19][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[19][2]/Q} .original_name {ram_0/ram3/ram_array[19][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][3]} .original_name {{ram_0/ram3/ram_array[19][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][3]} .single_bit_orig_name {ram_0/ram3/ram_array[19][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[19][3]/Q} .original_name {ram_0/ram3/ram_array[19][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][1]} .original_name {{ram_0/ram1/ram_array[17][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][1]} .single_bit_orig_name {ram_0/ram1/ram_array[17][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[17][1]/Q} .original_name {ram_0/ram1/ram_array[17][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][2]} .original_name {{ram_0/ram1/ram_array[17][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][2]} .single_bit_orig_name {ram_0/ram1/ram_array[17][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[17][2]/Q} .original_name {ram_0/ram1/ram_array[17][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][3]} .original_name {{ram_0/ram1/ram_array[17][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][3]} .single_bit_orig_name {ram_0/ram1/ram_array[17][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[17][3]/Q} .original_name {ram_0/ram1/ram_array[17][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][0]} .original_name {{ram_0/ram1/ram_array[17][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][0]} .single_bit_orig_name {ram_0/ram1/ram_array[17][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[17][0]/Q} .original_name {ram_0/ram1/ram_array[17][0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][8]} .original_name {{i4004/ip_board/dram_array[0][8]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][8]} .single_bit_orig_name {i4004/ip_board/dram_array[0][8]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][8]/Q} .original_name {i4004/ip_board/dram_array[0][8]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][9]} .original_name {{i4004/ip_board/dram_array[0][9]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][9]} .single_bit_orig_name {i4004/ip_board/dram_array[0][9]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][9]/Q} .original_name {i4004/ip_board/dram_array[0][9]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][10]} .original_name {{i4004/ip_board/dram_array[0][10]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][10]} .single_bit_orig_name {i4004/ip_board/dram_array[0][10]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][10]/Q} .original_name {i4004/ip_board/dram_array[0][10]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][11]} .original_name {{i4004/ip_board/dram_array[0][11]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][11]} .single_bit_orig_name {i4004/ip_board/dram_array[0][11]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][11]/Q} .original_name {i4004/ip_board/dram_array[0][11]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][7]} .original_name {{i4004/ip_board/dram_array[0][7]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][7]} .single_bit_orig_name {i4004/ip_board/dram_array[0][7]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][7]/Q} .original_name {i4004/ip_board/dram_array[0][7]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][6]} .original_name {{i4004/ip_board/dram_array[0][6]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][6]} .single_bit_orig_name {i4004/ip_board/dram_array[0][6]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][6]/Q} .original_name {i4004/ip_board/dram_array[0][6]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][5]} .original_name {{i4004/ip_board/dram_array[0][5]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][5]} .single_bit_orig_name {i4004/ip_board/dram_array[0][5]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][5]/Q} .original_name {i4004/ip_board/dram_array[0][5]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][1]} .original_name {{i4004/ip_board/dram_array[0][1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][1]} .single_bit_orig_name {i4004/ip_board/dram_array[0][1]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][1]/Q} .original_name {i4004/ip_board/dram_array[0][1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][0]} .original_name {{i4004/ip_board/dram_array[0][0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][0]} .single_bit_orig_name {i4004/ip_board/dram_array[0][0]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][0]/Q} .original_name {i4004/ip_board/dram_array[0][0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][2]} .original_name {{i4004/ip_board/dram_array[0][2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][2]} .single_bit_orig_name {i4004/ip_board/dram_array[0][2]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][2]/Q} .original_name {i4004/ip_board/dram_array[0][2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][3]} .original_name {{i4004/ip_board/dram_array[0][3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][3]} .single_bit_orig_name {i4004/ip_board/dram_array[0][3]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][3]/Q} .original_name {i4004/ip_board/dram_array[0][3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][4]} .original_name {{i4004/ip_board/dram_array[0][4]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][4]} .single_bit_orig_name {i4004/ip_board/dram_array[0][4]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_array_reg[0][4]/Q} .original_name {i4004/ip_board/dram_array[0][4]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][0]} .original_name {{ram_0/ram2/ram_array[9][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][0]} .single_bit_orig_name {ram_0/ram2/ram_array[9][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[9][0]/Q} .original_name {ram_0/ram2/ram_array[9][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][1]} .original_name {{ram_0/ram2/ram_array[9][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][1]} .single_bit_orig_name {ram_0/ram2/ram_array[9][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[9][1]/Q} .original_name {ram_0/ram2/ram_array[9][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][2]} .original_name {{ram_0/ram2/ram_array[9][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][2]} .single_bit_orig_name {ram_0/ram2/ram_array[9][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[9][2]/Q} .original_name {ram_0/ram2/ram_array[9][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][3]} .original_name {{ram_0/ram2/ram_array[9][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][3]} .single_bit_orig_name {ram_0/ram2/ram_array[9][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[9][3]/Q} .original_name {ram_0/ram2/ram_array[9][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][0]} .original_name {{ram_0/ram2/ram_array[11][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][0]} .single_bit_orig_name {ram_0/ram2/ram_array[11][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[11][0]/Q} .original_name {ram_0/ram2/ram_array[11][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][1]} .original_name {{ram_0/ram2/ram_array[11][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][1]} .single_bit_orig_name {ram_0/ram2/ram_array[11][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[11][1]/Q} .original_name {ram_0/ram2/ram_array[11][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][2]} .original_name {{ram_0/ram2/ram_array[11][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][2]} .single_bit_orig_name {ram_0/ram2/ram_array[11][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[11][2]/Q} .original_name {ram_0/ram2/ram_array[11][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][3]} .original_name {{ram_0/ram2/ram_array[11][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][3]} .single_bit_orig_name {ram_0/ram2/ram_array[11][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[11][3]/Q} .original_name {ram_0/ram2/ram_array[11][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][0]} .original_name {{ram_0/ram0/ram_array[9][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][0]} .single_bit_orig_name {ram_0/ram0/ram_array[9][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[9][0]/Q} .original_name {ram_0/ram0/ram_array[9][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][1]} .original_name {{ram_0/ram0/ram_array[9][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][1]} .single_bit_orig_name {ram_0/ram0/ram_array[9][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[9][1]/Q} .original_name {ram_0/ram0/ram_array[9][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][2]} .original_name {{ram_0/ram0/ram_array[9][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][2]} .single_bit_orig_name {ram_0/ram0/ram_array[9][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[9][2]/Q} .original_name {ram_0/ram0/ram_array[9][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][3]} .original_name {{ram_0/ram0/ram_array[9][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][3]} .single_bit_orig_name {ram_0/ram0/ram_array[9][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[9][3]/Q} .original_name {ram_0/ram0/ram_array[9][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][0]} .original_name {{ram_0/ram0/ram_array[11][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][0]} .single_bit_orig_name {ram_0/ram0/ram_array[11][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[11][0]/Q} .original_name {ram_0/ram0/ram_array[11][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][1]} .original_name {{ram_0/ram0/ram_array[11][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][1]} .single_bit_orig_name {ram_0/ram0/ram_array[11][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[11][1]/Q} .original_name {ram_0/ram0/ram_array[11][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][2]} .original_name {{ram_0/ram0/ram_array[11][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][2]} .single_bit_orig_name {ram_0/ram0/ram_array[11][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[11][2]/Q} .original_name {ram_0/ram0/ram_array[11][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][3]} .original_name {{ram_0/ram0/ram_array[11][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][3]} .single_bit_orig_name {ram_0/ram0/ram_array[11][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[11][3]/Q} .original_name {ram_0/ram0/ram_array[11][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][0]} .original_name {{ram_0/ram2/ram_array[12][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][0]} .single_bit_orig_name {ram_0/ram2/ram_array[12][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[12][0]/Q} .original_name {ram_0/ram2/ram_array[12][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][1]} .original_name {{ram_0/ram2/ram_array[12][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][1]} .single_bit_orig_name {ram_0/ram2/ram_array[12][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[12][1]/Q} .original_name {ram_0/ram2/ram_array[12][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][2]} .original_name {{ram_0/ram2/ram_array[12][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][2]} .single_bit_orig_name {ram_0/ram2/ram_array[12][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[12][2]/Q} .original_name {ram_0/ram2/ram_array[12][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][3]} .original_name {{ram_0/ram2/ram_array[12][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][3]} .single_bit_orig_name {ram_0/ram2/ram_array[12][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[12][3]/Q} .original_name {ram_0/ram2/ram_array[12][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][0]} .original_name {{ram_0/ram0/ram_array[12][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][0]} .single_bit_orig_name {ram_0/ram0/ram_array[12][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[12][0]/Q} .original_name {ram_0/ram0/ram_array[12][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][1]} .original_name {{ram_0/ram0/ram_array[12][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][1]} .single_bit_orig_name {ram_0/ram0/ram_array[12][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[12][1]/Q} .original_name {ram_0/ram0/ram_array[12][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][2]} .original_name {{ram_0/ram0/ram_array[12][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][2]} .single_bit_orig_name {ram_0/ram0/ram_array[12][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[12][2]/Q} .original_name {ram_0/ram0/ram_array[12][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][3]} .original_name {{ram_0/ram0/ram_array[12][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][3]} .single_bit_orig_name {ram_0/ram0/ram_array[12][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[12][3]/Q} .original_name {ram_0/ram0/ram_array[12][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][0]} .original_name {{ram_0/ram2/ram_array[15][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][0]} .single_bit_orig_name {ram_0/ram2/ram_array[15][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[15][0]/Q} .original_name {ram_0/ram2/ram_array[15][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][1]} .original_name {{ram_0/ram2/ram_array[15][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][1]} .single_bit_orig_name {ram_0/ram2/ram_array[15][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[15][1]/Q} .original_name {ram_0/ram2/ram_array[15][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][2]} .original_name {{ram_0/ram2/ram_array[15][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][2]} .single_bit_orig_name {ram_0/ram2/ram_array[15][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[15][2]/Q} .original_name {ram_0/ram2/ram_array[15][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][3]} .original_name {{ram_0/ram2/ram_array[15][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][3]} .single_bit_orig_name {ram_0/ram2/ram_array[15][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[15][3]/Q} .original_name {ram_0/ram2/ram_array[15][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][1]} .original_name {{ram_0/ram0/ram_array[15][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][1]} .single_bit_orig_name {ram_0/ram0/ram_array[15][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[15][1]/Q} .original_name {ram_0/ram0/ram_array[15][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][2]} .original_name {{ram_0/ram0/ram_array[15][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][2]} .single_bit_orig_name {ram_0/ram0/ram_array[15][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[15][2]/Q} .original_name {ram_0/ram0/ram_array[15][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][3]} .original_name {{ram_0/ram0/ram_array[15][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][3]} .single_bit_orig_name {ram_0/ram0/ram_array[15][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[15][3]/Q} .original_name {ram_0/ram0/ram_array[15][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][0]} .original_name {{ram_0/ram0/ram_array[15][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][0]} .single_bit_orig_name {ram_0/ram0/ram_array[15][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[15][0]/Q} .original_name {ram_0/ram0/ram_array[15][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][0]} .original_name {{ram_0/ram3/ram_array[13][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][0]} .single_bit_orig_name {ram_0/ram3/ram_array[13][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[13][0]/Q} .original_name {ram_0/ram3/ram_array[13][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][2]} .original_name {{ram_0/ram3/ram_array[13][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][2]} .single_bit_orig_name {ram_0/ram3/ram_array[13][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[13][2]/Q} .original_name {ram_0/ram3/ram_array[13][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][1]} .original_name {{ram_0/ram3/ram_array[13][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][1]} .single_bit_orig_name {ram_0/ram3/ram_array[13][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[13][1]/Q} .original_name {ram_0/ram3/ram_array[13][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][3]} .original_name {{ram_0/ram3/ram_array[13][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][3]} .single_bit_orig_name {ram_0/ram3/ram_array[13][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[13][3]/Q} .original_name {ram_0/ram3/ram_array[13][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][0]} .original_name {{ram_0/ram1/ram_array[13][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][0]} .single_bit_orig_name {ram_0/ram1/ram_array[13][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[13][0]/Q} .original_name {ram_0/ram1/ram_array[13][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][1]} .original_name {{ram_0/ram1/ram_array[13][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][1]} .single_bit_orig_name {ram_0/ram1/ram_array[13][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[13][1]/Q} .original_name {ram_0/ram1/ram_array[13][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][2]} .original_name {{ram_0/ram1/ram_array[13][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][2]} .single_bit_orig_name {ram_0/ram1/ram_array[13][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[13][2]/Q} .original_name {ram_0/ram1/ram_array[13][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][3]} .original_name {{ram_0/ram1/ram_array[13][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][3]} .single_bit_orig_name {ram_0/ram1/ram_array[13][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[13][3]/Q} .original_name {ram_0/ram1/ram_array[13][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][0]} .original_name {{ram_0/ram2/ram_array[0][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][0]} .single_bit_orig_name {ram_0/ram2/ram_array[0][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[0][0]/Q} .original_name {ram_0/ram2/ram_array[0][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][1]} .original_name {{ram_0/ram2/ram_array[0][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][1]} .single_bit_orig_name {ram_0/ram2/ram_array[0][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[0][1]/Q} .original_name {ram_0/ram2/ram_array[0][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][2]} .original_name {{ram_0/ram2/ram_array[0][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][2]} .single_bit_orig_name {ram_0/ram2/ram_array[0][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[0][2]/Q} .original_name {ram_0/ram2/ram_array[0][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][3]} .original_name {{ram_0/ram2/ram_array[0][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][3]} .single_bit_orig_name {ram_0/ram2/ram_array[0][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[0][3]/Q} .original_name {ram_0/ram2/ram_array[0][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][0]} .original_name {{ram_0/ram2/ram_array[1][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][0]} .single_bit_orig_name {ram_0/ram2/ram_array[1][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[1][0]/Q} .original_name {ram_0/ram2/ram_array[1][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][1]} .original_name {{ram_0/ram2/ram_array[1][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][1]} .single_bit_orig_name {ram_0/ram2/ram_array[1][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[1][1]/Q} .original_name {ram_0/ram2/ram_array[1][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][2]} .original_name {{ram_0/ram2/ram_array[1][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][2]} .single_bit_orig_name {ram_0/ram2/ram_array[1][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[1][2]/Q} .original_name {ram_0/ram2/ram_array[1][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][3]} .original_name {{ram_0/ram2/ram_array[1][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][3]} .single_bit_orig_name {ram_0/ram2/ram_array[1][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[1][3]/Q} .original_name {ram_0/ram2/ram_array[1][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][0]} .original_name {{ram_0/ram2/ram_array[2][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][0]} .single_bit_orig_name {ram_0/ram2/ram_array[2][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[2][0]/Q} .original_name {ram_0/ram2/ram_array[2][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][1]} .original_name {{ram_0/ram2/ram_array[2][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][1]} .single_bit_orig_name {ram_0/ram2/ram_array[2][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[2][1]/Q} .original_name {ram_0/ram2/ram_array[2][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][2]} .original_name {{ram_0/ram2/ram_array[2][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][2]} .single_bit_orig_name {ram_0/ram2/ram_array[2][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[2][2]/Q} .original_name {ram_0/ram2/ram_array[2][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][3]} .original_name {{ram_0/ram2/ram_array[2][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][3]} .single_bit_orig_name {ram_0/ram2/ram_array[2][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[2][3]/Q} .original_name {ram_0/ram2/ram_array[2][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][0]} .original_name {{ram_0/ram2/ram_array[3][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][0]} .single_bit_orig_name {ram_0/ram2/ram_array[3][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[3][0]/Q} .original_name {ram_0/ram2/ram_array[3][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][1]} .original_name {{ram_0/ram2/ram_array[3][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][1]} .single_bit_orig_name {ram_0/ram2/ram_array[3][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[3][1]/Q} .original_name {ram_0/ram2/ram_array[3][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][2]} .original_name {{ram_0/ram2/ram_array[3][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][2]} .single_bit_orig_name {ram_0/ram2/ram_array[3][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[3][2]/Q} .original_name {ram_0/ram2/ram_array[3][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][3]} .original_name {{ram_0/ram2/ram_array[3][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][3]} .single_bit_orig_name {ram_0/ram2/ram_array[3][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[3][3]/Q} .original_name {ram_0/ram2/ram_array[3][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][0]} .original_name {{ram_0/ram2/ram_array[4][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][0]} .single_bit_orig_name {ram_0/ram2/ram_array[4][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[4][0]/Q} .original_name {ram_0/ram2/ram_array[4][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][1]} .original_name {{ram_0/ram2/ram_array[4][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][1]} .single_bit_orig_name {ram_0/ram2/ram_array[4][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[4][1]/Q} .original_name {ram_0/ram2/ram_array[4][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][2]} .original_name {{ram_0/ram2/ram_array[4][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][2]} .single_bit_orig_name {ram_0/ram2/ram_array[4][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[4][2]/Q} .original_name {ram_0/ram2/ram_array[4][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][3]} .original_name {{ram_0/ram2/ram_array[4][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][3]} .single_bit_orig_name {ram_0/ram2/ram_array[4][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[4][3]/Q} .original_name {ram_0/ram2/ram_array[4][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][0]} .original_name {{ram_0/ram2/ram_array[5][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][0]} .single_bit_orig_name {ram_0/ram2/ram_array[5][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[5][0]/Q} .original_name {ram_0/ram2/ram_array[5][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][1]} .original_name {{ram_0/ram2/ram_array[5][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][1]} .single_bit_orig_name {ram_0/ram2/ram_array[5][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[5][1]/Q} .original_name {ram_0/ram2/ram_array[5][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][2]} .original_name {{ram_0/ram2/ram_array[5][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][2]} .single_bit_orig_name {ram_0/ram2/ram_array[5][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[5][2]/Q} .original_name {ram_0/ram2/ram_array[5][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][3]} .original_name {{ram_0/ram2/ram_array[5][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][3]} .single_bit_orig_name {ram_0/ram2/ram_array[5][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[5][3]/Q} .original_name {ram_0/ram2/ram_array[5][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][0]} .original_name {{ram_0/ram2/ram_array[6][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][0]} .single_bit_orig_name {ram_0/ram2/ram_array[6][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[6][0]/Q} .original_name {ram_0/ram2/ram_array[6][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][1]} .original_name {{ram_0/ram2/ram_array[6][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][1]} .single_bit_orig_name {ram_0/ram2/ram_array[6][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[6][1]/Q} .original_name {ram_0/ram2/ram_array[6][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][2]} .original_name {{ram_0/ram2/ram_array[6][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][2]} .single_bit_orig_name {ram_0/ram2/ram_array[6][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[6][2]/Q} .original_name {ram_0/ram2/ram_array[6][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][3]} .original_name {{ram_0/ram2/ram_array[6][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][3]} .single_bit_orig_name {ram_0/ram2/ram_array[6][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[6][3]/Q} .original_name {ram_0/ram2/ram_array[6][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][0]} .original_name {{ram_0/ram2/ram_array[7][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][0]} .single_bit_orig_name {ram_0/ram2/ram_array[7][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[7][0]/Q} .original_name {ram_0/ram2/ram_array[7][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][1]} .original_name {{ram_0/ram2/ram_array[7][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][1]} .single_bit_orig_name {ram_0/ram2/ram_array[7][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[7][1]/Q} .original_name {ram_0/ram2/ram_array[7][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][2]} .original_name {{ram_0/ram2/ram_array[7][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][2]} .single_bit_orig_name {ram_0/ram2/ram_array[7][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[7][2]/Q} .original_name {ram_0/ram2/ram_array[7][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][3]} .original_name {{ram_0/ram2/ram_array[7][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][3]} .single_bit_orig_name {ram_0/ram2/ram_array[7][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[7][3]/Q} .original_name {ram_0/ram2/ram_array[7][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][0]} .original_name {{ram_0/ram2/ram_array[13][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][0]} .single_bit_orig_name {ram_0/ram2/ram_array[13][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[13][0]/Q} .original_name {ram_0/ram2/ram_array[13][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][1]} .original_name {{ram_0/ram2/ram_array[13][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][1]} .single_bit_orig_name {ram_0/ram2/ram_array[13][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[13][1]/Q} .original_name {ram_0/ram2/ram_array[13][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][2]} .original_name {{ram_0/ram2/ram_array[13][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][2]} .single_bit_orig_name {ram_0/ram2/ram_array[13][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[13][2]/Q} .original_name {ram_0/ram2/ram_array[13][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][3]} .original_name {{ram_0/ram2/ram_array[13][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][3]} .single_bit_orig_name {ram_0/ram2/ram_array[13][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[13][3]/Q} .original_name {ram_0/ram2/ram_array[13][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][0]} .original_name {{ram_0/ram2/ram_array[17][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][0]} .single_bit_orig_name {ram_0/ram2/ram_array[17][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[17][0]/Q} .original_name {ram_0/ram2/ram_array[17][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][1]} .original_name {{ram_0/ram2/ram_array[17][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][1]} .single_bit_orig_name {ram_0/ram2/ram_array[17][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[17][1]/Q} .original_name {ram_0/ram2/ram_array[17][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][3]} .original_name {{ram_0/ram2/ram_array[17][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][3]} .single_bit_orig_name {ram_0/ram2/ram_array[17][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[17][3]/Q} .original_name {ram_0/ram2/ram_array[17][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][2]} .original_name {{ram_0/ram2/ram_array[17][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][2]} .single_bit_orig_name {ram_0/ram2/ram_array[17][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[17][2]/Q} .original_name {ram_0/ram2/ram_array[17][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][0]} .original_name {{ram_0/ram2/ram_array[19][0]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][0]} .single_bit_orig_name {ram_0/ram2/ram_array[19][0]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[19][0]/Q} .original_name {ram_0/ram2/ram_array[19][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][1]} .original_name {{ram_0/ram2/ram_array[19][1]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][1]} .single_bit_orig_name {ram_0/ram2/ram_array[19][1]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[19][1]/Q} .original_name {ram_0/ram2/ram_array[19][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][2]} .original_name {{ram_0/ram2/ram_array[19][2]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][2]} .single_bit_orig_name {ram_0/ram2/ram_array[19][2]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[19][2]/Q} .original_name {ram_0/ram2/ram_array[19][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][3]} .original_name {{ram_0/ram2/ram_array[19][3]}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][3]} .single_bit_orig_name {ram_0/ram2/ram_array[19][3]}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram2_ram_array_reg[19][3]/Q} .original_name {ram_0/ram2/ram_array[19][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][0]} .original_name {{ram_0/ram3/ram_array[1][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][0]} .single_bit_orig_name {ram_0/ram3/ram_array[1][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[1][0]/Q} .original_name {ram_0/ram3/ram_array[1][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][1]} .original_name {{ram_0/ram3/ram_array[1][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][1]} .single_bit_orig_name {ram_0/ram3/ram_array[1][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[1][1]/Q} .original_name {ram_0/ram3/ram_array[1][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][2]} .original_name {{ram_0/ram3/ram_array[1][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][2]} .single_bit_orig_name {ram_0/ram3/ram_array[1][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[1][2]/Q} .original_name {ram_0/ram3/ram_array[1][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][3]} .original_name {{ram_0/ram3/ram_array[1][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][3]} .single_bit_orig_name {ram_0/ram3/ram_array[1][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[1][3]/Q} .original_name {ram_0/ram3/ram_array[1][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][0]} .original_name {{ram_0/ram3/ram_array[3][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][0]} .single_bit_orig_name {ram_0/ram3/ram_array[3][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[3][0]/Q} .original_name {ram_0/ram3/ram_array[3][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][1]} .original_name {{ram_0/ram3/ram_array[3][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][1]} .single_bit_orig_name {ram_0/ram3/ram_array[3][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[3][1]/Q} .original_name {ram_0/ram3/ram_array[3][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][2]} .original_name {{ram_0/ram3/ram_array[3][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][2]} .single_bit_orig_name {ram_0/ram3/ram_array[3][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[3][2]/Q} .original_name {ram_0/ram3/ram_array[3][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][3]} .original_name {{ram_0/ram3/ram_array[3][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][3]} .single_bit_orig_name {ram_0/ram3/ram_array[3][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[3][3]/Q} .original_name {ram_0/ram3/ram_array[3][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][0]} .original_name {{ram_0/ram3/ram_array[4][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][0]} .single_bit_orig_name {ram_0/ram3/ram_array[4][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[4][0]/Q} .original_name {ram_0/ram3/ram_array[4][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][1]} .original_name {{ram_0/ram3/ram_array[4][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][1]} .single_bit_orig_name {ram_0/ram3/ram_array[4][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[4][1]/Q} .original_name {ram_0/ram3/ram_array[4][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][2]} .original_name {{ram_0/ram3/ram_array[4][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][2]} .single_bit_orig_name {ram_0/ram3/ram_array[4][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[4][2]/Q} .original_name {ram_0/ram3/ram_array[4][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][1]} .original_name {{ram_0/ram3/ram_array[5][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][1]} .single_bit_orig_name {ram_0/ram3/ram_array[5][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[5][1]/Q} .original_name {ram_0/ram3/ram_array[5][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][2]} .original_name {{ram_0/ram3/ram_array[5][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][2]} .single_bit_orig_name {ram_0/ram3/ram_array[5][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[5][2]/Q} .original_name {ram_0/ram3/ram_array[5][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][3]} .original_name {{ram_0/ram3/ram_array[5][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][3]} .single_bit_orig_name {ram_0/ram3/ram_array[5][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[5][3]/Q} .original_name {ram_0/ram3/ram_array[5][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][3]} .original_name {{ram_0/ram3/ram_array[4][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][3]} .single_bit_orig_name {ram_0/ram3/ram_array[4][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[4][3]/Q} .original_name {ram_0/ram3/ram_array[4][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][0]} .original_name {{ram_0/ram3/ram_array[5][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][0]} .single_bit_orig_name {ram_0/ram3/ram_array[5][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[5][0]/Q} .original_name {ram_0/ram3/ram_array[5][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][0]} .original_name {{ram_0/ram3/ram_array[7][0]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][0]} .single_bit_orig_name {ram_0/ram3/ram_array[7][0]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[7][0]/Q} .original_name {ram_0/ram3/ram_array[7][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][1]} .original_name {{ram_0/ram3/ram_array[7][1]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][1]} .single_bit_orig_name {ram_0/ram3/ram_array[7][1]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[7][1]/Q} .original_name {ram_0/ram3/ram_array[7][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][2]} .original_name {{ram_0/ram3/ram_array[7][2]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][2]} .single_bit_orig_name {ram_0/ram3/ram_array[7][2]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[7][2]/Q} .original_name {ram_0/ram3/ram_array[7][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][3]} .original_name {{ram_0/ram3/ram_array[7][3]}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][3]} .single_bit_orig_name {ram_0/ram3/ram_array[7][3]}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram3_ram_array_reg[7][3]/Q} .original_name {ram_0/ram3/ram_array[7][3]/q}
set_db -quiet inst:mcs4/i4004_ip_board_carry_in_reg .original_name i4004/ip_board/carry_in
set_db -quiet inst:mcs4/i4004_ip_board_carry_in_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_carry_in_reg .single_bit_orig_name i4004/ip_board/carry_in
set_db -quiet inst:mcs4/i4004_ip_board_carry_in_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_carry_in_reg/Q .original_name i4004/ip_board/carry_in/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_master_reg .original_name i4004/ip_board/addr_rfsh_1/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_master_reg .single_bit_orig_name i4004/ip_board/addr_rfsh_1/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_rfsh_1_master_reg/Q .original_name i4004/ip_board/addr_rfsh_1/master/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_master_reg .original_name i4004/ip_board/addr_rfsh_0/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_master_reg .single_bit_orig_name i4004/ip_board/addr_rfsh_0/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_rfsh_0_master_reg/Q .original_name i4004/ip_board/addr_rfsh_0/master/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_master_reg .original_name i4004/ip_board/addr_ptr_1/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_master_reg .single_bit_orig_name i4004/ip_board/addr_ptr_1/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_ptr_1_master_reg/Q .original_name i4004/ip_board/addr_ptr_1/master/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][3]} .original_name {{ram_0/ram1/ram_array[7][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][3]} .single_bit_orig_name {ram_0/ram1/ram_array[7][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[7][3]/Q} .original_name {ram_0/ram1/ram_array[7][3]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[0]} .original_name {{ram_0/rfsh_next[0]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[0]} .single_bit_orig_name {ram_0/rfsh_next[0]}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_next_reg[0]/Q} .original_name {ram_0/rfsh_next[0]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[1]} .original_name {{ram_0/rfsh_next[1]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[1]} .single_bit_orig_name {ram_0/rfsh_next[1]}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_next_reg[1]/Q} .original_name {ram_0/rfsh_next[1]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[2]} .original_name {{ram_0/rfsh_next[2]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[2]} .single_bit_orig_name {ram_0/rfsh_next[2]}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_next_reg[2]/Q} .original_name {ram_0/rfsh_next[2]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[4]} .original_name {{ram_0/rfsh_next[4]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[4]} .single_bit_orig_name {ram_0/rfsh_next[4]}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_next_reg[4]/Q} .original_name {ram_0/rfsh_next[4]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[3]} .original_name {{ram_0/rfsh_next[3]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[3]} .single_bit_orig_name {ram_0/rfsh_next[3]}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_next_reg[3]/Q} .original_name {ram_0/rfsh_next[3]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a11_reg .original_name ram_0/timing_recovery/a11
set_db -quiet inst:mcs4/ram_0_timing_recovery_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a11_reg .single_bit_orig_name ram_0/timing_recovery/a11
set_db -quiet inst:mcs4/ram_0_timing_recovery_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a11_reg/Q .original_name ram_0/timing_recovery/a11/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][2]} .original_name {{ram_0/ram1/ram_array[7][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][2]} .single_bit_orig_name {ram_0/ram1/ram_array[7][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[7][2]/Q} .original_name {ram_0/ram1/ram_array[7][2]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a21_reg .original_name ram_0/timing_recovery/a21
set_db -quiet inst:mcs4/ram_0_timing_recovery_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a21_reg .single_bit_orig_name ram_0/timing_recovery/a21
set_db -quiet inst:mcs4/ram_0_timing_recovery_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a21_reg/Q .original_name ram_0/timing_recovery/a21/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_a22_reg .original_name ram_0/timing_recovery/a22
set_db -quiet inst:mcs4/ram_0_timing_recovery_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a22_reg .single_bit_orig_name ram_0/timing_recovery/a22
set_db -quiet inst:mcs4/ram_0_timing_recovery_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a22_reg/Q .original_name ram_0/timing_recovery/a22/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_a31_reg .original_name ram_0/timing_recovery/a31
set_db -quiet inst:mcs4/ram_0_timing_recovery_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a31_reg .single_bit_orig_name ram_0/timing_recovery/a31
set_db -quiet inst:mcs4/ram_0_timing_recovery_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a31_reg/Q .original_name ram_0/timing_recovery/a31/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_a32_reg .original_name ram_0/timing_recovery/a32
set_db -quiet inst:mcs4/ram_0_timing_recovery_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a32_reg .single_bit_orig_name ram_0/timing_recovery/a32
set_db -quiet inst:mcs4/ram_0_timing_recovery_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a32_reg/Q .original_name ram_0/timing_recovery/a32/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_m11_reg .original_name ram_0/timing_recovery/m11
set_db -quiet inst:mcs4/ram_0_timing_recovery_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_m11_reg .single_bit_orig_name ram_0/timing_recovery/m11
set_db -quiet inst:mcs4/ram_0_timing_recovery_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_m11_reg/Q .original_name ram_0/timing_recovery/m11/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][1]} .original_name {{ram_0/ram1/ram_array[7][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][1]} .single_bit_orig_name {ram_0/ram1/ram_array[7][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[7][1]/Q} .original_name {ram_0/ram1/ram_array[7][1]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m21_reg .original_name ram_0/timing_recovery/m21
set_db -quiet inst:mcs4/ram_0_timing_recovery_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_m21_reg .single_bit_orig_name ram_0/timing_recovery/m21
set_db -quiet inst:mcs4/ram_0_timing_recovery_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_m21_reg/Q .original_name ram_0/timing_recovery/m21/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][0]} .original_name {{ram_0/ram1/ram_array[7][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][0]} .single_bit_orig_name {ram_0/ram1/ram_array[7][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[7][0]/Q} .original_name {ram_0/ram1/ram_array[7][0]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x11_reg .original_name ram_0/timing_recovery/x11
set_db -quiet inst:mcs4/ram_0_timing_recovery_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x11_reg .single_bit_orig_name ram_0/timing_recovery/x11
set_db -quiet inst:mcs4/ram_0_timing_recovery_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x11_reg/Q .original_name ram_0/timing_recovery/x11/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_x12_reg .original_name ram_0/timing_recovery/x12
set_db -quiet inst:mcs4/ram_0_timing_recovery_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x12_reg .single_bit_orig_name ram_0/timing_recovery/x12
set_db -quiet inst:mcs4/ram_0_timing_recovery_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x12_reg/Q .original_name ram_0/timing_recovery/x12/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_x21_reg .original_name ram_0/timing_recovery/x21
set_db -quiet inst:mcs4/ram_0_timing_recovery_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x21_reg .single_bit_orig_name ram_0/timing_recovery/x21
set_db -quiet inst:mcs4/ram_0_timing_recovery_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x21_reg/Q .original_name ram_0/timing_recovery/x21/q
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_master_reg .original_name i4004/ip_board/addr_ptr_0/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_master_reg .single_bit_orig_name i4004/ip_board/addr_ptr_0/master
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_addr_ptr_0_master_reg/Q .original_name i4004/ip_board/addr_ptr_0/master/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_x31_reg .original_name ram_0/timing_recovery/x31
set_db -quiet inst:mcs4/ram_0_timing_recovery_x31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x31_reg .single_bit_orig_name ram_0/timing_recovery/x31
set_db -quiet inst:mcs4/ram_0_timing_recovery_x31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x31_reg/Q .original_name ram_0/timing_recovery/x31/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][3]} .original_name {{ram_0/ram1/ram_array[5][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][3]} .single_bit_orig_name {ram_0/ram1/ram_array[5][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[5][3]/Q} .original_name {ram_0/ram1/ram_array[5][3]/q}
set_db -quiet inst:mcs4/i4004_ip_board_n0416_reg .original_name i4004/ip_board/n0416
set_db -quiet inst:mcs4/i4004_ip_board_n0416_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_n0416_reg .single_bit_orig_name i4004/ip_board/n0416
set_db -quiet inst:mcs4/i4004_ip_board_n0416_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_n0416_reg/Q .original_name i4004/ip_board/n0416/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][2]} .original_name {{ram_0/ram1/ram_array[5][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][2]} .single_bit_orig_name {ram_0/ram1/ram_array[5][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[5][2]/Q} .original_name {ram_0/ram1/ram_array[5][2]/q}
set_db -quiet inst:mcs4/i4004_ip_board_n0438_reg .original_name i4004/ip_board/n0438
set_db -quiet inst:mcs4/i4004_ip_board_n0438_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_n0438_reg .single_bit_orig_name i4004/ip_board/n0438
set_db -quiet inst:mcs4/i4004_ip_board_n0438_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_n0438_reg/Q .original_name i4004/ip_board/n0438/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][1]} .original_name {{ram_0/ram1/ram_array[5][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][1]} .single_bit_orig_name {ram_0/ram1/ram_array[5][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[5][1]/Q} .original_name {ram_0/ram1/ram_array[5][1]/q}
set_db -quiet inst:mcs4/i4004_ip_board_n0374_reg .original_name i4004/ip_board/n0374
set_db -quiet inst:mcs4/i4004_ip_board_n0374_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_n0374_reg .single_bit_orig_name i4004/ip_board/n0374
set_db -quiet inst:mcs4/i4004_ip_board_n0374_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_n0374_reg/Q .original_name i4004/ip_board/n0374/q
set_db -quiet inst:mcs4/i4004_ip_board_n0384_reg .original_name i4004/ip_board/n0384
set_db -quiet inst:mcs4/i4004_ip_board_n0384_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_ip_board_n0384_reg .single_bit_orig_name i4004/ip_board/n0384
set_db -quiet inst:mcs4/i4004_ip_board_n0384_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_ip_board_n0384_reg/Q .original_name i4004/ip_board/n0384/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_a11_reg .original_name rom_0/timing_recovery/a11
set_db -quiet inst:mcs4/rom_0_timing_recovery_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a11_reg .single_bit_orig_name rom_0/timing_recovery/a11
set_db -quiet inst:mcs4/rom_0_timing_recovery_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a11_reg/Q .original_name rom_0/timing_recovery/a11/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][0]} .original_name {{ram_0/ram1/ram_array[5][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][0]} .single_bit_orig_name {ram_0/ram1/ram_array[5][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[5][0]/Q} .original_name {ram_0/ram1/ram_array[5][0]/q}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a21_reg .original_name rom_0/timing_recovery/a21
set_db -quiet inst:mcs4/rom_0_timing_recovery_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a21_reg .single_bit_orig_name rom_0/timing_recovery/a21
set_db -quiet inst:mcs4/rom_0_timing_recovery_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a21_reg/Q .original_name rom_0/timing_recovery/a21/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_a22_reg .original_name rom_0/timing_recovery/a22
set_db -quiet inst:mcs4/rom_0_timing_recovery_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a22_reg .single_bit_orig_name rom_0/timing_recovery/a22
set_db -quiet inst:mcs4/rom_0_timing_recovery_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a22_reg/Q .original_name rom_0/timing_recovery/a22/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_a31_reg .original_name rom_0/timing_recovery/a31
set_db -quiet inst:mcs4/rom_0_timing_recovery_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a31_reg .single_bit_orig_name rom_0/timing_recovery/a31
set_db -quiet inst:mcs4/rom_0_timing_recovery_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a31_reg/Q .original_name rom_0/timing_recovery/a31/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][3]} .original_name {{ram_0/ram1/ram_array[4][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][3]} .single_bit_orig_name {ram_0/ram1/ram_array[4][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[4][3]/Q} .original_name {ram_0/ram1/ram_array[4][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][2]} .original_name {{ram_0/ram1/ram_array[4][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][2]} .single_bit_orig_name {ram_0/ram1/ram_array[4][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[4][2]/Q} .original_name {ram_0/ram1/ram_array[4][2]/q}
set_db -quiet inst:mcs4/rom_0_timing_recovery_m12_reg .original_name rom_0/timing_recovery/m12
set_db -quiet inst:mcs4/rom_0_timing_recovery_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_m12_reg .single_bit_orig_name rom_0/timing_recovery/m12
set_db -quiet inst:mcs4/rom_0_timing_recovery_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_m12_reg/Q .original_name rom_0/timing_recovery/m12/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][1]} .original_name {{ram_0/ram1/ram_array[4][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][1]} .single_bit_orig_name {ram_0/ram1/ram_array[4][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[4][1]/Q} .original_name {ram_0/ram1/ram_array[4][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][0]} .original_name {{ram_0/ram1/ram_array[4][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][0]} .single_bit_orig_name {ram_0/ram1/ram_array[4][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[4][0]/Q} .original_name {ram_0/ram1/ram_array[4][0]/q}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x11_reg .original_name rom_0/timing_recovery/x11
set_db -quiet inst:mcs4/rom_0_timing_recovery_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_x11_reg .single_bit_orig_name rom_0/timing_recovery/x11
set_db -quiet inst:mcs4/rom_0_timing_recovery_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_x11_reg/Q .original_name rom_0/timing_recovery/x11/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_x12_reg .original_name rom_0/timing_recovery/x12
set_db -quiet inst:mcs4/rom_0_timing_recovery_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_x12_reg .single_bit_orig_name rom_0/timing_recovery/x12
set_db -quiet inst:mcs4/rom_0_timing_recovery_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_x12_reg/Q .original_name rom_0/timing_recovery/x12/q
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][3]} .original_name {{ram_0/ram1/ram_array[3][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][3]} .single_bit_orig_name {ram_0/ram1/ram_array[3][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[3][3]/Q} .original_name {ram_0/ram1/ram_array[3][3]/q}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x22_reg .original_name rom_0/timing_recovery/x22
set_db -quiet inst:mcs4/rom_0_timing_recovery_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_x22_reg .single_bit_orig_name rom_0/timing_recovery/x22
set_db -quiet inst:mcs4/rom_0_timing_recovery_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_x22_reg/Q .original_name rom_0/timing_recovery/x22/q
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][2]} .original_name {{i4004/sp_board/dram_array[0][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][2]} .single_bit_orig_name {i4004/sp_board/dram_array[0][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][2]/Q} .original_name {i4004/sp_board/dram_array[0][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][0]} .original_name {{i4004/sp_board/dram_array[0][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][0]} .single_bit_orig_name {i4004/sp_board/dram_array[0][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][0]/Q} .original_name {i4004/sp_board/dram_array[0][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][1]} .original_name {{i4004/sp_board/dram_array[0][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][1]} .single_bit_orig_name {i4004/sp_board/dram_array[0][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][1]/Q} .original_name {i4004/sp_board/dram_array[0][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][3]} .original_name {{i4004/sp_board/dram_array[0][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][3]} .single_bit_orig_name {i4004/sp_board/dram_array[0][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][3]/Q} .original_name {i4004/sp_board/dram_array[0][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][2]} .original_name {{ram_0/ram1/ram_array[3][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][2]} .single_bit_orig_name {ram_0/ram1/ram_array[3][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[3][2]/Q} .original_name {ram_0/ram1/ram_array[3][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][4]} .original_name {{i4004/sp_board/dram_array[0][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][4]} .single_bit_orig_name {i4004/sp_board/dram_array[0][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][4]/Q} .original_name {i4004/sp_board/dram_array[0][4]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][1]} .original_name {{ram_0/ram1/ram_array[3][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][1]} .single_bit_orig_name {ram_0/ram1/ram_array[3][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[3][1]/Q} .original_name {ram_0/ram1/ram_array[3][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][5]} .original_name {{i4004/sp_board/dram_array[0][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][5]} .single_bit_orig_name {i4004/sp_board/dram_array[0][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][5]/Q} .original_name {i4004/sp_board/dram_array[0][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][7]} .original_name {{i4004/sp_board/dram_array[0][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][7]} .single_bit_orig_name {i4004/sp_board/dram_array[0][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][7]/Q} .original_name {i4004/sp_board/dram_array[0][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][6]} .original_name {{i4004/sp_board/dram_array[0][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][6]} .single_bit_orig_name {i4004/sp_board/dram_array[0][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[0][6]/Q} .original_name {i4004/sp_board/dram_array[0][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][0]} .original_name {{i4004/sp_board/dram_array[1][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][0]} .single_bit_orig_name {i4004/sp_board/dram_array[1][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][0]/Q} .original_name {i4004/sp_board/dram_array[1][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][0]} .original_name {{ram_0/ram1/ram_array[3][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][0]} .single_bit_orig_name {ram_0/ram1/ram_array[3][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[3][0]/Q} .original_name {ram_0/ram1/ram_array[3][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][3]} .original_name {{ram_0/ram1/ram_array[1][3]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][3]} .single_bit_orig_name {ram_0/ram1/ram_array[1][3]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[1][3]/Q} .original_name {ram_0/ram1/ram_array[1][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][1]} .original_name {{i4004/sp_board/dram_array[1][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][1]} .single_bit_orig_name {i4004/sp_board/dram_array[1][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][1]/Q} .original_name {i4004/sp_board/dram_array[1][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][2]} .original_name {{ram_0/ram1/ram_array[1][2]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][2]} .single_bit_orig_name {ram_0/ram1/ram_array[1][2]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[1][2]/Q} .original_name {ram_0/ram1/ram_array[1][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][1]} .original_name {{ram_0/ram1/ram_array[1][1]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][1]} .single_bit_orig_name {ram_0/ram1/ram_array[1][1]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[1][1]/Q} .original_name {ram_0/ram1/ram_array[1][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][0]} .original_name {{ram_0/ram1/ram_array[1][0]}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][0]} .single_bit_orig_name {ram_0/ram1/ram_array[1][0]}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram1_ram_array_reg[1][0]/Q} .original_name {ram_0/ram1/ram_array[1][0]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0433_reg .original_name i4004/id_board/n0433
set_db -quiet inst:mcs4/i4004_id_board_n0433_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0433_reg .single_bit_orig_name i4004/id_board/n0433
set_db -quiet inst:mcs4/i4004_id_board_n0433_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0433_reg/Q .original_name i4004/id_board/n0433/q
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][2]} .original_name {{i4004/sp_board/dram_array[1][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][2]} .single_bit_orig_name {i4004/sp_board/dram_array[1][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][2]/Q} .original_name {i4004/sp_board/dram_array[1][2]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0425_reg .original_name i4004/id_board/n0425
set_db -quiet inst:mcs4/i4004_id_board_n0425_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0425_reg .single_bit_orig_name i4004/id_board/n0425
set_db -quiet inst:mcs4/i4004_id_board_n0425_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0425_reg/Q .original_name i4004/id_board/n0425/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][3]} .original_name {{ram_0/ram0/ram_array[19][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][3]} .single_bit_orig_name {ram_0/ram0/ram_array[19][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[19][3]/Q} .original_name {ram_0/ram0/ram_array[19][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][3]} .original_name {{i4004/sp_board/dram_array[1][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][3]} .single_bit_orig_name {i4004/sp_board/dram_array[1][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][3]/Q} .original_name {i4004/sp_board/dram_array[1][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][2]} .original_name {{ram_0/ram0/ram_array[19][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][2]} .single_bit_orig_name {ram_0/ram0/ram_array[19][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[19][2]/Q} .original_name {ram_0/ram0/ram_array[19][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][1]} .original_name {{ram_0/ram0/ram_array[19][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][1]} .single_bit_orig_name {ram_0/ram0/ram_array[19][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[19][1]/Q} .original_name {ram_0/ram0/ram_array[19][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][4]} .original_name {{i4004/sp_board/dram_array[1][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][4]} .single_bit_orig_name {i4004/sp_board/dram_array[1][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][4]/Q} .original_name {i4004/sp_board/dram_array[1][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][5]} .original_name {{i4004/sp_board/dram_array[1][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][5]} .single_bit_orig_name {i4004/sp_board/dram_array[1][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][5]/Q} .original_name {i4004/sp_board/dram_array[1][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][6]} .original_name {{i4004/sp_board/dram_array[1][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][6]} .single_bit_orig_name {i4004/sp_board/dram_array[1][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][6]/Q} .original_name {i4004/sp_board/dram_array[1][6]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[9]} .original_name {{shiftreg/shifter[9]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[9]} .single_bit_orig_name {shiftreg/shifter[9]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[9]/Q} .original_name {shiftreg/shifter[9]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][7]} .original_name {{i4004/sp_board/dram_array[1][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][7]} .single_bit_orig_name {i4004/sp_board/dram_array[1][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[1][7]/Q} .original_name {i4004/sp_board/dram_array[1][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][0]} .original_name {{i4004/sp_board/dram_array[2][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][0]} .single_bit_orig_name {i4004/sp_board/dram_array[2][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][0]/Q} .original_name {i4004/sp_board/dram_array[2][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][1]} .original_name {{i4004/sp_board/dram_array[2][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][1]} .single_bit_orig_name {i4004/sp_board/dram_array[2][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][1]/Q} .original_name {i4004/sp_board/dram_array[2][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][2]} .original_name {{i4004/sp_board/dram_array[2][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][2]} .single_bit_orig_name {i4004/sp_board/dram_array[2][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][2]/Q} .original_name {i4004/sp_board/dram_array[2][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][3]} .original_name {{i4004/sp_board/dram_array[2][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][3]} .single_bit_orig_name {i4004/sp_board/dram_array[2][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][3]/Q} .original_name {i4004/sp_board/dram_array[2][3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][4]} .original_name {{i4004/sp_board/dram_array[2][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][4]} .single_bit_orig_name {i4004/sp_board/dram_array[2][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][4]/Q} .original_name {i4004/sp_board/dram_array[2][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][5]} .original_name {{i4004/sp_board/dram_array[2][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][5]} .single_bit_orig_name {i4004/sp_board/dram_array[2][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][5]/Q} .original_name {i4004/sp_board/dram_array[2][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][6]} .original_name {{i4004/sp_board/dram_array[2][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][6]} .single_bit_orig_name {i4004/sp_board/dram_array[2][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][6]/Q} .original_name {i4004/sp_board/dram_array[2][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][7]} .original_name {{i4004/sp_board/dram_array[2][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][7]} .single_bit_orig_name {i4004/sp_board/dram_array[2][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[2][7]/Q} .original_name {i4004/sp_board/dram_array[2][7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][0]} .original_name {{i4004/sp_board/dram_array[4][0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][0]} .single_bit_orig_name {i4004/sp_board/dram_array[4][0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][0]/Q} .original_name {i4004/sp_board/dram_array[4][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][1]} .original_name {{i4004/sp_board/dram_array[4][1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][1]} .single_bit_orig_name {i4004/sp_board/dram_array[4][1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][1]/Q} .original_name {i4004/sp_board/dram_array[4][1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][2]} .original_name {{i4004/sp_board/dram_array[4][2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][2]} .single_bit_orig_name {i4004/sp_board/dram_array[4][2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][2]/Q} .original_name {i4004/sp_board/dram_array[4][2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][3]} .original_name {{i4004/sp_board/dram_array[4][3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][3]} .single_bit_orig_name {i4004/sp_board/dram_array[4][3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][3]/Q} .original_name {i4004/sp_board/dram_array[4][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][0]} .original_name {{ram_0/ram0/ram_array[19][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][0]} .single_bit_orig_name {ram_0/ram0/ram_array[19][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[19][0]/Q} .original_name {ram_0/ram0/ram_array[19][0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][5]} .original_name {{i4004/sp_board/dram_array[4][5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][5]} .single_bit_orig_name {i4004/sp_board/dram_array[4][5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][5]/Q} .original_name {i4004/sp_board/dram_array[4][5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][6]} .original_name {{i4004/sp_board/dram_array[4][6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][6]} .single_bit_orig_name {i4004/sp_board/dram_array[4][6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][6]/Q} .original_name {i4004/sp_board/dram_array[4][6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][4]} .original_name {{i4004/sp_board/dram_array[4][4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][4]} .single_bit_orig_name {i4004/sp_board/dram_array[4][4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][4]/Q} .original_name {i4004/sp_board/dram_array[4][4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][7]} .original_name {{i4004/sp_board/dram_array[4][7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][7]} .single_bit_orig_name {i4004/sp_board/dram_array[4][7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_array_reg[4][7]/Q} .original_name {i4004/sp_board/dram_array[4][7]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0405_reg .original_name i4004/id_board/n0405
set_db -quiet inst:mcs4/i4004_id_board_n0405_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0405_reg .single_bit_orig_name i4004/id_board/n0405
set_db -quiet inst:mcs4/i4004_id_board_n0405_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0405_reg/Q .original_name i4004/id_board/n0405/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][3]} .original_name {{ram_0/ram0/ram_array[17][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][3]} .single_bit_orig_name {ram_0/ram0/ram_array[17][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[17][3]/Q} .original_name {ram_0/ram0/ram_array[17][3]/q}
set_db -quiet inst:mcs4/i4004_sp_board_n0615_reg .original_name i4004/sp_board/n0615
set_db -quiet inst:mcs4/i4004_sp_board_n0615_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_n0615_reg .single_bit_orig_name i4004/sp_board/n0615
set_db -quiet inst:mcs4/i4004_sp_board_n0615_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_n0615_reg/Q .original_name i4004/sp_board/n0615/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_master_reg .original_name i4004/sp_board/reg_rfsh_0/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_master_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_0/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_0_master_reg/Q .original_name i4004/sp_board/reg_rfsh_0/master/q
set_db -quiet inst:mcs4/i4004_sp_board_n0592_reg .original_name i4004/sp_board/n0592
set_db -quiet inst:mcs4/i4004_sp_board_n0592_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_n0592_reg .single_bit_orig_name i4004/sp_board/n0592
set_db -quiet inst:mcs4/i4004_sp_board_n0592_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_n0592_reg/Q .original_name i4004/sp_board/n0592/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_master_reg .original_name i4004/sp_board/reg_rfsh_1/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_master_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_1/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_1_master_reg/Q .original_name i4004/sp_board/reg_rfsh_1/master/q
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_master_reg .original_name i4004/sp_board/reg_rfsh_2/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_master_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_master_reg .single_bit_orig_name i4004/sp_board/reg_rfsh_2/master
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_master_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_sp_board_reg_rfsh_2_master_reg/Q .original_name i4004/sp_board/reg_rfsh_2/master/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][2]} .original_name {{ram_0/ram0/ram_array[17][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][2]} .single_bit_orig_name {ram_0/ram0/ram_array[17][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[17][2]/Q} .original_name {ram_0/ram0/ram_array[17][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][1]} .original_name {{ram_0/ram0/ram_array[17][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][1]} .single_bit_orig_name {ram_0/ram0/ram_array[17][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[17][1]/Q} .original_name {ram_0/ram0/ram_array[17][1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_n0278_reg .original_name i4004/tio_board/n0278
set_db -quiet inst:mcs4/i4004_tio_board_n0278_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_n0278_reg .single_bit_orig_name i4004/tio_board/n0278
set_db -quiet inst:mcs4/i4004_tio_board_n0278_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_n0278_reg/Q .original_name i4004/tio_board/n0278/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][0]} .original_name {{ram_0/ram0/ram_array[17][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][0]} .single_bit_orig_name {ram_0/ram0/ram_array[17][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[17][0]/Q} .original_name {ram_0/ram0/ram_array[17][0]/q}
set_db -quiet inst:mcs4/i4004_tio_board_n0707_reg .original_name i4004/tio_board/n0707
set_db -quiet inst:mcs4/i4004_tio_board_n0707_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_n0707_reg .single_bit_orig_name i4004/tio_board/n0707
set_db -quiet inst:mcs4/i4004_tio_board_n0707_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_n0707_reg/Q .original_name i4004/tio_board/n0707/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a11_reg .original_name i4004/tio_board/timing_generator/a11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a11_reg .single_bit_orig_name i4004/tio_board/timing_generator/a11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a11_reg/Q .original_name i4004/tio_board/timing_generator/a11/q
set_db -quiet inst:mcs4/i4004_id_board_n0414_reg .original_name i4004/id_board/n0414
set_db -quiet inst:mcs4/i4004_id_board_n0414_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0414_reg .single_bit_orig_name i4004/id_board/n0414
set_db -quiet inst:mcs4/i4004_id_board_n0414_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0414_reg/Q .original_name i4004/id_board/n0414/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a21_reg .original_name i4004/tio_board/timing_generator/a21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a21_reg .single_bit_orig_name i4004/tio_board/timing_generator/a21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a21_reg/Q .original_name i4004/tio_board/timing_generator/a21/q
set_db -quiet inst:mcs4/i4004_id_board_n0362_reg .original_name i4004/id_board/n0362
set_db -quiet inst:mcs4/i4004_id_board_n0362_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0362_reg .single_bit_orig_name i4004/id_board/n0362
set_db -quiet inst:mcs4/i4004_id_board_n0362_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0362_reg/Q .original_name i4004/id_board/n0362/q
set_db -quiet pin:mcs4/i4004_id_board_n0362_reg/QN .original_name i4004/id_board/n0362/q
set_db -quiet inst:mcs4/i4004_id_board_n0380_reg .original_name i4004/id_board/n0380
set_db -quiet inst:mcs4/i4004_id_board_n0380_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0380_reg .single_bit_orig_name i4004/id_board/n0380
set_db -quiet inst:mcs4/i4004_id_board_n0380_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0380_reg/Q .original_name i4004/id_board/n0380/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m11_reg .original_name i4004/tio_board/timing_generator/m11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m11_reg .single_bit_orig_name i4004/tio_board/timing_generator/m11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_m11_reg/Q .original_name i4004/tio_board/timing_generator/m11/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][3]} .original_name {{ram_0/ram0/ram_array[13][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][3]} .single_bit_orig_name {ram_0/ram0/ram_array[13][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[13][3]/Q} .original_name {ram_0/ram0/ram_array[13][3]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a31_reg .original_name i4004/tio_board/timing_generator/a31
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a31_reg .single_bit_orig_name i4004/tio_board/timing_generator/a31
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a31_reg/Q .original_name i4004/tio_board/timing_generator/a31/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][2]} .original_name {{ram_0/ram0/ram_array[13][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][2]} .single_bit_orig_name {ram_0/ram0/ram_array[13][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[13][2]/Q} .original_name {ram_0/ram0/ram_array[13][2]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m21_reg .original_name i4004/tio_board/timing_generator/m21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m21_reg .single_bit_orig_name i4004/tio_board/timing_generator/m21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_m21_reg/Q .original_name i4004/tio_board/timing_generator/m21/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x11_reg .original_name i4004/tio_board/timing_generator/x11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x11_reg .single_bit_orig_name i4004/tio_board/timing_generator/x11
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x11_reg/Q .original_name i4004/tio_board/timing_generator/x11/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][1]} .original_name {{ram_0/ram0/ram_array[13][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][1]} .single_bit_orig_name {ram_0/ram0/ram_array[13][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[13][1]/Q} .original_name {ram_0/ram0/ram_array[13][1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x21_reg .original_name i4004/tio_board/timing_generator/x21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x21_reg .single_bit_orig_name i4004/tio_board/timing_generator/x21
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x21_reg/Q .original_name i4004/tio_board/timing_generator/x21/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][0]} .original_name {{ram_0/ram0/ram_array[13][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][0]} .single_bit_orig_name {ram_0/ram0/ram_array[13][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[13][0]/Q} .original_name {ram_0/ram0/ram_array[13][0]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0360_reg .original_name i4004/id_board/n0360
set_db -quiet inst:mcs4/i4004_id_board_n0360_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0360_reg .single_bit_orig_name i4004/id_board/n0360
set_db -quiet inst:mcs4/i4004_id_board_n0360_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0360_reg/Q .original_name i4004/id_board/n0360/q
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][0]} .original_name {{ram_0/ram0/ram_array[2][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][0]} .single_bit_orig_name {ram_0/ram0/ram_array[2][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[2][0]/Q} .original_name {ram_0/ram0/ram_array[2][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][0]} .original_name {{ram_0/ram0/ram_array[0][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][0]} .single_bit_orig_name {ram_0/ram0/ram_array[0][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[0][0]/Q} .original_name {ram_0/ram0/ram_array[0][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][1]} .original_name {{ram_0/ram0/ram_array[0][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][1]} .single_bit_orig_name {ram_0/ram0/ram_array[0][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[0][1]/Q} .original_name {ram_0/ram0/ram_array[0][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][2]} .original_name {{ram_0/ram0/ram_array[0][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][2]} .single_bit_orig_name {ram_0/ram0/ram_array[0][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[0][2]/Q} .original_name {ram_0/ram0/ram_array[0][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][3]} .original_name {{ram_0/ram0/ram_array[0][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][3]} .single_bit_orig_name {ram_0/ram0/ram_array[0][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[0][3]/Q} .original_name {ram_0/ram0/ram_array[0][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][0]} .original_name {{ram_0/ram0/ram_array[1][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][0]} .single_bit_orig_name {ram_0/ram0/ram_array[1][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[1][0]/Q} .original_name {ram_0/ram0/ram_array[1][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][1]} .original_name {{ram_0/ram0/ram_array[1][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][1]} .single_bit_orig_name {ram_0/ram0/ram_array[1][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[1][1]/Q} .original_name {ram_0/ram0/ram_array[1][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][2]} .original_name {{ram_0/ram0/ram_array[1][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][2]} .single_bit_orig_name {ram_0/ram0/ram_array[1][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[1][2]/Q} .original_name {ram_0/ram0/ram_array[1][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][3]} .original_name {{ram_0/ram0/ram_array[1][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][3]} .single_bit_orig_name {ram_0/ram0/ram_array[1][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[1][3]/Q} .original_name {ram_0/ram0/ram_array[1][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][1]} .original_name {{ram_0/ram0/ram_array[2][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][1]} .single_bit_orig_name {ram_0/ram0/ram_array[2][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[2][1]/Q} .original_name {ram_0/ram0/ram_array[2][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][2]} .original_name {{ram_0/ram0/ram_array[2][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][2]} .single_bit_orig_name {ram_0/ram0/ram_array[2][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[2][2]/Q} .original_name {ram_0/ram0/ram_array[2][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][3]} .original_name {{ram_0/ram0/ram_array[2][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][3]} .single_bit_orig_name {ram_0/ram0/ram_array[2][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[2][3]/Q} .original_name {ram_0/ram0/ram_array[2][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][0]} .original_name {{ram_0/ram0/ram_array[3][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][0]} .single_bit_orig_name {ram_0/ram0/ram_array[3][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[3][0]/Q} .original_name {ram_0/ram0/ram_array[3][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][1]} .original_name {{ram_0/ram0/ram_array[3][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][1]} .single_bit_orig_name {ram_0/ram0/ram_array[3][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[3][1]/Q} .original_name {ram_0/ram0/ram_array[3][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][2]} .original_name {{ram_0/ram0/ram_array[3][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][2]} .single_bit_orig_name {ram_0/ram0/ram_array[3][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[3][2]/Q} .original_name {ram_0/ram0/ram_array[3][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][3]} .original_name {{ram_0/ram0/ram_array[3][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][3]} .single_bit_orig_name {ram_0/ram0/ram_array[3][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[3][3]/Q} .original_name {ram_0/ram0/ram_array[3][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][0]} .original_name {{ram_0/ram0/ram_array[4][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][0]} .single_bit_orig_name {ram_0/ram0/ram_array[4][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[4][0]/Q} .original_name {ram_0/ram0/ram_array[4][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][1]} .original_name {{ram_0/ram0/ram_array[4][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][1]} .single_bit_orig_name {ram_0/ram0/ram_array[4][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[4][1]/Q} .original_name {ram_0/ram0/ram_array[4][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][2]} .original_name {{ram_0/ram0/ram_array[4][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][2]} .single_bit_orig_name {ram_0/ram0/ram_array[4][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[4][2]/Q} .original_name {ram_0/ram0/ram_array[4][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][3]} .original_name {{ram_0/ram0/ram_array[4][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][3]} .single_bit_orig_name {ram_0/ram0/ram_array[4][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[4][3]/Q} .original_name {ram_0/ram0/ram_array[4][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][0]} .original_name {{ram_0/ram0/ram_array[5][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][0]} .single_bit_orig_name {ram_0/ram0/ram_array[5][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[5][0]/Q} .original_name {ram_0/ram0/ram_array[5][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][1]} .original_name {{ram_0/ram0/ram_array[5][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][1]} .single_bit_orig_name {ram_0/ram0/ram_array[5][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[5][1]/Q} .original_name {ram_0/ram0/ram_array[5][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][2]} .original_name {{ram_0/ram0/ram_array[5][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][2]} .single_bit_orig_name {ram_0/ram0/ram_array[5][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[5][2]/Q} .original_name {ram_0/ram0/ram_array[5][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][0]} .original_name {{ram_0/ram0/ram_array[6][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][0]} .single_bit_orig_name {ram_0/ram0/ram_array[6][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[6][0]/Q} .original_name {ram_0/ram0/ram_array[6][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][1]} .original_name {{ram_0/ram0/ram_array[6][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][1]} .single_bit_orig_name {ram_0/ram0/ram_array[6][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[6][1]/Q} .original_name {ram_0/ram0/ram_array[6][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][2]} .original_name {{ram_0/ram0/ram_array[6][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][2]} .single_bit_orig_name {ram_0/ram0/ram_array[6][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[6][2]/Q} .original_name {ram_0/ram0/ram_array[6][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][3]} .original_name {{ram_0/ram0/ram_array[6][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][3]} .single_bit_orig_name {ram_0/ram0/ram_array[6][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[6][3]/Q} .original_name {ram_0/ram0/ram_array[6][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][0]} .original_name {{ram_0/ram0/ram_array[7][0]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][0]} .single_bit_orig_name {ram_0/ram0/ram_array[7][0]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[7][0]/Q} .original_name {ram_0/ram0/ram_array[7][0]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][1]} .original_name {{ram_0/ram0/ram_array[7][1]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][1]} .single_bit_orig_name {ram_0/ram0/ram_array[7][1]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[7][1]/Q} .original_name {ram_0/ram0/ram_array[7][1]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][3]} .original_name {{ram_0/ram0/ram_array[5][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][3]} .single_bit_orig_name {ram_0/ram0/ram_array[5][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[5][3]/Q} .original_name {ram_0/ram0/ram_array[5][3]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][2]} .original_name {{ram_0/ram0/ram_array[7][2]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][2]} .single_bit_orig_name {ram_0/ram0/ram_array[7][2]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[7][2]/Q} .original_name {ram_0/ram0/ram_array[7][2]/q}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][3]} .original_name {{ram_0/ram0/ram_array[7][3]}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][3]} .single_bit_orig_name {ram_0/ram0/ram_array[7][3]}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_ram0_ram_array_reg[7][3]/Q} .original_name {ram_0/ram0/ram_array[7][3]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[1]} .original_name {{shiftreg/shifter[1]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[1]} .single_bit_orig_name {shiftreg/shifter[1]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[1]/Q} .original_name {shiftreg/shifter[1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x31_reg .original_name i4004/tio_board/timing_generator/x31
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x31_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x31_reg .single_bit_orig_name i4004/tio_board/timing_generator/x31
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x31_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x31_reg/Q .original_name i4004/tio_board/timing_generator/x31/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_a12_reg .original_name ram_0/timing_recovery/a12
set_db -quiet inst:mcs4/ram_0_timing_recovery_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_a12_reg .single_bit_orig_name ram_0/timing_recovery/a12
set_db -quiet inst:mcs4/ram_0_timing_recovery_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_a12_reg/Q .original_name ram_0/timing_recovery/a12/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_x32_reg .original_name ram_0/timing_recovery/x32
set_db -quiet inst:mcs4/ram_0_timing_recovery_x32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x32_reg .single_bit_orig_name ram_0/timing_recovery/x32
set_db -quiet inst:mcs4/ram_0_timing_recovery_x32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x32_reg/Q .original_name ram_0/timing_recovery/x32/q
set_db -quiet inst:mcs4/rom_0_n0161_reg .original_name rom_0/n0161
set_db -quiet inst:mcs4/rom_0_n0161_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_n0161_reg .single_bit_orig_name rom_0/n0161
set_db -quiet inst:mcs4/rom_0_n0161_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_n0161_reg/Q .original_name rom_0/n0161/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_a32_reg .original_name rom_0/timing_recovery/a32
set_db -quiet inst:mcs4/rom_0_timing_recovery_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a32_reg .single_bit_orig_name rom_0/timing_recovery/a32
set_db -quiet inst:mcs4/rom_0_timing_recovery_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a32_reg/Q .original_name rom_0/timing_recovery/a32/q
set_db -quiet inst:mcs4/i4004_id_board_n0397_reg .original_name i4004/id_board/n0397
set_db -quiet inst:mcs4/i4004_id_board_n0397_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0397_reg .single_bit_orig_name i4004/id_board/n0397
set_db -quiet inst:mcs4/i4004_id_board_n0397_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0397_reg/Q .original_name i4004/id_board/n0397/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_m22_reg .original_name rom_0/timing_recovery/m22
set_db -quiet inst:mcs4/rom_0_timing_recovery_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_m22_reg .single_bit_orig_name rom_0/timing_recovery/m22
set_db -quiet inst:mcs4/rom_0_timing_recovery_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_m22_reg/Q .original_name rom_0/timing_recovery/m22/q
set_db -quiet inst:mcs4/rom_1_n0161_reg .original_name rom_1/n0161
set_db -quiet inst:mcs4/rom_1_n0161_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_1_n0161_reg .single_bit_orig_name rom_1/n0161
set_db -quiet inst:mcs4/rom_1_n0161_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_1_n0161_reg/Q .original_name rom_1/n0161/q
set_db -quiet inst:mcs4/shiftreg_cp_delayed_reg .original_name shiftreg/cp_delayed
set_db -quiet inst:mcs4/shiftreg_cp_delayed_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/shiftreg_cp_delayed_reg .single_bit_orig_name shiftreg/cp_delayed
set_db -quiet inst:mcs4/shiftreg_cp_delayed_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/shiftreg_cp_delayed_reg/Q .original_name shiftreg/cp_delayed/q
set_db -quiet inst:mcs4/i4004_tio_board_n0685_reg .original_name i4004/tio_board/n0685
set_db -quiet inst:mcs4/i4004_tio_board_n0685_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_n0685_reg .single_bit_orig_name i4004/tio_board/n0685
set_db -quiet inst:mcs4/i4004_tio_board_n0685_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_n0685_reg/Q .original_name i4004/tio_board/n0685/q
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[0]} .original_name {{shiftreg/shifter[0]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[0]} .single_bit_orig_name {shiftreg/shifter[0]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[0]/Q} .original_name {shiftreg/shifter[0]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[2]} .original_name {{shiftreg/shifter[2]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[2]} .single_bit_orig_name {shiftreg/shifter[2]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[2]/Q} .original_name {shiftreg/shifter[2]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[3]} .original_name {{shiftreg/shifter[3]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[3]} .single_bit_orig_name {shiftreg/shifter[3]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[3]/Q} .original_name {shiftreg/shifter[3]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[4]} .original_name {{shiftreg/shifter[4]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[4]} .single_bit_orig_name {shiftreg/shifter[4]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[4]/Q} .original_name {shiftreg/shifter[4]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[5]} .original_name {{shiftreg/shifter[5]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[5]} .single_bit_orig_name {shiftreg/shifter[5]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[5]/Q} .original_name {shiftreg/shifter[5]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[8]} .original_name {{shiftreg/shifter[8]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[8]} .single_bit_orig_name {shiftreg/shifter[8]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[8]/Q} .original_name {shiftreg/shifter[8]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[7]} .original_name {{shiftreg/shifter[7]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[7]} .single_bit_orig_name {shiftreg/shifter[7]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[7]/Q} .original_name {shiftreg/shifter[7]/q}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[6]} .original_name {{shiftreg/shifter[6]}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[6]} .single_bit_orig_name {shiftreg/shifter[6]}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_shifter_reg[6]/Q} .original_name {shiftreg/shifter[6]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[4]} .original_name {{ram_0/rfsh_addr[4]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[4]} .single_bit_orig_name {ram_0/rfsh_addr[4]}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[4]/Q} .original_name {ram_0/rfsh_addr[4]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x22_reg .original_name ram_0/timing_recovery/x22
set_db -quiet inst:mcs4/ram_0_timing_recovery_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_x22_reg .single_bit_orig_name ram_0/timing_recovery/x22
set_db -quiet inst:mcs4/ram_0_timing_recovery_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_x22_reg/Q .original_name ram_0/timing_recovery/x22/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_m11_reg .original_name rom_0/timing_recovery/m11
set_db -quiet inst:mcs4/rom_0_timing_recovery_m11_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_m11_reg .single_bit_orig_name rom_0/timing_recovery/m11
set_db -quiet inst:mcs4/rom_0_timing_recovery_m11_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_m11_reg/Q .original_name rom_0/timing_recovery/m11/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_m21_reg .original_name rom_0/timing_recovery/m21
set_db -quiet inst:mcs4/rom_0_timing_recovery_m21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_m21_reg .single_bit_orig_name rom_0/timing_recovery/m21
set_db -quiet inst:mcs4/rom_0_timing_recovery_m21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_m21_reg/Q .original_name rom_0/timing_recovery/m21/q
set_db -quiet inst:mcs4/rom_0_timing_recovery_x21_reg .original_name rom_0/timing_recovery/x21
set_db -quiet inst:mcs4/rom_0_timing_recovery_x21_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_x21_reg .single_bit_orig_name rom_0/timing_recovery/x21
set_db -quiet inst:mcs4/rom_0_timing_recovery_x21_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_x21_reg/Q .original_name rom_0/timing_recovery/x21/q
set_db -quiet inst:mcs4/i4004_tio_board_L_reg .original_name i4004/tio_board/L
set_db -quiet inst:mcs4/i4004_tio_board_L_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_L_reg .single_bit_orig_name i4004/tio_board/L
set_db -quiet inst:mcs4/i4004_tio_board_L_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_L_reg/Q .original_name i4004/tio_board/L/q
set_db -quiet pin:mcs4/i4004_tio_board_L_reg/QN .original_name i4004/tio_board/L/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m22_reg .original_name i4004/tio_board/timing_generator/m22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m22_reg .single_bit_orig_name i4004/tio_board/timing_generator/m22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_m22_reg/Q .original_name i4004/tio_board/timing_generator/m22/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x12_reg .original_name i4004/tio_board/timing_generator/x12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x12_reg .single_bit_orig_name i4004/tio_board/timing_generator/x12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x12_reg/Q .original_name i4004/tio_board/timing_generator/x12/q
set_db -quiet inst:mcs4/ram_0_ram_sel_reg .original_name ram_0/ram_sel
set_db -quiet inst:mcs4/ram_0_ram_sel_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_ram_sel_reg .single_bit_orig_name ram_0/ram_sel
set_db -quiet inst:mcs4/ram_0_ram_sel_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_ram_sel_reg/Q .original_name ram_0/ram_sel/q
set_db -quiet pin:mcs4/ram_0_ram_sel_reg/QN .original_name ram_0/ram_sel/q
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[1]} .original_name {{i4004/alu_board/acc[1]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[1]} .single_bit_orig_name {i4004/alu_board/acc[1]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_reg[1]/Q} .original_name {i4004/alu_board/acc[1]/q}
set_db -quiet {pin:mcs4/i4004_alu_board_acc_reg[1]/QN} .original_name {i4004/alu_board/acc[1]/q}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a12_reg .original_name rom_0/timing_recovery/a12
set_db -quiet inst:mcs4/rom_0_timing_recovery_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_timing_recovery_a12_reg .single_bit_orig_name rom_0/timing_recovery/a12
set_db -quiet inst:mcs4/rom_0_timing_recovery_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_timing_recovery_a12_reg/Q .original_name rom_0/timing_recovery/a12/q
set_db -quiet pin:mcs4/rom_0_timing_recovery_a12_reg/QN .original_name rom_0/timing_recovery/a12/q
set_db -quiet inst:mcs4/ram_0_io_reg .original_name ram_0/io
set_db -quiet inst:mcs4/ram_0_io_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_io_reg .single_bit_orig_name ram_0/io
set_db -quiet inst:mcs4/ram_0_io_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_io_reg/Q .original_name ram_0/io/q
set_db -quiet pin:mcs4/ram_0_io_reg/QN .original_name ram_0/io/q
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[2]} .original_name {{i4004/alu_board/acc_out[2]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[2]} .single_bit_orig_name {i4004/alu_board/acc_out[2]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[2]/Q} .original_name {i4004/alu_board/acc_out[2]/q}
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[2]/QN} .original_name {i4004/alu_board/acc_out[2]/q}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[2]} .original_name {{clockgen/clockdiv[2]}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[2]} .single_bit_orig_name {clockgen/clockdiv[2]}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[2]/Q} .original_name {clockgen/clockdiv[2]/q}
set_db -quiet {pin:mcs4/clockgen_clockdiv_reg[2]/QN} .original_name {clockgen/clockdiv[2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[1]} .original_name {{i4004/ip_board/row[1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[1]} .single_bit_orig_name {i4004/ip_board/row[1]}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_row_reg[1]/Q} .original_name {i4004/ip_board/row[1]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_row_reg[1]/QN} .original_name {i4004/ip_board/row[1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a32_reg .original_name i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a32_reg .single_bit_orig_name i4004/tio_board/timing_generator/a32
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a32_reg/Q .original_name i4004/tio_board/timing_generator/a32/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a32_reg/QN .original_name i4004/tio_board/timing_generator/a32/q
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[1]} .original_name {{i4004/alu_board/acc_out[1]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[1]} .single_bit_orig_name {i4004/alu_board/acc_out[1]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[1]/Q} .original_name {i4004/alu_board/acc_out[1]/q}
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[1]/QN} .original_name {i4004/alu_board/acc_out[1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a12_reg .original_name i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a12_reg .single_bit_orig_name i4004/tio_board/timing_generator/a12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a12_reg/Q .original_name i4004/tio_board/timing_generator/a12/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a12_reg/QN .original_name i4004/tio_board/timing_generator/a12/q
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a22_reg .original_name i4004/tio_board/timing_generator/a22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a22_reg .single_bit_orig_name i4004/tio_board/timing_generator/a22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a22_reg/Q .original_name i4004/tio_board/timing_generator/a22/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_a22_reg/QN .original_name i4004/tio_board/timing_generator/a22/q
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[2]} .original_name {{i4004/sp_board/row[2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[2]} .single_bit_orig_name {i4004/sp_board/row[2]}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[2]/Q} .original_name {i4004/sp_board/row[2]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[2]/QN} .original_name {i4004/sp_board/row[2]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[1]} .original_name {{i4004/sp_board/row[1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[1]} .single_bit_orig_name {i4004/sp_board/row[1]}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[1]/Q} .original_name {i4004/sp_board/row[1]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[1]/QN} .original_name {i4004/sp_board/row[1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[0]} .original_name {{i4004/sp_board/row[0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[0]} .single_bit_orig_name {i4004/sp_board/row[0]}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[0]/Q} .original_name {i4004/sp_board/row[0]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_row_reg[0]/QN} .original_name {i4004/sp_board/row[0]/q}
set_db -quiet {inst:mcs4/ram_0_opa_reg[2]} .original_name {{ram_0/opa[2]}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_opa_reg[2]} .single_bit_orig_name {ram_0/opa[2]}
set_db -quiet {inst:mcs4/ram_0_opa_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_opa_reg[2]/Q} .original_name {ram_0/opa[2]/q}
set_db -quiet {pin:mcs4/ram_0_opa_reg[2]/QN} .original_name {ram_0/opa[2]/q}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[1]} .original_name {{i4004/id_board/opa[1]}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[1]} .single_bit_orig_name {i4004/id_board/opa[1]}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[1]/Q} .original_name {i4004/id_board/opa[1]/q}
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[1]/QN} .original_name {i4004/id_board/opa[1]/q}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[0]} .original_name {{i4004/id_board/opr[0]}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[0]} .single_bit_orig_name {i4004/id_board/opr[0]}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[0]/Q} .original_name {i4004/id_board/opr[0]/q}
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[0]/QN} .original_name {i4004/id_board/opr[0]/q}
set_db -quiet inst:mcs4/i4004_id_board_n0343_reg .original_name i4004/id_board/n0343
set_db -quiet inst:mcs4/i4004_id_board_n0343_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_id_board_n0343_reg .single_bit_orig_name i4004/id_board/n0343
set_db -quiet inst:mcs4/i4004_id_board_n0343_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_id_board_n0343_reg/Q .original_name i4004/id_board/n0343/q
set_db -quiet pin:mcs4/i4004_id_board_n0343_reg/QN .original_name i4004/id_board/n0343/q
set_db -quiet inst:mcs4/clockgen_clk1_reg .original_name clockgen/clk1
set_db -quiet inst:mcs4/clockgen_clk1_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/clockgen_clk1_reg .single_bit_orig_name clockgen/clk1
set_db -quiet inst:mcs4/clockgen_clk1_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/clockgen_clk1_reg/Q .original_name clockgen/clk1/q
set_db -quiet pin:mcs4/clockgen_clk1_reg/QN .original_name clockgen/clk1/q
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[1]} .original_name {{shiftreg/cp_delay[1]}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[1]} .single_bit_orig_name {shiftreg/cp_delay[1]}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[1]/Q} .original_name {shiftreg/cp_delay[1]/q}
set_db -quiet {pin:mcs4/shiftreg_cp_delay_reg[1]/QN} .original_name {shiftreg/cp_delay[1]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[3]} .original_name {{ram_0/rfsh_addr[3]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[3]} .single_bit_orig_name {ram_0/rfsh_addr[3]}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[3]/Q} .original_name {ram_0/rfsh_addr[3]/q}
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[3]/QN} .original_name {ram_0/rfsh_addr[3]/q}
set_db -quiet {inst:mcs4/ram_0_opa_reg[0]} .original_name {{ram_0/opa[0]}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_opa_reg[0]} .single_bit_orig_name {ram_0/opa[0]}
set_db -quiet {inst:mcs4/ram_0_opa_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_opa_reg[0]/Q} .original_name {ram_0/opa[0]/q}
set_db -quiet {pin:mcs4/ram_0_opa_reg[0]/QN} .original_name {ram_0/opa[0]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[0]} .original_name {{ram_0/rfsh_addr[0]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[0]} .single_bit_orig_name {ram_0/rfsh_addr[0]}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[0]/Q} .original_name {ram_0/rfsh_addr[0]/q}
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[0]/QN} .original_name {ram_0/rfsh_addr[0]/q}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[3]} .original_name {{i4004/alu_board/acc_out[3]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[3]} .single_bit_orig_name {i4004/alu_board/acc_out[3]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[3]/Q} .original_name {i4004/alu_board/acc_out[3]/q}
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[3]/QN} .original_name {i4004/alu_board/acc_out[3]/q}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[2]} .original_name {{ram_0/rfsh_addr[2]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[2]} .single_bit_orig_name {ram_0/rfsh_addr[2]}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[2]/Q} .original_name {ram_0/rfsh_addr[2]/q}
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[2]/QN} .original_name {ram_0/rfsh_addr[2]/q}
set_db -quiet inst:mcs4/i4004_alu_board_cy_1_reg .original_name i4004/alu_board/cy_1
set_db -quiet inst:mcs4/i4004_alu_board_cy_1_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_cy_1_reg .single_bit_orig_name i4004/alu_board/cy_1
set_db -quiet inst:mcs4/i4004_alu_board_cy_1_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_cy_1_reg/Q .original_name i4004/alu_board/cy_1/q
set_db -quiet pin:mcs4/i4004_alu_board_cy_1_reg/QN .original_name i4004/alu_board/cy_1/q
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[0]} .original_name {{i4004/alu_board/acc_out[0]}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[0]} .single_bit_orig_name {i4004/alu_board/acc_out[0]}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[0]/Q} .original_name {i4004/alu_board/acc_out[0]/q}
set_db -quiet {pin:mcs4/i4004_alu_board_acc_out_reg[0]/QN} .original_name {i4004/alu_board/acc_out[0]/q}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[1]} .original_name {{ram_0/reg_num[1]}}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[1]} .single_bit_orig_name {ram_0/reg_num[1]}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_reg_num_reg[1]/Q} .original_name {ram_0/reg_num[1]/q}
set_db -quiet {pin:mcs4/ram_0_reg_num_reg[1]/QN} .original_name {ram_0/reg_num[1]/q}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[0]} .original_name {{ram_0/reg_num[0]}}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[0]} .single_bit_orig_name {ram_0/reg_num[0]}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_reg_num_reg[0]/Q} .original_name {ram_0/reg_num[0]/q}
set_db -quiet {pin:mcs4/ram_0_reg_num_reg[0]/QN} .original_name {ram_0/reg_num[0]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x22_reg .original_name i4004/tio_board/timing_generator/x22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x22_reg .single_bit_orig_name i4004/tio_board/timing_generator/x22
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x22_reg/Q .original_name i4004/tio_board/timing_generator/x22/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x22_reg/QN .original_name i4004/tio_board/timing_generator/x22/q
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[1]} .original_name {{i4004/id_board/opr[1]}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[1]} .single_bit_orig_name {i4004/id_board/opr[1]}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[1]/Q} .original_name {i4004/id_board/opr[1]/q}
set_db -quiet {pin:mcs4/i4004_id_board_opr_reg[1]/QN} .original_name {i4004/id_board/opr[1]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x32_reg .original_name i4004/tio_board/timing_generator/x32
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x32_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x32_reg .single_bit_orig_name i4004/tio_board/timing_generator/x32
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x32_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x32_reg/Q .original_name i4004/tio_board/timing_generator/x32/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_x32_reg/QN .original_name i4004/tio_board/timing_generator/x32/q
set_db -quiet inst:mcs4/ram_0_timing_recovery_m22_reg .original_name ram_0/timing_recovery/m22
set_db -quiet inst:mcs4/ram_0_timing_recovery_m22_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_m22_reg .single_bit_orig_name ram_0/timing_recovery/m22
set_db -quiet inst:mcs4/ram_0_timing_recovery_m22_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_m22_reg/Q .original_name ram_0/timing_recovery/m22/q
set_db -quiet pin:mcs4/ram_0_timing_recovery_m22_reg/QN .original_name ram_0/timing_recovery/m22/q
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[3]} .original_name {{i4004/id_board/opa[3]}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[3]} .single_bit_orig_name {i4004/id_board/opa[3]}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[3]/Q} .original_name {i4004/id_board/opa[3]/q}
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[3]/QN} .original_name {i4004/id_board/opa[3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[0]} .original_name {{i4004/ip_board/row[0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[0]} .single_bit_orig_name {i4004/ip_board/row[0]}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_row_reg[0]/Q} .original_name {i4004/ip_board/row[0]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_row_reg[0]/QN} .original_name {i4004/ip_board/row[0]/q}
set_db -quiet inst:mcs4/i4004_tio_board_poc_reg .original_name i4004/tio_board/poc
set_db -quiet inst:mcs4/i4004_tio_board_poc_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_poc_reg .single_bit_orig_name i4004/tio_board/poc
set_db -quiet inst:mcs4/i4004_tio_board_poc_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_poc_reg/Q .original_name i4004/tio_board/poc/q
set_db -quiet pin:mcs4/i4004_tio_board_poc_reg/QN .original_name i4004/tio_board/poc/q
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[0]} .original_name {{i4004/id_board/opa[0]}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[0]} .single_bit_orig_name {i4004/id_board/opa[0]}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[0]/Q} .original_name {i4004/id_board/opa[0]/q}
set_db -quiet {pin:mcs4/i4004_id_board_opa_reg[0]/QN} .original_name {i4004/id_board/opa[0]/q}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m12_reg .original_name i4004/tio_board/timing_generator/m12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m12_reg .single_bit_orig_name i4004/tio_board/timing_generator/m12
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_m12_reg/Q .original_name i4004/tio_board/timing_generator/m12/q
set_db -quiet pin:mcs4/i4004_tio_board_timing_generator_m12_reg/QN .original_name i4004/tio_board/timing_generator/m12/q
set_db -quiet inst:mcs4/rom_1_n0128_reg .original_name rom_1/n0128
set_db -quiet inst:mcs4/rom_1_n0128_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_1_n0128_reg .single_bit_orig_name rom_1/n0128
set_db -quiet inst:mcs4/rom_1_n0128_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_1_n0128_reg/Q .original_name rom_1/n0128/q
set_db -quiet inst:mcs4/rom_0_n0128_reg .original_name rom_0/n0128
set_db -quiet inst:mcs4/rom_0_n0128_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/rom_0_n0128_reg .single_bit_orig_name rom_0/n0128
set_db -quiet inst:mcs4/rom_0_n0128_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/rom_0_n0128_reg/Q .original_name rom_0/n0128/q
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[1]} .original_name {{ram_0/rfsh_addr[1]}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[1]} .single_bit_orig_name {ram_0/rfsh_addr[1]}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/ram_0_rfsh_addr_reg[1]/Q} .original_name {ram_0/rfsh_addr[1]/q}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m12_reg .original_name ram_0/timing_recovery/m12
set_db -quiet inst:mcs4/ram_0_timing_recovery_m12_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/ram_0_timing_recovery_m12_reg .single_bit_orig_name ram_0/timing_recovery/m12
set_db -quiet inst:mcs4/ram_0_timing_recovery_m12_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/ram_0_timing_recovery_m12_reg/Q .original_name ram_0/timing_recovery/m12/q
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[6]} .original_name {{i4004/sp_board/dram_temp[6]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[6]} .single_bit_orig_name {i4004/sp_board/dram_temp[6]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[6]/Q} .original_name {i4004/sp_board/dram_temp[6]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[6]/QN} .original_name {i4004/sp_board/dram_temp[6]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[7]} .original_name {{i4004/sp_board/dram_temp[7]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[7]} .single_bit_orig_name {i4004/sp_board/dram_temp[7]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[7]/Q} .original_name {i4004/sp_board/dram_temp[7]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[7]/QN} .original_name {i4004/sp_board/dram_temp[7]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[0]} .original_name {{i4004/sp_board/dram_temp[0]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[0]} .single_bit_orig_name {i4004/sp_board/dram_temp[0]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[0]/Q} .original_name {i4004/sp_board/dram_temp[0]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[0]/QN} .original_name {i4004/sp_board/dram_temp[0]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[1]} .original_name {{i4004/sp_board/dram_temp[1]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[1]} .single_bit_orig_name {i4004/sp_board/dram_temp[1]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[1]/Q} .original_name {i4004/sp_board/dram_temp[1]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[1]/QN} .original_name {i4004/sp_board/dram_temp[1]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[3]} .original_name {{i4004/sp_board/dram_temp[3]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[3]} .single_bit_orig_name {i4004/sp_board/dram_temp[3]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[3]/Q} .original_name {i4004/sp_board/dram_temp[3]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[3]/QN} .original_name {i4004/sp_board/dram_temp[3]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[4]} .original_name {{i4004/sp_board/dram_temp[4]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[4]} .single_bit_orig_name {i4004/sp_board/dram_temp[4]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[4]/Q} .original_name {i4004/sp_board/dram_temp[4]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[4]/QN} .original_name {i4004/sp_board/dram_temp[4]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[5]} .original_name {{i4004/sp_board/dram_temp[5]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[5]} .single_bit_orig_name {i4004/sp_board/dram_temp[5]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[5]/Q} .original_name {i4004/sp_board/dram_temp[5]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[5]/QN} .original_name {i4004/sp_board/dram_temp[5]/q}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[2]} .original_name {{i4004/sp_board/dram_temp[2]}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[2]} .single_bit_orig_name {i4004/sp_board/dram_temp[2]}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[2]/Q} .original_name {i4004/sp_board/dram_temp[2]/q}
set_db -quiet {pin:mcs4/i4004_sp_board_dram_temp_reg[2]/QN} .original_name {i4004/sp_board/dram_temp[2]/q}
set_db -quiet inst:mcs4/i4004_alu_board_n0550_reg .original_name i4004/alu_board/n0550
set_db -quiet inst:mcs4/i4004_alu_board_n0550_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0550_reg .single_bit_orig_name i4004/alu_board/n0550
set_db -quiet inst:mcs4/i4004_alu_board_n0550_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0550_reg/Q .original_name i4004/alu_board/n0550/q
set_db -quiet pin:mcs4/i4004_alu_board_n0550_reg/QN .original_name i4004/alu_board/n0550/q
set_db -quiet inst:mcs4/i4004_alu_board_n0871_reg .original_name i4004/alu_board/n0871
set_db -quiet inst:mcs4/i4004_alu_board_n0871_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0871_reg .single_bit_orig_name i4004/alu_board/n0871
set_db -quiet inst:mcs4/i4004_alu_board_n0871_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0871_reg/Q .original_name i4004/alu_board/n0871/q
set_db -quiet pin:mcs4/i4004_alu_board_n0871_reg/QN .original_name i4004/alu_board/n0871/q
set_db -quiet inst:mcs4/i4004_alu_board_n0870_reg .original_name i4004/alu_board/n0870
set_db -quiet inst:mcs4/i4004_alu_board_n0870_reg .orig_hdl_instantiated false
set_db -quiet inst:mcs4/i4004_alu_board_n0870_reg .single_bit_orig_name i4004/alu_board/n0870
set_db -quiet inst:mcs4/i4004_alu_board_n0870_reg .gint_phase_inversion false
set_db -quiet pin:mcs4/i4004_alu_board_n0870_reg/Q .original_name i4004/alu_board/n0870/q
set_db -quiet pin:mcs4/i4004_alu_board_n0870_reg/QN .original_name i4004/alu_board/n0870/q
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[8]} .original_name {{i4004/ip_board/dram_temp[8]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[8]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[8]} .single_bit_orig_name {i4004/ip_board/dram_temp[8]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[8]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[8]/Q} .original_name {i4004/ip_board/dram_temp[8]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[8]/QN} .original_name {i4004/ip_board/dram_temp[8]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[9]} .original_name {{i4004/ip_board/dram_temp[9]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[9]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[9]} .single_bit_orig_name {i4004/ip_board/dram_temp[9]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[9]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[9]/Q} .original_name {i4004/ip_board/dram_temp[9]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[9]/QN} .original_name {i4004/ip_board/dram_temp[9]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[11]} .original_name {{i4004/ip_board/dram_temp[11]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[11]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[11]} .single_bit_orig_name {i4004/ip_board/dram_temp[11]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[11]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[11]/Q} .original_name {i4004/ip_board/dram_temp[11]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[11]/QN} .original_name {i4004/ip_board/dram_temp[11]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[10]} .original_name {{i4004/ip_board/dram_temp[10]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[10]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[10]} .single_bit_orig_name {i4004/ip_board/dram_temp[10]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[10]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[10]/Q} .original_name {i4004/ip_board/dram_temp[10]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[10]/QN} .original_name {i4004/ip_board/dram_temp[10]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[6]} .original_name {{i4004/ip_board/dram_temp[6]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[6]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[6]} .single_bit_orig_name {i4004/ip_board/dram_temp[6]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[6]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[6]/Q} .original_name {i4004/ip_board/dram_temp[6]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[6]/QN} .original_name {i4004/ip_board/dram_temp[6]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[7]} .original_name {{i4004/ip_board/dram_temp[7]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[7]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[7]} .single_bit_orig_name {i4004/ip_board/dram_temp[7]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[7]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[7]/Q} .original_name {i4004/ip_board/dram_temp[7]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[7]/QN} .original_name {i4004/ip_board/dram_temp[7]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[0]} .original_name {{i4004/ip_board/dram_temp[0]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[0]} .single_bit_orig_name {i4004/ip_board/dram_temp[0]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[0]/Q} .original_name {i4004/ip_board/dram_temp[0]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[0]/QN} .original_name {i4004/ip_board/dram_temp[0]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[1]} .original_name {{i4004/ip_board/dram_temp[1]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[1]} .single_bit_orig_name {i4004/ip_board/dram_temp[1]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[1]/Q} .original_name {i4004/ip_board/dram_temp[1]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[1]/QN} .original_name {i4004/ip_board/dram_temp[1]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[2]} .original_name {{i4004/ip_board/dram_temp[2]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[2]} .single_bit_orig_name {i4004/ip_board/dram_temp[2]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[2]/Q} .original_name {i4004/ip_board/dram_temp[2]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[2]/QN} .original_name {i4004/ip_board/dram_temp[2]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[3]} .original_name {{i4004/ip_board/dram_temp[3]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[3]} .single_bit_orig_name {i4004/ip_board/dram_temp[3]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[3]/Q} .original_name {i4004/ip_board/dram_temp[3]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[3]/QN} .original_name {i4004/ip_board/dram_temp[3]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[4]} .original_name {{i4004/ip_board/dram_temp[4]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[4]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[4]} .single_bit_orig_name {i4004/ip_board/dram_temp[4]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[4]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[4]/Q} .original_name {i4004/ip_board/dram_temp[4]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[4]/QN} .original_name {i4004/ip_board/dram_temp[4]/q}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[5]} .original_name {{i4004/ip_board/dram_temp[5]}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[5]} .orig_hdl_instantiated false
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[5]} .single_bit_orig_name {i4004/ip_board/dram_temp[5]}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[5]} .gint_phase_inversion false
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[5]/Q} .original_name {i4004/ip_board/dram_temp[5]/q}
set_db -quiet {pin:mcs4/i4004_ip_board_dram_temp_reg[5]/QN} .original_name {i4004/ip_board/dram_temp[5]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet inst:mcs4/ram_0_src_ram_sel_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 28}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 25}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 25}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 25}}
set_db -quiet {inst:mcs4/ram_0_char_num_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 25}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_alu_board_n0750_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4/i4004_alu_board_n0751_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_alu_board_n0749_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_oport_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 128 30}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_id_board_n0805_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 240 21}}
set_db -quiet inst:mcs4/i4004_id_board_n0801_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 232 21}}
set_db -quiet inst:mcs4/i4004_id_board_n0797_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 224 21}}
set_db -quiet inst:mcs4/i4004_tio_board_n0699_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 121 14}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 145 23}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 145 23}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 145 23}}
set_db -quiet {inst:mcs4/i4004_tio_board_data_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 145 23}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_1_data_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet inst:mcs4/rom_0_srcff_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 169 15}}
set_db -quiet inst:mcs4/rom_1_srcff_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 169 15}}
set_db -quiet {inst:mcs4/rom_0_data_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4001/i4001.v 84 25}}
set_db -quiet inst:mcs4/i4004_ip_board_carry_out_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 224 25}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[7][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[3][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[5][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[1][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[2][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[16][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[18][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[3][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet inst:mcs4/i4004_ip_board_n0517_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 129 14}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[8][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[10][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[14][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[14][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_sync_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 82 1}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/rom_0_chipsel_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 123 20}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet {inst:mcs4/i4004_alu_board_tmp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_din_n_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 177 33}}
set_db -quiet inst:mcs4/rom_1_chipsel_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 123 20}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[1]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[3]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet inst:mcs4/i4004_alu_board_n0872_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 21}}
set_db -quiet inst:mcs4/i4004_alu_board_n0893_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 14}}
set_db -quiet inst:mcs4/i4004_alu_board_n0891_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 21}}
set_db -quiet inst:mcs4/i4004_alu_board_n0889_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 28}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet inst:mcs4/i4004_alu_board_n0887_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 103 35}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[0]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4/i4004_alu_board_n0873_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 14}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[2]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[0]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet inst:mcs4/i4004_alu_board_cy_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 34}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 24}}
set_db -quiet inst:mcs4/rom_0_extbusdrive_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 95 21}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[4]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4/i4004_ip_board_incr_in_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 216 22}}
set_db -quiet inst:mcs4/rom_1_extbusdrive_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 95 21}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[3]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 24}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_slave_reg .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4/clockgen_clk2_reg .file_row_col {{../../rtl/verilog/./common/clockgen.v 86 5}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_array_reg[0][4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[9][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[11][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[12][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[15][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram2_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram3_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_ip_board_carry_in_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 224 49}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_rfsh_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[4]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/ram_0_rfsh_next_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/i4004_ip_board_addr_ptr_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_ip_board_n0416_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 147 14}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_ip_board_n0438_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 138 14}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_ip_board_n0374_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 161 14}}
set_db -quiet inst:mcs4/i4004_ip_board_n0384_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 154 14}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[0][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram1_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_id_board_n0433_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 232 22}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet inst:mcs4/i4004_id_board_n0425_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 240 22}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[9]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[1][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[2][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[19][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_array_reg[4][7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 159 33}}
set_db -quiet inst:mcs4/i4004_id_board_n0405_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 179 15}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_sp_board_n0615_reg .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 117 14}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_0_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4/i4004_sp_board_n0592_reg .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 125 14}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_1_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet inst:mcs4/i4004_sp_board_reg_rfsh_2_master_reg .file_row_col {{../../rtl/verilog/./common/counter.v 39 16}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_n0278_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 91 14}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[17][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_n0707_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 121 14}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4/i4004_id_board_n0414_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 224 22}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4/i4004_id_board_n0362_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 23}}
set_db -quiet inst:mcs4/i4004_id_board_n0380_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 213 14}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a31_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x11_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[13][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet inst:mcs4/i4004_id_board_n0360_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 204 14}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[0][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[1][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[2][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[3][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[4][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[6][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][0]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][1]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[5][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][2]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/ram_0_ram0_ram_array_reg[7][3]} .file_row_col {{../../rtl/verilog/./i4002/i4002_ram.v 56 49}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[1]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x31_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 56 24}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 5}}
set_db -quiet inst:mcs4/rom_0_n0161_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 184 15}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/i4004_id_board_n0397_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 183 49}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/rom_1_n0161_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 184 15}}
set_db -quiet inst:mcs4/shiftreg_cp_delayed_reg .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 19}}
set_db -quiet inst:mcs4/i4004_tio_board_n0685_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 121 14}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[0]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[2]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[3]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[4]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[5]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[8]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[7]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/shiftreg_shifter_reg[6]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[4]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_m11_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_m21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_x21_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 57 24}}
set_db -quiet inst:mcs4/i4004_tio_board_L_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 112 10}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4/g17755__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17756__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17757__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17758__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17759__8428 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 100 28}}
set_db -quiet inst:mcs4/g17760__5526 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4/g17761__6783 .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet inst:mcs4/g17770__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17771__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17772__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17773__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17774__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 24}}
set_db -quiet inst:mcs4/g17775__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17776__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 23}}
set_db -quiet inst:mcs4/g17777__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17778__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17779__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17782__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4/g17783__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4/g17784__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4/g17785__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17786__9945 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17787__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17788__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17789__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17790__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17791__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17792__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17793__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17794__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17795__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17796__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17797__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 190 32}}
set_db -quiet inst:mcs4/g17798__5526 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 17}}
set_db -quiet inst:mcs4/g17799__6783 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 17}}
set_db -quiet inst:mcs4/g17800__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17801__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4/g17802__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17803__1705 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17804__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17805__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17806__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17807__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17808__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17809__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17810__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17811__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17812__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17813__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17814__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17815__2883 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17816__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17817__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4/g17819__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17820__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17821__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17822__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17823__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17824__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17825__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17826__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17827__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17828__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17835__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17838__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17839__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17840__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g17841__5122 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 17}}
set_db -quiet inst:mcs4/g17842__8246 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 17}}
set_db -quiet inst:mcs4/g17843__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4/g17844__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17845__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g17846__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g17847__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g17848__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g17849__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g17850__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g17851__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g17852__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g17853__2346 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17856__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 136 13}}
set_db -quiet inst:mcs4/g17857__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17858__5477 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 31}}
set_db -quiet inst:mcs4/g17859__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17860__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17861__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17862__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17863__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17864__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17865__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17866__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17867__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17868__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17869__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17870__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17871__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17876__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17877__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17878__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g17881__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 118 13}}
set_db -quiet inst:mcs4/g17882__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 23}}
set_db -quiet inst:mcs4/g17883__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 14}}
set_db -quiet inst:mcs4/g17884__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 21}}
set_db -quiet inst:mcs4/g17885__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4/g17886__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17887__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17888__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17889__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17890__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17891__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17892__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17893__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 94 18}}
set_db -quiet inst:mcs4/g17894__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 24}}
set_db -quiet inst:mcs4/g17895__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17896__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17897__8428 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4/g17898__5526 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4/g17899__6783 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4/g17901 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17902 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17904 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17905 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17907 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17908 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17910 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17911 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17912__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 131 22}}
set_db -quiet inst:mcs4/g17913__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17917__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17919__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17920__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17922__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17923__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 53}}
set_db -quiet inst:mcs4/g17924__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17926__1881 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 53}}
set_db -quiet inst:mcs4/g17927__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g17928__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17929__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17930__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17931__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17932__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 167 13}}
set_db -quiet inst:mcs4/g17933__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 65 28}}
set_db -quiet inst:mcs4/g17934__2346 .file_row_col {{../../rtl/verilog/./mcs4.v 106 13}}
set_db -quiet inst:mcs4/g17935__1666 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4/g17936__7410 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g17937__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17938__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17939__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17940__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17941__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17942__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17943__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17944__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17945__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17946__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17947__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17948__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17949__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17950__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17951__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17952__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17953__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17954__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17955__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17956__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17957__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17958__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17959__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17960__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17961__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17962__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17963__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17964__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17965__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17966__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17967__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17968__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17969__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17970__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17971__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17972__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17973__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17974__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17975__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17976__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17977__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17978__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17979__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17980__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17981__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17982__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17983__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17984__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17985__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17986__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17987__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17988__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17989__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17990__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17991__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17992__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17993__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17994__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17995__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17996__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17997__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17998__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g17999__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18000__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18001__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18002__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18003__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18004__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18005__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18006__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18007__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18008__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18009__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18010__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18011__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18012__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18013__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18014__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18015__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18016__9945 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 65 21}}
set_db -quiet inst:mcs4/g18017__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18021__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18022__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 182 36}}
set_db -quiet inst:mcs4/g18023__2398 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18024__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18025__6260 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18026__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18027__8428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18028__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18029__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18030__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18031__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18032__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18034__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18036__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 136 13}}
set_db -quiet inst:mcs4/g18037__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 223 22}}
set_db -quiet inst:mcs4/g18038__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18039__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 140 22}}
set_db -quiet inst:mcs4/g18040__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18041__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18042__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18043__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4/g18044__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18045__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18046__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18047__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18048__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18049__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18050__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18051__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18052__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18054__2398 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 20}}
set_db -quiet inst:mcs4/g18056__6260 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18057__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 182 36}}
set_db -quiet inst:mcs4/g18061__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18062__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18063__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18064__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18065__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18066__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18068__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18069__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18070__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18071__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18072__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18073__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18074__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18075__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18076__2883 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 114 28}}
set_db -quiet inst:mcs4/g18077__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18078__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18081__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18085__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18088__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18089__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18090__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18091__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18092__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18093__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18094__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18095__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18096__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18097__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18098__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18099__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18100__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18101__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18102__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18103__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18104__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18105__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18106__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18107__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18108__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18111__5107 .file_row_col {{../../rtl/verilog/./mcs4.v 66 16}}
set_db -quiet inst:mcs4/g18112__6260 .file_row_col {{../../rtl/verilog/./mcs4.v 66 16}}
set_db -quiet inst:mcs4/g18113__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 92 40}}
set_db -quiet inst:mcs4/g18114__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18116__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18117__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18127__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 196 13}}
set_db -quiet inst:mcs4/g18129__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 196 13}}
set_db -quiet inst:mcs4/g18130__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 196 13}}
set_db -quiet inst:mcs4/g18132__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18133__9945 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18135__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18137__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18138__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18139__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18140__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18141__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18142__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18143__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18144__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18145__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18146__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18147__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18148__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18149__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18150__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18151__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18152__1705 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18153__5122 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18154__8246 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18155__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18156__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18157__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18158__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18159__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18160__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18161__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18162__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18163__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18164__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18165__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18166__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18168__6417 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18169__5477 .file_row_col {{../../rtl/verilog/./mcs4.v 106 13}}
set_db -quiet inst:mcs4/g18171__2398 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18172__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18173__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18174__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18175__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18176__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18178__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18179__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18188__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 43}}
set_db -quiet inst:mcs4/g18191__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18192__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18193__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18194__6161 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18195__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18196__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18197__2883 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4/g18198__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18199__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 65 66}}
set_db -quiet inst:mcs4/g18200__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18201__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18202__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18203__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18204__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4/g18205__6260 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 114 28}}
set_db -quiet inst:mcs4/g18206__4319 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18207__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18208__5526 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18209__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18210__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18211__1617 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18212__2802 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18213__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 43}}
set_db -quiet inst:mcs4/g18214__5122 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18215__8246 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 49 16}}
set_db -quiet inst:mcs4/g18217__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18218__6131 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4/g18221__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 223 22}}
set_db -quiet inst:mcs4/g18222__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18223__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18225__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4/g18226__6161 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18228__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 220 28}}
set_db -quiet inst:mcs4/g18229__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18230__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18232__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/i4004_ip_board_g215__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4/i4004_ip_board_g214__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4/i4004_ip_board_g216__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4/i4004_ip_board_g213__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4/i4004_alu_board_g256__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/i4004_alu_board_g259__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/i4004_alu_board_g258__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/i4004_id_board_g192__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4/i4004_id_board_g191__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4/i4004_id_board_g190__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4/i4004_id_board_g193__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 256 19}}
set_db -quiet inst:mcs4/i4004_tio_board_g3__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/i4004_tio_board_g54__6131 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/i4004_sp_board_g177__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/i4004_sp_board_g178__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/i4004_sp_board_g176__7482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/i4004_tio_board_g53__4733 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/i4004_tio_board_g55__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/i4004_sp_board_g175__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/i4004_alu_board_g257__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18241__2883 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18242__2346 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18243__1666 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18244__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g18245__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18246__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18247__2398 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18248__5107 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g18251__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4/g18252__8428 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 95 27}}
set_db -quiet inst:mcs4/g18253__5526 .file_row_col {{../../rtl/verilog/./mcs4.v 66 16}}
set_db -quiet inst:mcs4/g18254__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 128 36}}
set_db -quiet inst:mcs4/g18255__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 100 13}}
set_db -quiet inst:mcs4/g18256__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4/g18257__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18258__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18259__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 182 36}}
set_db -quiet inst:mcs4/g18260__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 84 37}}
set_db -quiet inst:mcs4/g18262__6131 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18263__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18264__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18265__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18266__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18268__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 92 36}}
set_db -quiet inst:mcs4/g18269 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18270__9945 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 43}}
set_db -quiet inst:mcs4/g18272__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 93 43}}
set_db -quiet inst:mcs4/g18273__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 66 50}}
set_db -quiet inst:mcs4/g18274__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18275__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 56}}
set_db -quiet inst:mcs4/g18276__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18277__5477 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g18278__2398 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18279__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18280__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 177 32}}
set_db -quiet inst:mcs4/g18281__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18282__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18283__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18284__6783 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18285__3680 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18286__1617 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18287__2802 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18288__1705 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18289__5122 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18290__8246 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18291__7098 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18292__6131 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18293__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18294__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18295__7482 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18296__4733 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18297__6161 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18298__9315 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4/g18299 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18304__9945 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/g18305__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18306__2346 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g18307__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 27}}
set_db -quiet inst:mcs4/g18308__7410 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/g18309__6417 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/g18310__5477 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18311__2398 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/g18312__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 164 31}}
set_db -quiet inst:mcs4/g18314__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4/g18315__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18318__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18319__6783 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/g18321__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 203 13}}
set_db -quiet inst:mcs4/g18322__1617 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18323__2802 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18324__1705 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g18325__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 91 36}}
set_db -quiet inst:mcs4/g18326__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18329 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4/g18330__7098 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/g18331__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/g18332__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/g18333__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 167 13}}
set_db -quiet inst:mcs4/g18334__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18335__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18336__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 153 34}}
set_db -quiet inst:mcs4/g18337__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18338__9945 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18339__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18340__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18341__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4/g18342__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18343__6417 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 112 41}}
set_db -quiet inst:mcs4/g18344__5477 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18345__2398 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18346__5107 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18347__6260 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18348__4319 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18349__8428 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18350__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18351__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 123 13}}
set_db -quiet inst:mcs4/g18352__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4/g18356 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18359__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 35}}
set_db -quiet inst:mcs4/g18363__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 35}}
set_db -quiet inst:mcs4/g18364__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18365__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18367__7098 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g18370__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18371__5115 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18372__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18373__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4/g18374__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18375__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 188 13}}
set_db -quiet inst:mcs4/g18376__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4/g18377 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4/g18378 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18382__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18383__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18384__1666 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 170 57}}
set_db -quiet inst:mcs4/g18385__7410 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18386__6417 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4/g18387__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 168 31}}
set_db -quiet inst:mcs4/g18388__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18389__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18390__6260 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18391__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18392__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18393__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18394__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 169 31}}
set_db -quiet inst:mcs4/g18395__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 110 34}}
set_db -quiet inst:mcs4/g18396__1617 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g18397__2802 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 114 28}}
set_db -quiet inst:mcs4/g18398__1705 .file_row_col {{../../rtl/verilog/./i4004/alu.v 110 13}}
set_db -quiet inst:mcs4/g18399__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 18}}
set_db -quiet inst:mcs4/g18401__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18402__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 165 26}}
set_db -quiet inst:mcs4/g18403__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 130 23}}
set_db -quiet inst:mcs4/g18404__1881 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18405__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4/g18406__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18407__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g18408__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18409__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18410__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 170 57}}
set_db -quiet inst:mcs4/g18411__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 123 28}}
set_db -quiet inst:mcs4/g18412__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18413__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 239 21}}
set_db -quiet inst:mcs4/g18416__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4/g18418 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4/g18423__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 172 57}}
set_db -quiet inst:mcs4/g18424__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18425__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18426__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 63}}
set_db -quiet inst:mcs4/g18427__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18428__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 168 31}}
set_db -quiet inst:mcs4/g18429__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 166 31}}
set_db -quiet inst:mcs4/g18430__3680 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 30}}
set_db -quiet inst:mcs4/g18431__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 82 44}}
set_db -quiet inst:mcs4/g18432__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18433__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 135 49}}
set_db -quiet inst:mcs4/i4004_tio_board_g62__5122 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/i4004_tio_board_g61__8246 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/i4004_tio_board_g63__7098 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/i4004_tio_board_g60__6131 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/rom_1_g61__1881 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 102 23}}
set_db -quiet inst:mcs4/rom_0_g62__5115 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 188 42}}
set_db -quiet inst:mcs4/ram_0_g90__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 211 20}}
set_db -quiet inst:mcs4/rom_0_g60__4733 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 188 42}}
set_db -quiet inst:mcs4/rom_0_g61__6161 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 102 23}}
set_db -quiet inst:mcs4/rom_0_g63__9315 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 102 23}}
set_db -quiet inst:mcs4/rom_1_g63__9945 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/rom_1_g60__2883 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 188 42}}
set_db -quiet inst:mcs4/ram_0_g91__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 211 20}}
set_db -quiet inst:mcs4/rom_1_g62__1666 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 188 42}}
set_db -quiet inst:mcs4/ram_0_g89__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 211 20}}
set_db -quiet inst:mcs4/ram_0_g88__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 211 20}}
set_db -quiet inst:mcs4/g18436 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18439__2398 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18441__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18443__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 35}}
set_db -quiet inst:mcs4/g18444__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18447__5526 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18448__6783 .file_row_col {{../../rtl/verilog/./i4004/alu.v 208 13}}
set_db -quiet inst:mcs4/g18449 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 30}}
set_db -quiet inst:mcs4/g18450__3680 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18451__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 172 57}}
set_db -quiet inst:mcs4/g18453__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 63}}
set_db -quiet inst:mcs4/g18454__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18455__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 194 18}}
set_db -quiet inst:mcs4/g18456__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 67}}
set_db -quiet inst:mcs4/g18457__7098 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 166 31}}
set_db -quiet inst:mcs4/g18460__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 195 18}}
set_db -quiet inst:mcs4/g18461__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 30}}
set_db -quiet inst:mcs4/g18462 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18465__5115 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/g18467__7482 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/g18468__4733 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/g18469__6161 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/g18472__9945 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g18473__2883 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18474__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 158 26}}
set_db -quiet inst:mcs4/g18475__1666 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 149 23}}
set_db -quiet inst:mcs4/g18476__7410 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 144 27}}
set_db -quiet inst:mcs4/g18477__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 210 38}}
set_db -quiet inst:mcs4/g18478__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 23}}
set_db -quiet inst:mcs4/g18479__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 151 26}}
set_db -quiet inst:mcs4/g18481 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18482 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 23}}
set_db -quiet inst:mcs4/g18483__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 193 18}}
set_db -quiet inst:mcs4/g18484__6260 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18485__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18486__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 194 18}}
set_db -quiet inst:mcs4/g18487__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18488__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18489__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18490__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18491__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 27}}
set_db -quiet inst:mcs4/g18492__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 132 35}}
set_db -quiet inst:mcs4/g18493__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 251 60}}
set_db -quiet inst:mcs4/g18494__8246 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g18496__6131 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 157 26}}
set_db -quiet inst:mcs4/g18497__1881 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g18498__5115 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 23}}
set_db -quiet inst:mcs4/g18499 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4/g18506__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 210 45}}
set_db -quiet inst:mcs4/g18507__4733 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 129 38}}
set_db -quiet inst:mcs4/g18508__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 140 27}}
set_db -quiet inst:mcs4/g18510__9945 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 111 51}}
set_db -quiet inst:mcs4/g18511__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 176 53}}
set_db -quiet inst:mcs4/g18512__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18514__7410 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 158 26}}
set_db -quiet inst:mcs4/g18516__6417 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18517__5477 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 159 26}}
set_db -quiet inst:mcs4/g18518__2398 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 172 40}}
set_db -quiet inst:mcs4/g18519__5107 .file_row_col {{../../rtl/verilog/./i4004/alu.v 151 44}}
set_db -quiet inst:mcs4/g18520__6260 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 44}}
set_db -quiet inst:mcs4/g18521__4319 .file_row_col {{../../rtl/verilog/./i4004/alu.v 148 44}}
set_db -quiet inst:mcs4/g18522__8428 .file_row_col {{../../rtl/verilog/./i4004/alu.v 150 44}}
set_db -quiet inst:mcs4/g18523 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 37}}
set_db -quiet inst:mcs4/g18524 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4/g18525 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 149 27}}
set_db -quiet inst:mcs4/g18526__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18527__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18528__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18529__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18530__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18531__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18532__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18533__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18535__6131 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 136 40}}
set_db -quiet inst:mcs4/g18536__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 137 40}}
set_db -quiet inst:mcs4/g18538__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 145 27}}
set_db -quiet inst:mcs4/g18539__7482 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 150 27}}
set_db -quiet inst:mcs4/g18540__4733 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 37}}
set_db -quiet inst:mcs4/g18541__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 192 47}}
set_db -quiet inst:mcs4/g18542__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 149 27}}
set_db -quiet inst:mcs4/g18543 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 142 34}}
set_db -quiet inst:mcs4/g18544__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 144 34}}
set_db -quiet inst:mcs4/g18545__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18548__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18549__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18550__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18551__5477 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 141 27}}
set_db -quiet inst:mcs4/g18552__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18553__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18554__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18556__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4/g18557__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 27}}
set_db -quiet inst:mcs4/g18558__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 142 34}}
set_db -quiet inst:mcs4/g18559__3680 .file_row_col {{../../rtl/verilog/./i4004/alu.v 191 23}}
set_db -quiet inst:mcs4/g18560__1617 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 208 26}}
set_db -quiet inst:mcs4/g18561 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4/g18562 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18563__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18564__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 132 18}}
set_db -quiet inst:mcs4/g18565__5122 .file_row_col {{../../rtl/verilog/./i4004/alu.v 151 53}}
set_db -quiet inst:mcs4/g18566__8246 .file_row_col {{../../rtl/verilog/./i4004/alu.v 151 35}}
set_db -quiet inst:mcs4/g18568__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 148 53}}
set_db -quiet inst:mcs4/g18569__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 148 35}}
set_db -quiet inst:mcs4/g18570__1881 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 53}}
set_db -quiet inst:mcs4/g18571__5115 .file_row_col {{../../rtl/verilog/./i4004/alu.v 150 35}}
set_db -quiet inst:mcs4/g18572__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 150 53}}
set_db -quiet inst:mcs4/g18573__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 35}}
set_db -quiet inst:mcs4/g18574__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 175 37}}
set_db -quiet inst:mcs4/g18575__9315 .file_row_col {{../../rtl/verilog/./i4004/alu.v 189 23}}
set_db -quiet inst:mcs4/g18576__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4/g18577__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4/g18578__2346 .file_row_col {{../../rtl/verilog/./i4004/alu.v 188 23}}
set_db -quiet inst:mcs4/g18579__1666 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18582__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 132 18}}
set_db -quiet inst:mcs4/g18583__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 89 34}}
set_db -quiet inst:mcs4/g18585__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18586__5107 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 173 45}}
set_db -quiet inst:mcs4/g18587__6260 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 20}}
set_db -quiet inst:mcs4/g18588__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 139 34}}
set_db -quiet inst:mcs4/g18589__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 156 26}}
set_db -quiet inst:mcs4/g18590__5526 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 27}}
set_db -quiet inst:mcs4/g18591__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 217 26}}
set_db -quiet inst:mcs4/g18593__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18594__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18595__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18596__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18598__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18599__7098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 144 20}}
set_db -quiet inst:mcs4/g18600__6131 .file_row_col {{../../rtl/verilog/./i4004/alu.v 159 61}}
set_db -quiet inst:mcs4/g18601__1881 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 135 36}}
set_db -quiet inst:mcs4/g18602__5115 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 112 28}}
set_db -quiet inst:mcs4/g18603 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 140 34}}
set_db -quiet inst:mcs4/g18604 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 152 27}}
set_db -quiet inst:mcs4/g18605__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18606__4733 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 146 34}}
set_db -quiet inst:mcs4/g18607__6161 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18608__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18609__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18610__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18611__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18612__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18613__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18614__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18615__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18616__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18617__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18618__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18619__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18620__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18621__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18622__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18623__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18624__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18625__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18626__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18627__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18628__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18629__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18630__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18631__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18632__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18633__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18634__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18635__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18636__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18637__9945 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 45}}
set_db -quiet inst:mcs4/g18638__2883 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 129 27}}
set_db -quiet inst:mcs4/g18639__2346 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 140 34}}
set_db -quiet inst:mcs4/g18642__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18643__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18644__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18645__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18646__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18647__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18648__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18649__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18650__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18651__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18652__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18653__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18654__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18656__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18657__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18658__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18660__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18662__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18664__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18665__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18666__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18667__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18668__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18669__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18671__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18672__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18673__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18675__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18676__4319 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 151 34}}
set_db -quiet inst:mcs4/g18677__8428 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 124 28}}
set_db -quiet inst:mcs4/g18678__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18679__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18680__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18681__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18682__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 133 37}}
set_db -quiet inst:mcs4/g18683__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18684__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18685__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18686__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18687__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18688__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18689__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18690__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18691__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18692__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18693__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18694__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18695__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18696__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18697__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18698__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18699__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18700__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18701__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18702__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18703__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18704__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18705__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18706__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18707__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18708__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18709__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18710__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18711__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18712__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18713__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18714__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18715__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18716__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18717__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18718__7482 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18719__4733 .file_row_col {{../../rtl/verilog/./i4004/alu.v 151 62}}
set_db -quiet inst:mcs4/g18720__6161 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4/g18721__9315 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 135 39}}
set_db -quiet inst:mcs4/g18723__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18724__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18725__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18726__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18727__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18728__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18729__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18730__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18731__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18732__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18733__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18734__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18735__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18736__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18737__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18738__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18739__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18740__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18741__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18742__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18743__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18744__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18745__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18746__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18747__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18748__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18749__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18750__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18751__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18752__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18753__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18754__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18755__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18756__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18757__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18758__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18759__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18760__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18761__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18762__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18763__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18764__6783 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 111 28}}
set_db -quiet inst:mcs4/g18766__1617 .file_row_col {{../../rtl/verilog/./i4004/alu.v 142 20}}
set_db -quiet inst:mcs4/g18767__2802 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 125 28}}
set_db -quiet inst:mcs4/g18768__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18769__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18770__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18771__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18772__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18773__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18774__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18775__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18776__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18777__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18778__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18779__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18780__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18781__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18782__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18783__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18784__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18785__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18786__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18787__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18788__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18789__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18790__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18791__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18792__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18793__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18794__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18795__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18796__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18797__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18798__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18799__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18800__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18801__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18802__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18803__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18804__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18805__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18806__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18807__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18808__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18809__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18810__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18811__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18812__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18813__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18814__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18815__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18816__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18817__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18818__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18819__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18820__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18821__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18822__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18823__2802 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g18824__1705 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 115 28}}
set_db -quiet inst:mcs4/g18825__5122 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 116 28}}
set_db -quiet inst:mcs4/g18826__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18827__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18828__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18829__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18830__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18831__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18832__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18833__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18834__9315 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18835__9945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18836__2883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18837__2346 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18838__1666 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18839__7410 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18840__6417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18841__5477 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18842__2398 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18843__5107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18844__6260 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18845__4319 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18846__8428 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18847__5526 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18848__6783 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18849__3680 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18850__1617 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18851__2802 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18852__1705 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18853__5122 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18854__8246 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18855__7098 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18856__6131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18857__1881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18858__5115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18859__7482 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18860__4733 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18861__6161 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18862 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18863 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18864 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18865 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18866 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18867 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18868 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18869 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18870 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18871 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18872 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18873 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18874 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18875 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18876 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18877 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18878 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18879 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18880 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18881 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18882 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18883 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18884 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18885 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18886 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18887 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18888 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18889 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18890 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18891 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18892 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18893 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18894 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18895 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18896 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18897 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18898 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18899 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18900 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18901 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18902 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18903 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18904 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18905 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18906 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18907 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18908 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18909 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18910 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18911 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18912 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18913 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18914 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18915 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 112 28}}
set_db -quiet inst:mcs4/g18916 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 112 28}}
set_db -quiet inst:mcs4/g18917 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18918 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18919 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18920 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18921 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18922 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18923 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18924 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18925 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18926 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18927 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18928 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18929 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18930 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18931 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18932 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18933 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18934 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18935 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18936 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18937 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18938 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18939 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18940 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18941 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18942 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18943 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18944 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18945 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18946 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18947 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18948 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18949 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18950 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18951 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18952 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18953 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18954 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18955 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18956 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18957 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18958 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18959 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18960 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18961 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18962 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18963 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18964 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18965 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18966 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18967 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18968 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18969 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18970 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18971 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18972 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18973 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18974 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18975 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18976 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18977 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18978 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18979 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18980 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18981 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18982 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18983 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18984 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18985 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18986 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18987 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18988 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18989 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18990 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18991 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18992 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18993 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18994 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18995 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18996 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18997 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18998 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g18999 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19000 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19001 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19002 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19003 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19004 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19005 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19006 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19007 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19008 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19009 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19010 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19011 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19012 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19013 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19014 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19015 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19016 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19017 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19018 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19019 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19020 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19021 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19022 .file_row_col {{../../rtl/verilog/./i4004/alu.v 150 62}}
set_db -quiet inst:mcs4/g19023 .file_row_col {{../../rtl/verilog/./i4004/alu.v 140 20}}
set_db -quiet inst:mcs4/g19024 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19025 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19026 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19027 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19028 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19029 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19030 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19031 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19032 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19033 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19034 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19035 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19036 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19037 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19038 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19039 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19040 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19041 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19042 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19043 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19044 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19045 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19046 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19047 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19048 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19049 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19050 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19051 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19052 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19053 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19054 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19055 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19056 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19057 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 120 28}}
set_db -quiet inst:mcs4/g19058 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19059 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19061 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19062 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19063 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19064 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19065 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19066 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19067 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19068 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19069 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19070 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19071 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19072 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19073 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19074 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19075 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19076 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19077 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19078 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19079 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19080 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19081 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19082 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19083 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19084 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19085 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19087 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19088 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19089 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19090 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19092 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19093 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19094 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19095 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19096 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19097 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19098 .file_row_col {{../../rtl/verilog/./i4004/alu.v 149 62}}
set_db -quiet inst:mcs4/g19099 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19101 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19103 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19105 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19106 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19107 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19108 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19110 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19111 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19112 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19113 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19115 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19116 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19117 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19119 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19120 .file_row_col {{../../rtl/verilog/./i4004/alu.v 138 20}}
set_db -quiet inst:mcs4/g19124 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19125 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19126 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19127 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19131 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19135 .file_row_col {{../../rtl/verilog/./i4004/alu.v 148 62}}
set_db -quiet inst:mcs4/g19138 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19139 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19140 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19141 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19144 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19145 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19146 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19147 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19150 .file_row_col {{../../rtl/verilog/./common/clockgen.v 70 67}}
set_db -quiet inst:mcs4/g19162 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 58 38}}
set_db -quiet inst:mcs4/g19170 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/g19172 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/g19250 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 179 15}}
set_db -quiet inst:mcs4/g19251 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 195 33}}
set_db -quiet inst:mcs4/g19253 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/g19254 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 121 14}}
set_db -quiet inst:mcs4/g19266 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/g19267 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/g19269 .file_row_col {{../../rtl/verilog/./common/counter.v 44 24}}
set_db -quiet inst:mcs4/ram_0_ram_sel_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 24}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 162 45}}
set_db -quiet inst:mcs4/rom_0_timing_recovery_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/ram_0_io_reg .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 23}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4/clockgen_clockdiv_reg[2]} .file_row_col {{../../rtl/verilog/./common/clockgen.v 69 58}}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_a22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet {inst:mcs4/i4004_sp_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 97 20}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 24}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet inst:mcs4/i4004_id_board_n0343_reg .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 193 66}}
set_db -quiet inst:mcs4/clockgen_clk1_reg .file_row_col {{../../rtl/verilog/./common/clockgen.v 79 21}}
set_db -quiet {inst:mcs4/shiftreg_cp_delay_reg[1]} .file_row_col {{../../rtl/verilog/./i4003/i4003.v 48 29}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[3]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/ram_0_opa_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 71 24}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[2]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet inst:mcs4/i4004_alu_board_cy_1_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 35}}
set_db -quiet {inst:mcs4/i4004_alu_board_acc_out_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/alu.v 177 48}}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 24}}
set_db -quiet {inst:mcs4/ram_0_reg_num_reg[0]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 96 24}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x22_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet {inst:mcs4/i4004_id_board_opr_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 96 18}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_x32_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 24}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m22_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet {inst:mcs4/i4004_ip_board_row_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 115 20}}
set_db -quiet inst:mcs4/i4004_tio_board_poc_reg .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 100 28}}
set_db -quiet {inst:mcs4/i4004_id_board_opa_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 103 18}}
set_db -quiet inst:mcs4/i4004_tio_board_timing_generator_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_generator.v 69 20}}
set_db -quiet inst:mcs4/rom_1_n0128_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 129 15}}
set_db -quiet inst:mcs4/rom_0_n0128_reg .file_row_col {{../../rtl/verilog/./i4001/i4001.v 129 15}}
set_db -quiet {inst:mcs4/ram_0_rfsh_addr_reg[1]} .file_row_col {{../../rtl/verilog/./i4002/i4002.v 178 26}}
set_db -quiet inst:mcs4/ram_0_timing_recovery_m12_reg .file_row_col {{../../rtl/verilog/./common/timing_recovery.v 70 20}}
set_db -quiet inst:mcs4/g2 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g19407 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g19411 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g19412 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 164 31}}
set_db -quiet inst:mcs4/g19413 .file_row_col {{../../rtl/verilog/./i4004/alu.v 184 20}}
set_db -quiet inst:mcs4/g19414 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g19415 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19416 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19417 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19418 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19419 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19420 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19421 .file_row_col {{../../rtl/verilog/./mcs4.v 66 16}}
set_db -quiet inst:mcs4/g19422 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g19423 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g19424 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g19425 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 152 13}}
set_db -quiet inst:mcs4/g19426 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g19427 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g19428 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g19429 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 154 13}}
set_db -quiet inst:mcs4/g3 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g19430 .file_row_col {{../../rtl/verilog/./i4004/alu.v 171 19}}
set_db -quiet inst:mcs4/g19431 .file_row_col {{../../rtl/verilog/./i4004/alu.v 136 13}}
set_db -quiet inst:mcs4/g19432 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19433 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19434 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19435 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19436 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19437 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g19438 .file_row_col {{../../rtl/verilog/./i4004/alu.v 136 13}}
set_db -quiet inst:mcs4/g19439 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 170 13}}
set_db -quiet inst:mcs4/g19440 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19441 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g19442 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 255 39}}
set_db -quiet inst:mcs4/g19444 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 31}}
set_db -quiet inst:mcs4/g19445 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g19447 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 190 13}}
set_db -quiet inst:mcs4/g19448 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 247 36}}
set_db -quiet inst:mcs4/g19450 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 119 22}}
set_db -quiet inst:mcs4/g19452 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g19453 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g19454 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 177 18}}
set_db -quiet inst:mcs4/g19455 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g19456 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g19457 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g19458 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g19459 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g19460 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 125 42}}
set_db -quiet inst:mcs4/g19461 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g19462 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g19463 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 127 22}}
set_db -quiet inst:mcs4/g19464 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 191 18}}
set_db -quiet inst:mcs4/g19465 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g19466 .file_row_col {{../../rtl/verilog/./i4004/alu.v 81 43}}
set_db -quiet inst:mcs4/g19467 .file_row_col {{../../rtl/verilog/./i4004/alu.v 81 43}}
set_db -quiet inst:mcs4/drc_bufs19468 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19469 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19480 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19492 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19529 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19537 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19566 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19568 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19578 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19580 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19590 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19592 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19611 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19613 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19624 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19625 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19653 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19655 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19661 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19670 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19696 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19697 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19782 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19791 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19800 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19809 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19818 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19827 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19836 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19845 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs19854 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20323 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20324 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20329 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20330 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20336 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20346 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20454 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20467 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20468 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20474 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20478 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20480 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20485 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20546 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20550 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20593 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20594 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20605 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20606 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20611 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20612 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20628 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20630 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20718 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20720 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20724 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20726 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20736 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20738 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20742 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20748 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20754 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20756 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20766 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20772 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20778 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20784 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20790 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20798 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20802 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20808 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20814 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20820 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20826 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20832 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20838 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20844 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20860 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20861 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20866 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20867 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20871 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20872 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20873 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20896 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20897 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20912 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20953 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20954 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20959 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20960 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20976 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20978 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20982 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs20984 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21012 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21014 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21018 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21020 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21024 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21026 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21043 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21044 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21069 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21075 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21076 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21077 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21081 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21083 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21087 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21089 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21100 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21101 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21130 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21131 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21137 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21149 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21154 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21155 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21167 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21203 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21207 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21231 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21238 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21240 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21245 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21246 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21252 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21280 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21291 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21292 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21330 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21331 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21341 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21348 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21349 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21378 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21379 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21384 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21385 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21395 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21414 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21416 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21491 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21493 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21497 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21509 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21726 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21731 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs21732 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22020 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22021 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22065 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22066 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22071 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22072 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22077 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22078 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22083 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22084 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22089 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22090 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22095 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22096 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22101 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22102 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22107 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22108 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22113 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22114 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22119 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22120 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22125 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22126 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22131 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22132 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22137 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22138 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22143 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22144 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22149 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22150 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22155 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22156 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22161 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22162 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22167 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22168 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22173 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22174 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22179 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22180 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22185 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22186 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22191 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22192 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22197 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22198 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22203 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22204 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22265 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22271 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22277 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22283 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22289 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22295 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22301 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22307 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22313 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22319 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22324 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc22331 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc22335 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22337 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22340 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22341 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22504 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22536 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_bufs22537 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc22544 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc22548 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc22572 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22664 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22665 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22666 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22667 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22689 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22690 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22691 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22714 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22715 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22716 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22739 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22740 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22741 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22764 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22765 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22766 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22789 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22790 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22791 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22814 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22815 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22816 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22839 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22840 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22841 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22864 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22865 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22866 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22883 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22884 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22895 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22907 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22919 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22931 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/drc_buf_sp22943 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[6]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[7]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[4]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[5]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet {inst:mcs4/i4004_sp_board_dram_temp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 145 26}}
set_db -quiet inst:mcs4/i4004_alu_board_n0550_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 132 14}}
set_db -quiet inst:mcs4/i4004_alu_board_n0871_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 28}}
set_db -quiet inst:mcs4/i4004_alu_board_n0870_reg .file_row_col {{../../rtl/verilog/./i4004/alu.v 120 35}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[8]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[9]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[11]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[10]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[6]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[7]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[0]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[1]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[2]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[3]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[4]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet {inst:mcs4/i4004_ip_board_dram_temp_reg[5]} .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 179 26}}
set_db -quiet inst:mcs4/g22995 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 196 13}}
set_db -quiet inst:mcs4/g22996 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 95 41}}
set_db -quiet inst:mcs4/g22997 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g22998 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g22999 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23000 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23001 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23002 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23003 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23004 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23005 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23006 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23007 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23008 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23009 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23010 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23011 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23012 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 160 13}}
set_db -quiet inst:mcs4/g23013 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23014 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23015 .file_row_col {{../../rtl/verilog/./i4004/scratchpad.v 122 23}}
set_db -quiet inst:mcs4/g23016 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 264 25}}
set_db -quiet inst:mcs4/g23017 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23018 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23019 .file_row_col {{../../rtl/verilog/./i4004/timing_io.v 136 13}}
set_db -quiet inst:mcs4/g23020 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23021 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g23022 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g23023 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 186 13}}
set_db -quiet inst:mcs4/g23026 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 56}}
set_db -quiet inst:mcs4/g23028 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 152 27}}
set_db -quiet inst:mcs4/g23029 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g23030 .file_row_col {{../../rtl/verilog/./i4001/i4001.v 106 30}}
set_db -quiet inst:mcs4/g23031 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 247 18}}
set_db -quiet inst:mcs4/g23032 .file_row_col {{../../rtl/verilog/./common/timing_generator.v 58 20}}
set_db -quiet inst:mcs4/g23033 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23034 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23035 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 134 66}}
set_db -quiet inst:mcs4/g23036 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23038 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23039 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 238 34}}
set_db -quiet inst:mcs4/g23040 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 65 52}}
set_db -quiet inst:mcs4/g23041 .file_row_col {{../../rtl/verilog/./i4004/instruction_decode.v 152 34}}
set_db -quiet inst:mcs4/g23042 .file_row_col {{../../rtl/verilog/./i4004/i4004.v 197 19}}
set_db -quiet inst:mcs4/g23043 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 142 50}}
set_db -quiet inst:mcs4/g23044 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23046 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23047 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23048 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23050 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23051 .file_row_col {{../../rtl/verilog/./i4002/i4002.v 85 29}}
set_db -quiet inst:mcs4/g23052 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23053 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23054 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23055 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23056 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23057 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23058 .file_row_col {{../../rtl/verilog/./i4003/i4003.v 64 25}}
set_db -quiet inst:mcs4/g23059 .file_row_col {{../../rtl/verilog/./i4004/alu.v 238 21}}
set_db -quiet inst:mcs4/g23060 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 47}}
set_db -quiet inst:mcs4/g23061 .file_row_col {{../../rtl/verilog/./i4004/instruction_pointer.v 222 47}}
# there is no file_row_col attribute information available
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 20.11-s111_1
## flowkit v20.10-p027_1
## Written on 06:46:42 13-May 2025
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
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid 48576d66-286d-4072-83ff-5f48ffdf7ff4}
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

