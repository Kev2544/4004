# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# User Constraint File: mcs4_constraints_fast.sdc
# Constraints file for Genus and GPDK045 Cadence PDK - FAST CORNER

# Set the current design
current_design mcs4_pad_frame

# Genus COMMANDS TO SET UNITS
set_time_unit -picoseconds
set_load_unit -femtofarads

# COMMON VARIABLES 
set EXTCLK "My_CLK"
set EXTCLK_PERIOD 50000.0

# CLOCK MAX AND MIN RISE/FALL TIME
set MINRISE [expr $EXTCLK_PERIOD * 4 / 100.0]
set MAXRISE [expr $EXTCLK_PERIOD * 5.5 / 100.0]
set MINFALL [expr $EXTCLK_PERIOD * 3 / 100.0]
set MAXFALL [expr $EXTCLK_PERIOD * 5 / 100.0]

# CLOCK LATENCY 
set CLK_LATENCY_R_SOURCE [expr $EXTCLK_PERIOD * 2 / 100.0]
set CLK_LATENCY_F_SOURCE [expr $EXTCLK_PERIOD * 1.5 / 100.0]
set CLK_LATENCY_R_NETWORK [expr $EXTCLK_PERIOD * 4 / 100.0]
set CLK_LATENCY_F_NETWORK [expr $EXTCLK_PERIOD * 3 / 100.0]

# CLOCK UNCERTAINTY 
set CLK_UNCERTAINTY_SETUP [expr $EXTCLK_PERIOD * 1 / 100.0]
set CLK_UNCERTAINTY_HOLD [expr $EXTCLK_PERIOD * 0.5 / 100.0]

# INPUT AND OUTPUT DELAY
set INPUT_DELAY [expr $EXTCLK_PERIOD * 1 / 100.0]
set OUTPUT_DELAY [expr $EXTCLK_PERIOD * 1 / 100.0]

# MAXIMUM TRANSITION IN DESIGN
set MAX_TRANSITION [expr $EXTCLK_PERIOD * 20 / 100.0]

set MAX_TRAN $MAX_TRANSITION

# ENVIRONMENTAL CONSTRAINTS 
set MAX_CAP 5
set MAX_FANOUT 15
set MAX_LOAD 5

# Clock definition
create_clock -name $EXTCLK -add -period $EXTCLK_PERIOD [clock_ports]

# slew attribute: Specifies the minimum rise, minimum fall, maximum rise, and
# maximum fall slew values, respectively, in picoseconds.
set_clock_transition -rise -min $MINRISE [get_clocks $EXTCLK]
set_clock_transition -rise -max $MAXRISE [get_clocks $EXTCLK]
set_clock_transition -fall -min $MINFALL [get_clocks $EXTCLK]
set_clock_transition -fall -max $MAXFALL [get_clocks $EXTCLK]

# TO DEFINE CLOCK SOURCE AND NETWORK LATENCY IN GENUS
set_clock_latency -rise -source $CLK_LATENCY_R_SOURCE -early -late $EXTCLK  	
set_clock_latency -fall -source $CLK_LATENCY_F_SOURCE -early -late $EXTCLK  	
set_clock_latency -rise $CLK_LATENCY_R_NETWORK $EXTCLK
set_clock_latency -fall $CLK_LATENCY_F_NETWORK $EXTCLK

# CLOCK UNCERTAINTY
set_clock_uncertainty -setup $CLK_UNCERTAINTY_SETUP [get_clocks $EXTCLK]
set_clock_uncertainty -hold $CLK_UNCERTAINTY_HOLD [get_clocks $EXTCLK]

# Input delay definition
set_input_delay -clock [get_clocks $EXTCLK] -add_delay $INPUT_DELAY -name I_DELAY [get_ports -filter "(direction == in || direction == inout) && name != sysclk"]

# Output delay definition
set_output_delay -clock [get_clocks $EXTCLK] -add_delay $OUTPUT_DELAY -name O_DELAY [get_ports -filter "direction == out || direction == inout"]

# Driving cell definition
set_driving_cell -lib_cell BUFX12 [get_ports { poc_pad clear_pad}]

# ENVIRONMENTAL CONSTRAINTS 
set_max_capacitance $MAX_CAP [all_outputs]
set_max_fanout $MAX_FANOUT [current_design]
set_load $MAX_LOAD -pin_load [get_ports { p_out[*] io_pad[*] }]

