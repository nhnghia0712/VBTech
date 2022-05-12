create_clock -period 2.857 -name Clk -waveform {0.000 1.429} [get_ports Clk]

# set_input_delay -clock Clk -max -add_delay 0.715 [get_ports Data_In]
# set_input_delay -clock Clk -min -add_delay 0.557 [get_ports Data_In]

# set_input_delay -clock Clk -max -add_delay 0.715 [get_ports Read]
# set_input_delay -clock Clk -min -add_delay 0.557 [get_ports Read]

# set_input_delay -clock Clk -max -add_delay 0.715 [get_ports Write]
# set_input_delay -clock Clk -min -add_delay 0.557 [get_ports Write]

# set_input_delay -clock Clk -max -add_delay 0.715 [get_ports Reset]
# set_input_delay -clock Clk -min -add_delay 0.557 [get_ports Reset]

# set_output_delay -clock Clk -max -add_delay 0.715 [get_ports Data_Out]
# set_output_delay -clock Clk -min -add_delay 0.557 [get_ports Data_Out]

# set_output_delay -clock Clk -max -add_delay 0.715 [get_ports Full]
# set_output_delay -clock Clk -min -add_delay 0.557 [get_ports Full]

# set_output_delay -clock Clk -max -add_delay 0.715 [get_ports Empty]
# set_output_delay -clock Clk -min -add_delay 0.557 [get_ports Empty]

set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_In[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Data_Out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports Clk]
set_property IOSTANDARD LVCMOS33 [get_ports Empty]
set_property IOSTANDARD LVCMOS33 [get_ports Full]
set_property IOSTANDARD LVCMOS33 [get_ports Read]
set_property IOSTANDARD LVCMOS33 [get_ports Reset]
set_property IOSTANDARD LVCMOS33 [get_ports Write]

