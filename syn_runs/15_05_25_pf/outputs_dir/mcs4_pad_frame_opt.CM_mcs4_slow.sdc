# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Thu May 15 04:28:26 EDT 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mcs4_pad_frame

set_load -pin_load 0.005 [get_ports {p_out[9]}]
set_load -pin_load 0.005 [get_ports {p_out[8]}]
set_load -pin_load 0.005 [get_ports {p_out[7]}]
set_load -pin_load 0.005 [get_ports {p_out[6]}]
set_load -pin_load 0.005 [get_ports {p_out[5]}]
set_load -pin_load 0.005 [get_ports {p_out[4]}]
set_load -pin_load 0.005 [get_ports {p_out[3]}]
set_load -pin_load 0.005 [get_ports {p_out[2]}]
set_load -pin_load 0.005 [get_ports {p_out[1]}]
set_load -pin_load 0.005 [get_ports {p_out[0]}]
set_load -pin_load 0.005 [get_ports {io_pad[7]}]
set_load -pin_load 0.005 [get_ports {io_pad[6]}]
set_load -pin_load 0.005 [get_ports {io_pad[5]}]
set_load -pin_load 0.005 [get_ports {io_pad[4]}]
set_load -pin_load 0.005 [get_ports {io_pad[3]}]
set_load -pin_load 0.005 [get_ports {io_pad[2]}]
set_load -pin_load 0.005 [get_ports {io_pad[1]}]
set_load -pin_load 0.005 [get_ports {io_pad[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 15.000 [current_design]
set_max_capacitance 0.005 [get_ports {p_out[9]}]
set_max_capacitance 0.005 [get_ports {p_out[8]}]
set_max_capacitance 0.005 [get_ports {p_out[7]}]
set_max_capacitance 0.005 [get_ports {p_out[6]}]
set_max_capacitance 0.005 [get_ports {p_out[5]}]
set_max_capacitance 0.005 [get_ports {p_out[4]}]
set_max_capacitance 0.005 [get_ports {p_out[3]}]
set_max_capacitance 0.005 [get_ports {p_out[2]}]
set_max_capacitance 0.005 [get_ports {p_out[1]}]
set_max_capacitance 0.005 [get_ports {p_out[0]}]
set_max_capacitance 0.005 [get_ports {io_pad[7]}]
set_max_capacitance 0.005 [get_ports {io_pad[6]}]
set_max_capacitance 0.005 [get_ports {io_pad[5]}]
set_max_capacitance 0.005 [get_ports {io_pad[4]}]
set_max_capacitance 0.005 [get_ports {io_pad[3]}]
set_max_capacitance 0.005 [get_ports {io_pad[2]}]
set_max_capacitance 0.005 [get_ports {io_pad[1]}]
set_max_capacitance 0.005 [get_ports {io_pad[0]}]
set_max_capacitance 0.005 [get_ports VDD]
set_max_capacitance 0.005 [get_ports VSS]
set_max_capacitance 0.005 [get_ports VDD_IOR]
set_max_capacitance 0.005 [get_ports VSS_IOR]
set_driving_cell -lib_cell BUFX12 -pin "Y" [get_ports poc_pad]
set_driving_cell -lib_cell BUFX12 -pin "Y" [get_ports clear_pad]
