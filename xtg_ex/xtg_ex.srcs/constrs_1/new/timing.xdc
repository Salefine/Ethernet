set_clock_groups -name async_clk0 -asynchronous -group [get_clocks sfp_refclkp] -group [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/RXOUTCLK]
set_clock_groups -name async_clk1 -asynchronous -group [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/TXOUTCLK] -group [get_clocks sfp_refclkp]

set_false_path -from [get_clocks -of_objects [get_pins clk/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks sfp_refclkp]
set_multicycle_path -from [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/RXOUTCLK] -to [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/RXOUTCLK] 2
set_multicycle_path -hold -from [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/RXOUTCLK] -to [get_clocks mac_subsystem/inst/xpcs/inst/ten_gig_eth_pcs_pma_block_i/gt0_gtwizard_10gbaser_multi_gt_i/gt0_gtwizard_10gbaser_i/gtxe2_i/RXOUTCLK] 1
set_max_delay -from [get_clocks sfp_refclkp] -to [get_clocks -of_objects [get_pins clk/inst/mmcm_adv_inst/CLKOUT0]] 8.000
