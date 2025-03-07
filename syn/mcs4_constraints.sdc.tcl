# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# User Constraint File: mcs4_constraints.sdc
# Constraints file for Genus and GPDK045 Cadence PDK

# Genus COMMANDS TO SET UNITS
set_time_unit -nanoseconds
set_load_unit -femtofarads

# COMMON VARIABLES 
set EXTCLK "20MHz_CLK"
set EXTCLK_PERIOD 50.0
set SKEW 2.5  ;# Adjusted to 5% of clock period
set MINRISE 0.5 ;# Adjusted to 1% of clock period
set MAXRISE 2.5 ;# Adjusted to 5% of clock period
set MINFALL 0.5 ;# Adjusted to 1% of clock period
set MAXFALL 2.5 ;# Adjusted to 5% of clock period

# Clock definition
create_clock -name $EXTCLK -period $EXTCLK_PERIOD -waveform {0 25} [get_ports sysclk]

set_clock_transition -rise -min $MINRISE [get_clocks $EXTCLK]
set_clock_transition -rise -max $MAXRISE [get_clocks $EXTCLK]
set_clock_transition -fall -min $MINFALL [get_clocks $EXTCLK]
set_clock_transition -fall -max $MAXFALL [get_clocks $EXTCLK]

# TO DEFINE CLOCK SOURCE AND NETWORK LATENCY IN GENUS
# Define waveform settings for Source Latency
set_clock_latency -rise -source 2.5 -early -late $EXTCLK  ;# Adjusted to 5% of clock period
set_clock_latency -fall -source 2.5 -early -late $EXTCLK  ;# Adjusted to 5% of clock period
# Define waveform settings for Network Latency
set_clock_latency -rise 2.5 $EXTCLK  ;# Adjusted to 5% of clock period
set_clock_latency -fall 2.5 $EXTCLK  ;# Adjusted to 5% of clock period

# CLOCK UNCERTAINTY
set_clock_uncertainty -setup 2.5 [get_clocks $EXTCLK]  ;# Adjusted to 5% of clock period
set_clock_uncertainty -hold  0.5 [get_clocks $EXTCLK]  ;# Adjusted to 1% of clock period

# Input delay definition: This is the delay coming from outside the design
# for this design it's defined at 10% the period of the clock.
set_input_delay -clock [get_clocks $EXTCLK] -add_delay 5 -name I_DELAY  [get_ports -filter "direction == in && name != sysclk"]

# Output delay definition: This is the delay going outside the design
# for this design it's defined at 10% the period of the clock.
set_output_delay -clock [get_clocks $EXTCLK] -add_delay 5 -name O_DELAY [get_ports -filter "direction == out"]

# Driving cell definition
# BUFx2 is a buffer of 2 drive strength of the slow_vdd1v0_basicCells library
set_driving_cell -lib_cell BUFX2 [get_ports {test_pad poc_pad clear_pad}]

set_max_capacitance 5 [all_outputs]

set_max_fanout 15.000 [current_design]

set_max_transition 20 [current_design]

# Alternative to external_pin_cap
# set_load 5 -pin_load [get_ports {SUM sum_struct}]

create_generated_clock -name CLK_DIV1 -source [get_ports sysclk]  -divide_by 2 [get_pins clockgen/clk1]
create_generated_clock -name CLK_DIV2 -source [get_ports sysclk]  -divide_by 2 -invert [get_pins clockgen/clk2]