-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/ten_gig_eth_mac_v15_1_7 \
  "../../../ipstatic/hdl/ten_gig_eth_mac_v15_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/ten_gig_eth_mac_v15_1_1/hdl/bd_9a86_xmac_0_core.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0_sync_resetn.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0_block.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0.v" \
-endlib
-makelib xcelium_lib/ten_gig_eth_pcs_pma_v6_0_15 \
  "../../../ipstatic/hdl/ten_gig_eth_pcs_pma_v6_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_gtwizard_10gbaser_gt.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_gtwizard_10gbaser_multi_gt.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_ff_synchronizer_rst.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_ff_synchronizer.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_local_clock_and_reset.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_sim_speedup_controller.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_cable_pull_logic.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_block.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_support.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_shared_clock_and_reset.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_gt_common.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_ff_synchronizer_rst2.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../ipstatic/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_2/sim/bd_9a86_prtad_driver_0.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_3/sim/bd_9a86_dcm_locked_driver_0.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_4/sim/bd_9a86_pma_pmd_type_driver_0.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/sim/bd_9a86.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/sim/axi_10g_ethernet.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

