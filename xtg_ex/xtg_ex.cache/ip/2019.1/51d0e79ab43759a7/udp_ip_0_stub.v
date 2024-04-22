// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr 15 09:57:43 2024
// Host        : weslie running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ udp_ip_0_stub.v
// Design      : udp_ip_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "udp_top,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(local_ip_addr, local_mac_addr, dst_ip_addr, 
  udp_src_port, udp_dst_port, udp_active, rx_axis_aclk, rx_axis_areset, mac_rx_axis_tdata, 
  mac_rx_axis_tkeep, mac_rx_axis_tvalid, mac_rx_axis_tlast, mac_rx_axis_tusr, 
  udp_rx_axis_tdata, udp_rx_axis_tkeep, udp_rx_axis_tvalid, udp_rx_axis_tlast, 
  udp_rx_axis_tusr, tx_axis_aclk, tx_axis_areset, udp_tx_axis_tdata, udp_tx_axis_tkeep, 
  udp_tx_axis_tvalid, udp_tx_axis_tlast, udp_tx_axis_tready, mac_tx_axis_tdata, 
  mac_tx_axis_tkeep, mac_tx_axis_tvalid, mac_tx_axis_tlast, mac_tx_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="local_ip_addr[31:0],local_mac_addr[47:0],dst_ip_addr[31:0],udp_src_port[15:0],udp_dst_port[15:0],udp_active,rx_axis_aclk,rx_axis_areset,mac_rx_axis_tdata[63:0],mac_rx_axis_tkeep[7:0],mac_rx_axis_tvalid,mac_rx_axis_tlast,mac_rx_axis_tusr,udp_rx_axis_tdata[63:0],udp_rx_axis_tkeep[7:0],udp_rx_axis_tvalid,udp_rx_axis_tlast,udp_rx_axis_tusr,tx_axis_aclk,tx_axis_areset,udp_tx_axis_tdata[63:0],udp_tx_axis_tkeep[7:0],udp_tx_axis_tvalid,udp_tx_axis_tlast,udp_tx_axis_tready,mac_tx_axis_tdata[63:0],mac_tx_axis_tkeep[7:0],mac_tx_axis_tvalid,mac_tx_axis_tlast,mac_tx_axis_tready" */;
  input [31:0]local_ip_addr;
  input [47:0]local_mac_addr;
  input [31:0]dst_ip_addr;
  input [15:0]udp_src_port;
  input [15:0]udp_dst_port;
  output udp_active;
  input rx_axis_aclk;
  input rx_axis_areset;
  input [63:0]mac_rx_axis_tdata;
  input [7:0]mac_rx_axis_tkeep;
  input mac_rx_axis_tvalid;
  input mac_rx_axis_tlast;
  input mac_rx_axis_tusr;
  output [63:0]udp_rx_axis_tdata;
  output [7:0]udp_rx_axis_tkeep;
  output udp_rx_axis_tvalid;
  output udp_rx_axis_tlast;
  output udp_rx_axis_tusr;
  input tx_axis_aclk;
  input tx_axis_areset;
  input [63:0]udp_tx_axis_tdata;
  input [7:0]udp_tx_axis_tkeep;
  input udp_tx_axis_tvalid;
  input udp_tx_axis_tlast;
  output udp_tx_axis_tready;
  output [63:0]mac_tx_axis_tdata;
  output [7:0]mac_tx_axis_tkeep;
  output mac_tx_axis_tvalid;
  output mac_tx_axis_tlast;
  input mac_tx_axis_tready;
endmodule
