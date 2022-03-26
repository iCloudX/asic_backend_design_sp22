###################################################################

# Created by write_sdc on Thu Sep  9 17:08:44 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 10  -waveform {5 10}

set_clock_latency -max 0.1  [get_clocks clk]
set_clock_latency -source -max 0.4  [get_clocks clk]
set_clock_uncertainty -setup 0.3  [get_clocks clk]
set_clock_transition -max -rise 0.2 [get_clocks clk]
set_clock_transition -max -fall 0.2 [get_clocks clk]
set_clock_transition -min -rise 0.2 [get_clocks clk]
set_clock_transition -min -fall 0.2 [get_clocks clk]

set_input_delay -clock clk  -max 0.5  [get_ports {in}]
set_input_delay -clock clk  -max 0.5  [get_ports {rst_n}]
set_output_delay -clock clk  -max 0.5  [get_ports {out}]
set_input_delay -clock clk  -min 0.5  [get_ports {in}]
set_input_delay -clock clk  -min 0.5  [get_ports {rst_n}]
set_output_delay -clock clk  -min 0.5  [get_ports {out}]

set_max_transition 10 [get_ports {in}]
set_max_capacitance 100 [get_ports {out}]
