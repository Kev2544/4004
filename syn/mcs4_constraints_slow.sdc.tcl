# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# User Constraint File: mcs4_constraints_slow.sdc
# Constraints file for Genus and GPDK045 Cadence PDK - SLOW CORNER

# Genus COMMANDS TO SET UNITS
set_time_unit -nanoseconds
set_load_unit -femtofarads

# COMMON VARIABLES
set EXTCLK "20MHz_CLK"
set EXTCLK_PERIOD 50.0
set SKEW 5.0  ;# Adjusted to 10% of clock period (slower)
set MINRISE 1.0 ;# Adjusted to 2% of clock period (slower)
set MAXRISE 5.0 ;# Adjusted to 10% of clock period (slower)
set MINFALL 1.0 ;# Adjusted to 2% of clock period (slower)
set MAXFALL 5.0 ;# Adjusted to 10% of clock period (slower)

# Clock definition
create_clock -name $EXTCLK -period $EXTCLK_PERIOD -waveform {0 25} [get_ports sysclk]

set_clock_transition -rise -min $MINRISE [get_clocks $EXTCLK]
set_clock_transition -rise -max $MAXRISE [get_clocks $EXTCLK]
set_clock_transition -fall -min $MINFALL [get_clocks $EXTCLK]
set_clock_transition -fall -max $MAXFALL [get_clocks $EXTCLK]

# TO DEFINE CLOCK SOURCE AND NETWORK LATENCY IN GENUS
# Define waveform settings for Source Latency
set_clock_latency -rise -source 5.0 -early -late $EXTCLK  ;# Adjusted to 10% of clock period (slower)
set_clock_latency -fall -source 5.0 -early -late $EXTCLK  ;# Adjusted to 10% of clock period (slower)
# Define waveform settings for Network Latency
set_clock_latency -rise 5.0 $EXTCLK  ;# Adjusted to 10% of clock period (slower)
set_clock_latency -fall 5.0 $EXTCLK  ;# Adjusted to 10% of clock period (slower)

# CLOCK UNCERTAINTY
set_clock_uncertainty -setup 5.0 [get_clocks $EXTCLK]  ;# Adjusted to 10% of clock period (slower)
set_clock_uncertainty -hold  1.0 [get_clocks $EXTCLK]  ;# Adjusted to 2% of clock period (slower)

# Input delay definition: This is the delay coming from outside the design
# for this design it's defined at 20% the period of the clock (slower).
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 10 -name I_DELAY  [get_ports -filter "(direction == in || direction == inout) && name != sysclk"]

# Output delay definition: This is the delay going outside the design
# for this design it's defined at 20% the period of the clock (slower).
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 10 -name O_DELAY [get_ports -filter "direction == out || direction == inout"]

# Driving cell definition
# BUFx2 is a buffer of 2 drive strength of the slow_vdd1v0_basicCells library
set_driving_cell -lib_cell BUFX2 [get_ports {poc_pad clear_pad io_pad[*]}]

set_max_capacitance 5 [all_outputs]

set_max_fanout 15.000 [current_design]

set_max_transition 40  ;# Slower transition

# Alternative to external_pin_cap
set_load 5 -pin_load [get_ports {p_out[*] io_pad[*]}]

#create_generated_clock -name CLK_DIV1 -source [get_ports sysclk]  -divide_by 2 [get_pins clockgen/clk1]
#create_generated_clock -name CLK_DIV2 -source [get_ports sysclk]  -divide_by 2 -invert [get_pins clockgen/clk2]