# The ram used to store the quanta information also needs the timing from write to read to be ignored
set_false_path -from [get_clocks -of_objects [get_ports s_axi_aclk]] -to [get_cells {bd_9a86_xmac_0_core/tx/tx_cntl/pause_tdata_reg[*]}]
