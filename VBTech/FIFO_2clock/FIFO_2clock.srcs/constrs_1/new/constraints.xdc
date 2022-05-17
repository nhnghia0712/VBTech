create_clock -period 3.333 -name rd_clk -waveform {0.000 1.667} [get_ports rd_clk]
create_clock -period 2.857 -name wr_clk -waveform {0.000 1.429} [get_ports wr_clk]

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
set_property IOSTANDARD LVCMOS33 [get_ports empty]
set_property IOSTANDARD LVCMOS33 [get_ports full]
set_property IOSTANDARD LVCMOS33 [get_ports rd_clk]
set_property IOSTANDARD LVCMOS33 [get_ports rd_reset]
set_property IOSTANDARD LVCMOS33 [get_ports read]
set_property IOSTANDARD LVCMOS33 [get_ports wr_clk]
set_property IOSTANDARD LVCMOS33 [get_ports wr_reset]
set_property IOSTANDARD LVCMOS33 [get_ports write]

set_clock_groups -name clk -asynchronous -group [get_clocks *]

set_max_delay -datapath_only -from [get_clocks *] 0.100


create_waiver -type DRC -id {UCIO-1} -user "18521" -desc "Waive UCIO DRC violations" -objects [get_ports { wr_reset read data_in[6] rd_reset rd_clk write data_in[4] data_in[7] wr_clk data_in[5] data_in[3] data_out[2] data_in[0] data_out[7] data_out[5] empty data_out[3] data_in[1] data_out[0] data_out[6] data_out[1] full data_out[4] data_in[2] }] -strings { "*" } -strings { "*" } -timestamp "Tue May 17 08:35:02 GMT 2022"
create_waiver -type METHODOLOGY -id {SYNTH-6} -user "18521" -desc "Waive SYNTH RAM violations" -objects [get_cells { inst2/mem_reg_bram_0 }] -timestamp "Tue May 17 08:49:19 GMT 2022"
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waive Timing violations" -timestamp "Tue May 17 08:48:47 GMT 2022"
