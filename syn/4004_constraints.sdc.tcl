# ITESO University
# Kevyn Carrillo kevyn.carrillo@iteso.mx
# Roberto Vazquez roberto.vazquezv@iteso.mx
# User Constraint File: 4004_constraints.sdc
# Constraints file for Genus and GPDK045 Cadence PDK

# Genus COMMANDS TO SET UNITS
set_time_unit -nanoseconds
set_load_unit -femtofarads

# COMMON VARIABLES 
set EXTCLK "20MHz_CLK"
set EXTCLK_PERIOD 50.0
set SKEW 40.0
set MINRISE 30.0
set MAXRISE 50.0
set MINFALL 40.0
set MAXFALL 50.0


# Clock definition
define_clock -name $EXTCLK -period 50 -rise 50 -fall 50 [clock_ports]