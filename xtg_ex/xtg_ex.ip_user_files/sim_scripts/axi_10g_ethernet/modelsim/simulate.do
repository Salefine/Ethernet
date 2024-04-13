onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L ten_gig_eth_mac_v15_1_7 -L ten_gig_eth_pcs_pma_v6_0_15 -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_10g_ethernet xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_10g_ethernet.udo}

run -all

quit -force
