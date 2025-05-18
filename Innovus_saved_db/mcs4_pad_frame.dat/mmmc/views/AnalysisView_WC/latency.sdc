set_clock_latency -rise 2  [get_clocks {My_CLK}]
set_clock_latency -fall 1.5  [get_clocks {My_CLK}]
set_clock_latency -source -early -min -rise 1 [get_clocks {My_CLK}]
set_clock_latency -source -early -min -fall 0.75 [get_clocks {My_CLK}]
set_clock_latency -source -early -max -rise 1 [get_clocks {My_CLK}]
set_clock_latency -source -early -max -fall 0.75 [get_clocks {My_CLK}]
set_clock_latency -source -late -min -rise 1 [get_clocks {My_CLK}]
set_clock_latency -source -late -min -fall 0.75 [get_clocks {My_CLK}]
set_clock_latency -source -late -max -rise 1 [get_clocks {My_CLK}]
set_clock_latency -source -late -max -fall 0.75 [get_clocks {My_CLK}]
set_clock_latency -source -early -min -rise  1.31309 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -min -fall  0.257057 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -max -rise  1.31309 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -max -fall  0.257057 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -min -rise  1.31309 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -min -fall  0.257057 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -max -rise  1.31309 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -max -fall  0.257057 [get_ports {sysclk}] -clock My_CLK 
