-makelib ies_lib/xil_defaultlib -sv \
  "D:/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen_clk_wiz.v" \
  "../../../../xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

