# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# User Constraint File: mcs4_constraints_fast.sdc
# Constraints file for Genus and GPDK045 Cadence PDK - FAST CORNER

# Genus COMMANDS TO SET UNITS
set_time_unit -nanoseconds
set_load_unit -femtofarads

# COMMON VARIABLES
set EXTCLK "250kHz_CLK"
set EXTCLK_PERIOD 4000.0
set SKEW 100.0  ;# Adjusted to 2.5% of clock period (faster)
set MINRISE 20.0 ;# Adjusted to 0.5% of clock period (faster)
set MAXRISE 100.0 ;# Adjusted to 2.5% of clock period (faster)
set MINFALL 20.0 ;# Adjusted to 0.5% of clock period (faster)
set MAXFALL 100.0 ;# Adjusted to 2.5% of clock period (faster)

# Clock definition
create_clock -name $EXTCLK -period $EXTCLK_PERIOD [get_ports sysclk]

set_clock_transition -rise -min $MINRISE [get_clocks $EXTCLK]
set_clock_transition -rise -max $MAXRISE [get_clocks $EXTCLK]
set_clock_transition -fall -min $MINFALL [get_clocks $EXTCLK]
set_clock_transition -fall -max $MAXFALL [get_clocks $EXTCLK]

# TO DEFINE CLOCK SOURCE AND NETWORK LATENCY IN GENUS
set_clock_latency -rise -source 100.0 -early -late $EXTCLK
set_clock_latency -fall -source 100.0 -early -late $EXTCLK
set_clock_latency -rise 100.0 $EXTCLK
set_clock_latency -fall 100.0 $EXTCLK

# CLOCK UNCERTAINTY
set_clock_uncertainty -setup 100.0 [get_clocks $EXTCLK]
set_clock_uncertainty -hold  20.0 [get_clocks $EXTCLK]

# Input delay definition
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 200.0 -name I_DELAY [get_ports -filter "(direction == in || direction == inout) && name != sysclk"]

# Output delay definition
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 200.0 -name O_DELAY [get_ports -filter "direction == out || direction == inout"]

# Driving cell definition
set_driving_cell -lib_cell BUFX2 [get_ports {poc_pad clear_pad io_pad[*]}]

set_max_capacitance 5 [all_outputs]
set_max_fanout 15.000 [current_design]
set_max_transition 10

set_load 5 -pin_load [get_ports {p_out[*] io_pad[*]}]