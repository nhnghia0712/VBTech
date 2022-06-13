create_clock -period 3.333 -name clk_sys -waveform {0.000 1.667} [get_ports clk_sys]
create_clock -period 2.857 -name cpu_clk -waveform {0.000 1.429} [get_ports cpu_clk]
