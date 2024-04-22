set_property IOSTANDARD LVCMOS15 [get_ports rst_n]
set_property IOSTANDARD LVCMOS15 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports push_button]
set_property IOSTANDARD LVCMOS15 [get_ports sfp_tx_disable]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]

set_property PACKAGE_PIN AB7 [get_ports rst_n]
set_property PACKAGE_PIN AB8 [get_ports {led[0]}]
set_property PACKAGE_PIN AA8 [get_ports {led[1]}]
set_property PACKAGE_PIN AC9 [get_ports {led[2]}]
set_property PACKAGE_PIN AB9 [get_ports {led[3]}]
set_property PACKAGE_PIN AB12 [get_ports push_button]
set_property PACKAGE_PIN G8 [get_ports sfp_refclkp]
set_property PACKAGE_PIN G4 [get_ports sfp_rxp]
set_property PACKAGE_PIN Y20 [get_ports sfp_tx_disable]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_shared_clock_reset_block/coreclk_out]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {mac_tx_axis_tkeep[0]} {mac_tx_axis_tkeep[1]} {mac_tx_axis_tkeep[2]} {mac_tx_axis_tkeep[3]} {mac_tx_axis_tkeep[4]} {mac_tx_axis_tkeep[5]} {mac_tx_axis_tkeep[6]} {mac_tx_axis_tkeep[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 64 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {udp_rx_axis_tdata[0]} {udp_rx_axis_tdata[1]} {udp_rx_axis_tdata[2]} {udp_rx_axis_tdata[3]} {udp_rx_axis_tdata[4]} {udp_rx_axis_tdata[5]} {udp_rx_axis_tdata[6]} {udp_rx_axis_tdata[7]} {udp_rx_axis_tdata[8]} {udp_rx_axis_tdata[9]} {udp_rx_axis_tdata[10]} {udp_rx_axis_tdata[11]} {udp_rx_axis_tdata[12]} {udp_rx_axis_tdata[13]} {udp_rx_axis_tdata[14]} {udp_rx_axis_tdata[15]} {udp_rx_axis_tdata[16]} {udp_rx_axis_tdata[17]} {udp_rx_axis_tdata[18]} {udp_rx_axis_tdata[19]} {udp_rx_axis_tdata[20]} {udp_rx_axis_tdata[21]} {udp_rx_axis_tdata[22]} {udp_rx_axis_tdata[23]} {udp_rx_axis_tdata[24]} {udp_rx_axis_tdata[25]} {udp_rx_axis_tdata[26]} {udp_rx_axis_tdata[27]} {udp_rx_axis_tdata[28]} {udp_rx_axis_tdata[29]} {udp_rx_axis_tdata[30]} {udp_rx_axis_tdata[31]} {udp_rx_axis_tdata[32]} {udp_rx_axis_tdata[33]} {udp_rx_axis_tdata[34]} {udp_rx_axis_tdata[35]} {udp_rx_axis_tdata[36]} {udp_rx_axis_tdata[37]} {udp_rx_axis_tdata[38]} {udp_rx_axis_tdata[39]} {udp_rx_axis_tdata[40]} {udp_rx_axis_tdata[41]} {udp_rx_axis_tdata[42]} {udp_rx_axis_tdata[43]} {udp_rx_axis_tdata[44]} {udp_rx_axis_tdata[45]} {udp_rx_axis_tdata[46]} {udp_rx_axis_tdata[47]} {udp_rx_axis_tdata[48]} {udp_rx_axis_tdata[49]} {udp_rx_axis_tdata[50]} {udp_rx_axis_tdata[51]} {udp_rx_axis_tdata[52]} {udp_rx_axis_tdata[53]} {udp_rx_axis_tdata[54]} {udp_rx_axis_tdata[55]} {udp_rx_axis_tdata[56]} {udp_rx_axis_tdata[57]} {udp_rx_axis_tdata[58]} {udp_rx_axis_tdata[59]} {udp_rx_axis_tdata[60]} {udp_rx_axis_tdata[61]} {udp_rx_axis_tdata[62]} {udp_rx_axis_tdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 64 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {udp_tx_axis_tdata[0]} {udp_tx_axis_tdata[1]} {udp_tx_axis_tdata[2]} {udp_tx_axis_tdata[3]} {udp_tx_axis_tdata[4]} {udp_tx_axis_tdata[5]} {udp_tx_axis_tdata[6]} {udp_tx_axis_tdata[7]} {udp_tx_axis_tdata[8]} {udp_tx_axis_tdata[9]} {udp_tx_axis_tdata[10]} {udp_tx_axis_tdata[11]} {udp_tx_axis_tdata[12]} {udp_tx_axis_tdata[13]} {udp_tx_axis_tdata[14]} {udp_tx_axis_tdata[15]} {udp_tx_axis_tdata[16]} {udp_tx_axis_tdata[17]} {udp_tx_axis_tdata[18]} {udp_tx_axis_tdata[19]} {udp_tx_axis_tdata[20]} {udp_tx_axis_tdata[21]} {udp_tx_axis_tdata[22]} {udp_tx_axis_tdata[23]} {udp_tx_axis_tdata[24]} {udp_tx_axis_tdata[25]} {udp_tx_axis_tdata[26]} {udp_tx_axis_tdata[27]} {udp_tx_axis_tdata[28]} {udp_tx_axis_tdata[29]} {udp_tx_axis_tdata[30]} {udp_tx_axis_tdata[31]} {udp_tx_axis_tdata[32]} {udp_tx_axis_tdata[33]} {udp_tx_axis_tdata[34]} {udp_tx_axis_tdata[35]} {udp_tx_axis_tdata[36]} {udp_tx_axis_tdata[37]} {udp_tx_axis_tdata[38]} {udp_tx_axis_tdata[39]} {udp_tx_axis_tdata[40]} {udp_tx_axis_tdata[41]} {udp_tx_axis_tdata[42]} {udp_tx_axis_tdata[43]} {udp_tx_axis_tdata[44]} {udp_tx_axis_tdata[45]} {udp_tx_axis_tdata[46]} {udp_tx_axis_tdata[47]} {udp_tx_axis_tdata[48]} {udp_tx_axis_tdata[49]} {udp_tx_axis_tdata[50]} {udp_tx_axis_tdata[51]} {udp_tx_axis_tdata[52]} {udp_tx_axis_tdata[53]} {udp_tx_axis_tdata[54]} {udp_tx_axis_tdata[55]} {udp_tx_axis_tdata[56]} {udp_tx_axis_tdata[57]} {udp_tx_axis_tdata[58]} {udp_tx_axis_tdata[59]} {udp_tx_axis_tdata[60]} {udp_tx_axis_tdata[61]} {udp_tx_axis_tdata[62]} {udp_tx_axis_tdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {mac_rx_axis_tkeep[0]} {mac_rx_axis_tkeep[1]} {mac_rx_axis_tkeep[2]} {mac_rx_axis_tkeep[3]} {mac_rx_axis_tkeep[4]} {mac_rx_axis_tkeep[5]} {mac_rx_axis_tkeep[6]} {mac_rx_axis_tkeep[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 64 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {mac_rx_axis_tdata[0]} {mac_rx_axis_tdata[1]} {mac_rx_axis_tdata[2]} {mac_rx_axis_tdata[3]} {mac_rx_axis_tdata[4]} {mac_rx_axis_tdata[5]} {mac_rx_axis_tdata[6]} {mac_rx_axis_tdata[7]} {mac_rx_axis_tdata[8]} {mac_rx_axis_tdata[9]} {mac_rx_axis_tdata[10]} {mac_rx_axis_tdata[11]} {mac_rx_axis_tdata[12]} {mac_rx_axis_tdata[13]} {mac_rx_axis_tdata[14]} {mac_rx_axis_tdata[15]} {mac_rx_axis_tdata[16]} {mac_rx_axis_tdata[17]} {mac_rx_axis_tdata[18]} {mac_rx_axis_tdata[19]} {mac_rx_axis_tdata[20]} {mac_rx_axis_tdata[21]} {mac_rx_axis_tdata[22]} {mac_rx_axis_tdata[23]} {mac_rx_axis_tdata[24]} {mac_rx_axis_tdata[25]} {mac_rx_axis_tdata[26]} {mac_rx_axis_tdata[27]} {mac_rx_axis_tdata[28]} {mac_rx_axis_tdata[29]} {mac_rx_axis_tdata[30]} {mac_rx_axis_tdata[31]} {mac_rx_axis_tdata[32]} {mac_rx_axis_tdata[33]} {mac_rx_axis_tdata[34]} {mac_rx_axis_tdata[35]} {mac_rx_axis_tdata[36]} {mac_rx_axis_tdata[37]} {mac_rx_axis_tdata[38]} {mac_rx_axis_tdata[39]} {mac_rx_axis_tdata[40]} {mac_rx_axis_tdata[41]} {mac_rx_axis_tdata[42]} {mac_rx_axis_tdata[43]} {mac_rx_axis_tdata[44]} {mac_rx_axis_tdata[45]} {mac_rx_axis_tdata[46]} {mac_rx_axis_tdata[47]} {mac_rx_axis_tdata[48]} {mac_rx_axis_tdata[49]} {mac_rx_axis_tdata[50]} {mac_rx_axis_tdata[51]} {mac_rx_axis_tdata[52]} {mac_rx_axis_tdata[53]} {mac_rx_axis_tdata[54]} {mac_rx_axis_tdata[55]} {mac_rx_axis_tdata[56]} {mac_rx_axis_tdata[57]} {mac_rx_axis_tdata[58]} {mac_rx_axis_tdata[59]} {mac_rx_axis_tdata[60]} {mac_rx_axis_tdata[61]} {mac_rx_axis_tdata[62]} {mac_rx_axis_tdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 64 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {mac_tx_axis_tdata[0]} {mac_tx_axis_tdata[1]} {mac_tx_axis_tdata[2]} {mac_tx_axis_tdata[3]} {mac_tx_axis_tdata[4]} {mac_tx_axis_tdata[5]} {mac_tx_axis_tdata[6]} {mac_tx_axis_tdata[7]} {mac_tx_axis_tdata[8]} {mac_tx_axis_tdata[9]} {mac_tx_axis_tdata[10]} {mac_tx_axis_tdata[11]} {mac_tx_axis_tdata[12]} {mac_tx_axis_tdata[13]} {mac_tx_axis_tdata[14]} {mac_tx_axis_tdata[15]} {mac_tx_axis_tdata[16]} {mac_tx_axis_tdata[17]} {mac_tx_axis_tdata[18]} {mac_tx_axis_tdata[19]} {mac_tx_axis_tdata[20]} {mac_tx_axis_tdata[21]} {mac_tx_axis_tdata[22]} {mac_tx_axis_tdata[23]} {mac_tx_axis_tdata[24]} {mac_tx_axis_tdata[25]} {mac_tx_axis_tdata[26]} {mac_tx_axis_tdata[27]} {mac_tx_axis_tdata[28]} {mac_tx_axis_tdata[29]} {mac_tx_axis_tdata[30]} {mac_tx_axis_tdata[31]} {mac_tx_axis_tdata[32]} {mac_tx_axis_tdata[33]} {mac_tx_axis_tdata[34]} {mac_tx_axis_tdata[35]} {mac_tx_axis_tdata[36]} {mac_tx_axis_tdata[37]} {mac_tx_axis_tdata[38]} {mac_tx_axis_tdata[39]} {mac_tx_axis_tdata[40]} {mac_tx_axis_tdata[41]} {mac_tx_axis_tdata[42]} {mac_tx_axis_tdata[43]} {mac_tx_axis_tdata[44]} {mac_tx_axis_tdata[45]} {mac_tx_axis_tdata[46]} {mac_tx_axis_tdata[47]} {mac_tx_axis_tdata[48]} {mac_tx_axis_tdata[49]} {mac_tx_axis_tdata[50]} {mac_tx_axis_tdata[51]} {mac_tx_axis_tdata[52]} {mac_tx_axis_tdata[53]} {mac_tx_axis_tdata[54]} {mac_tx_axis_tdata[55]} {mac_tx_axis_tdata[56]} {mac_tx_axis_tdata[57]} {mac_tx_axis_tdata[58]} {mac_tx_axis_tdata[59]} {mac_tx_axis_tdata[60]} {mac_tx_axis_tdata[61]} {mac_tx_axis_tdata[62]} {mac_tx_axis_tdata[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 8 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {udp_tx_axis_tkeep[0]} {udp_tx_axis_tkeep[1]} {udp_tx_axis_tkeep[2]} {udp_tx_axis_tkeep[3]} {udp_tx_axis_tkeep[4]} {udp_tx_axis_tkeep[5]} {udp_tx_axis_tkeep[6]} {udp_tx_axis_tkeep[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {udp_rx_axis_tkeep[0]} {udp_rx_axis_tkeep[1]} {udp_rx_axis_tkeep[2]} {udp_rx_axis_tkeep[3]} {udp_rx_axis_tkeep[4]} {udp_rx_axis_tkeep[5]} {udp_rx_axis_tkeep[6]} {udp_rx_axis_tkeep[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list mac_rx_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list mac_rx_axis_tusr]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list mac_rx_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list mac_tx_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list mac_tx_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list mac_tx_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list udp_rx_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list udp_rx_axis_tusr]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list udp_rx_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list udp_tx_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list udp_tx_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list udp_tx_axis_tvalid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets coreclk]

