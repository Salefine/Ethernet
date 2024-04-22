# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 8
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.cache/wt [current_project]
set_property parent.project_path E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:1.6 [current_project]
set_property ip_repo_paths e:/xilinx_ETH/eth_lab1/Ethernet/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/imports/src/ax_debounce.v
  E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/imports/src/axi_10g_ethernet_0_axi_lite_sm.v
  E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/imports/src/axi_10g_ethernet_0_sync_reset.v
  E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/imports/src/udp_read_write_ctrl.v
  E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/imports/src/udp_test.v
}
read_ip -quiet E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/axi_10g_ethernet.xci
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/synth/axi_10g_ethernet_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_0/synth/bd_9a86_xmac_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/ip/ip_1/synth/bd_9a86_xpcs_0.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axi_10g_ethernet/bd_0/bd_9a86_ooc.xdc]

read_ip -quiet E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen.xci
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen_board.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/clk_gen/clk_gen_ooc.xdc]

read_ip -quiet E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axis_fifo/axis_fifo.xci
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axis_fifo/axis_fifo.xdc]
set_property used_in_implementation false [get_files -all e:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/axis_fifo/axis_fifo_ooc.xdc]

read_ip -quiet E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/sources_1/ip/udp_ip_0/udp_ip_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/constrs_1/new/physical.xdc
set_property used_in_implementation false [get_files E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/constrs_1/new/physical.xdc]

read_xdc E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/constrs_1/new/timing.xdc
set_property used_in_implementation false [get_files E:/xilinx_ETH/eth_lab1/Ethernet/xtg_ex/xtg_ex.srcs/constrs_1/new/timing.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top udp_test -part xc7k325tffg900-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef udp_test.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file udp_test_utilization_synth.rpt -pb udp_test_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
