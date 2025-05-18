set_clock_latency -rise 2.4  [get_clocks {My_CLK}]
set_clock_latency -fall 1.8  [get_clocks {My_CLK}]
set_clock_latency -source -early -min -rise 1.2 [get_clocks {My_CLK}]
set_clock_latency -source -early -min -fall 0.9 [get_clocks {My_CLK}]
set_clock_latency -source -early -max -rise 1.2 [get_clocks {My_CLK}]
set_clock_latency -source -early -max -fall 0.9 [get_clocks {My_CLK}]
set_clock_latency -source -late -min -rise 1.2 [get_clocks {My_CLK}]
set_clock_latency -source -late -min -fall 0.9 [get_clocks {My_CLK}]
set_clock_latency -source -late -max -rise 1.2 [get_clocks {My_CLK}]
set_clock_latency -source -late -max -fall 0.9 [get_clocks {My_CLK}]
set_clock_latency -source -early -min -rise  3.17075 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -min -fall  2.05621 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -max -rise  3.17075 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -early -max -fall  2.05621 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -min -rise  3.17075 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -min -fall  2.05621 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -max -rise  3.17075 [get_ports {sysclk}] -clock My_CLK 
set_clock_latency -source -late -max -fall  2.05621 [get_ports {sysclk}] -clock My_CLK 
