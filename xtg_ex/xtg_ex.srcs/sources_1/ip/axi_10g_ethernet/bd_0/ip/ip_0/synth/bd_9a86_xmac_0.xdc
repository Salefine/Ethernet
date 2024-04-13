#######################################################
# Ten Gigabit Ethernet MAC core constraints           #
#######################################################

# ignore paths to reset syncs
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells {bd_9a86_xmac_0_core/reset_gen/sync_rx_rst/reset_async*_reg}]]
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells {bd_9a86_xmac_0_core/reset_gen/sync_tx_rst/reset_async*_reg}]]
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells {bd_9a86_xmac_0_core/reset_gen/*sync_cpu_rst/reset_async*_reg}]]

# Flow control clock domain crossings

set_max_delay 6.4000 -datapath_only -from [get_cells bd_9a86_xmac_0_core/rx/rx_pause_control/pause_quanta_reg[*]] -to [get_cells bd_9a86_xmac_0_core/tx/tx_cntl/pause_tx_quanta_reg[*]]



# Ignore paths to synchronisers
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_mux_final/rs_disable_s/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_mux_final/rs_local_fault_s/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_mux_final/rs_remote_fault_s/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_mux_final/rs_link_intr_fault_s/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_cntl/rx_to_tx_pause_req/data_sync0_reg]

#######################################################
#  MANAGEMENT CONSTRAINTS                             #
#  Please do not edit these constraints.              #
#######################################################

set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rs_local_fail_i/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rs_remote_fail_i/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rs_link_intr_fail_i/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx_dcm_lock_i/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_dcm_lock_i/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/*/data_sync0_reg]
set_false_path -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/*/data_sync0_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/fc_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.fc_en_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.tx_en_int_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.enable_dic_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.ifg_enable_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.inband_fcs_en_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.jumbo_enable_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/mtu_tx_reg[*]}] -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.user_max_enable_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/mtu_tx_reg[*]}] -to [get_cells {bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.user_max_size_cap_reg[*]}]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.custom_preamble_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.vlan_enable_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/tx_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/tx/tx_config_sync/MAN_USED.stacked_vlan_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.rx_en_cap_reg]          
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.inband_crc_cap_reg]          
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.cust_preamble_cap_reg]       
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.rx_lt_disable_cap_reg]       
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.pause_length_disable_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx0_reg[*]}]     -to [get_cells {bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.unicast_addr_low_out_reg[*]}]          
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/pause_addr_hi_reg[*]}] -to [get_cells {bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.unicast_addr_hi_out_reg[*]}]          
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.jumbo_enable_cap_reg]        
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.vlan_enable_cap_reg]         
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/fc_reg[*]}]       -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.fc_enable_cap_reg]           
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.stacked_vlan_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/rx1_reg[*]}]     -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.enhanced_vlan_cap_reg]
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/mtu_rx_reg[*]}]  -to [get_cells bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.user_max_enable_cap_reg]     
set_max_delay 6.4000 -datapath_only -from [get_cells {bd_9a86_xmac_0_core/control_block/USE_MAN.register_block/mtu_rx_reg[*]}]  -to [get_cells {bd_9a86_xmac_0_core/rx/rx_config_sync/MAN_USED.user_max_size_cap_reg[*]}]         

set_false_path -to [get_cells bd_9a86_xmac_0_core/tx/tx_mux_final/*/data_sync0_reg]

# ignore the timing on the MDIO_IN signal as it is only sampled in the middle of a very large
# window.
set_false_path -to [get_cells bd_9a86_xmac_0_core/control_block/USE_MAN.mdio/mdio_in_reg1_reg]


