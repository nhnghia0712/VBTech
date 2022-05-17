set_property SRC_FILE_INFO {cfile:D:/GitHub/VBTech/VBTech/FIFO_2clock/FIFO_2clock.srcs/constrs_1/new/constraints.xdc rfile:../../../FIFO_2clock.srcs/constrs_1/new/constraints.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_clocks *] 0.100
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type DRC -id {UCIO-1} -user "18521" -desc "Waive UCIO DRC violations" -objects [get_ports { data_in[2] data_in[5] data_in[4] read rd_clk write wr_reset rd_reset wr_clk data_in[7] data_in[3] data_in[6] data_out[1] empty data_in[1] data_out[7] data_out[6] full data_in[0] data_out[5] data_out[3] data_out[2] data_out[0] data_out[4] }] -strings { "*" } -strings { "*" } -timestamp "Tue May 17 08:35:02 GMT 2022"
