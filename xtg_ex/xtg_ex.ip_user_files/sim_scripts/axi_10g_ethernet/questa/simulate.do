onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_10g_ethernet_opt

do {wave.do}

view wave
view structure
view signals

do {axi_10g_ethernet.udo}

run -all

quit -force
