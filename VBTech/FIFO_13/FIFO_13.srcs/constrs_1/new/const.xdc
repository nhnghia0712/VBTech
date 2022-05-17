create_clock -period 2.857 -name clk -waveform {0.000 1.429} [get_ports clk]


set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports empty]
set_property IOSTANDARD LVCMOS33 [get_ports full]
set_property IOSTANDARD LVCMOS33 [get_ports read]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports write]

create_waiver -type METHODOLOGY -id {SYNTH-6} -user "18521" -desc "Waiver SYNTH RAM violations" -objects [get_cells { inst2/mem_reg_bram_0 }] -timestamp "Tue May 17 09:43:54 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[3] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[0] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[1] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { empty }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[4] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { full }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[7] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { read }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { write }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[0] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[4] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[5] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[2] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_in[6] }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { reset }] -objects [get_clocks clk] -strings { "input" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[7] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[1] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[2] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[3] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[5] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waiver Timing violations" -objects [get_ports { data_out[6] }] -objects [get_clocks clk] -strings { "output" } -timestamp "Tue May 17 09:44:41 GMT 2022"
create_waiver -type DRC -id {UCIO-1} -user "18521" -desc "Waiver UCIO DRC Violations" -objects [get_ports { reset clk write read data_in[6] data_in[7] data_out[7] data_in[1] data_in[2] data_in[5] data_in[0] data_in[4] data_out[6] data_out[1] data_out[0] empty data_out[4] data_in[3] full data_out[3] data_out[5] data_out[2] }] -strings { "*" } -strings { "*" } -timestamp "Tue May 17 09:56:13 GMT 2022"
