set_property SRC_FILE_INFO {cfile:D:/GitHub/VBTech/VBTech/FIFO_2clock/FIFO_2clock.srcs/constrs_1/new/constraints.xdc rfile:../../../FIFO_2clock.srcs/constrs_1/new/constraints.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_clocks *] 0.100
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type DRC -id {UCIO-1} -user "18521" -desc "Waive UCIO DRC violations" -objects [get_ports { wr_reset read data_in[6] rd_reset rd_clk write data_in[4] data_in[7] wr_clk data_in[5] data_in[3] data_out[2] data_in[0] data_out[7] data_out[5] empty data_out[3] data_in[1] data_out[0] data_out[6] data_out[1] full data_out[4] data_in[2] }] -strings { "*" } -strings { "*" } -timestamp "Tue May 17 08:35:02 GMT 2022"
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type METHODOLOGY -id {SYNTH-6} -user "18521" -desc "Waive SYNTH RAM violations" -objects [get_cells { inst2/mem_reg_bram_0 }] -timestamp "Tue May 17 08:49:19 GMT 2022"
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type METHODOLOGY -id {TIMING-18} -user "18521" -desc "Waive Timing violations" -timestamp "Tue May 17 08:48:47 GMT 2022"
