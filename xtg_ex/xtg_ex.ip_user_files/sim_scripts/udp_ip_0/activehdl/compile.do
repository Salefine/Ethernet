vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/drivers/udp_ip_v1_0/src" \
"D:/tools/xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/tools/xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/tools/xilinx_2019/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/drivers/udp_ip_v1_0/src" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/alinx_udp_ip.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/arp_cache.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/arp_rx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/arp_tx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/public/dpram.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/frame_rx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/frame_rx_mode.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/frame_rx_top.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/frame_tx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/frame_tx_mode.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/frame_tx_top.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/icmp_reply.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/ip_rx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/ip_rx_mode.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/ip_tx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/ip_tx_mode.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/public/std_fwft_fifo.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/public/stream_counter.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/public/stream_to_fifo.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/public/sync_fifo.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/rx/udp_rx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/tx/udp_tx.vp" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/src/udp_top.v" \
"../../../../xtg_ex.srcs/sources_1/ip/udp_ip_0/sim/udp_ip_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

