// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_10g_ethernet:3.1
// IP Revision: 11

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_10g_ethernet (
  tx_axis_aresetn,
  rx_axis_aresetn,
  tx_ifg_delay,
  dclk,
  txp,
  txn,
  rxp,
  rxn,
  signal_detect,
  tx_fault,
  tx_disable,
  pcspma_status,
  sim_speedup_control,
  rxrecclk_out,
  s_axi_aclk,
  s_axi_aresetn,
  xgmacint,
  areset_datapathclk_out,
  txusrclk_out,
  txusrclk2_out,
  gttxreset_out,
  gtrxreset_out,
  txuserrdy_out,
  coreclk_out,
  resetdone_out,
  reset_counter_done_out,
  qplllock_out,
  qplloutclk_out,
  qplloutrefclk_out,
  refclk_p,
  refclk_n,
  reset,
  s_axi_araddr,
  s_axi_arready,
  s_axi_arvalid,
  s_axi_awaddr,
  s_axi_awready,
  s_axi_awvalid,
  s_axi_bready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_rdata,
  s_axi_rready,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_wdata,
  s_axi_wready,
  s_axi_wvalid,
  s_axis_tx_tdata,
  s_axis_tx_tkeep,
  s_axis_tx_tlast,
  s_axis_tx_tready,
  s_axis_tx_tuser,
  s_axis_tx_tvalid,
  s_axis_pause_tdata,
  s_axis_pause_tvalid,
  m_axis_rx_tdata,
  m_axis_rx_tkeep,
  m_axis_rx_tlast,
  m_axis_rx_tuser,
  m_axis_rx_tvalid,
  tx_statistics_valid,
  tx_statistics_vector,
  rx_statistics_valid,
  rx_statistics_vector
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.tx_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST" *)
input wire tx_axis_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.rx_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST" *)
input wire rx_axis_aresetn;
input wire [7 : 0] tx_ifg_delay;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_9a86_dclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dclk CLK" *)
input wire dclk;
output wire txp;
output wire txn;
input wire rxp;
input wire rxn;
input wire signal_detect;
input wire tx_fault;
output wire tx_disable;
output wire [7 : 0] pcspma_status;
input wire sim_speedup_control;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rxrecclk_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_rxrecclk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxrecclk_out CLK" *)
output wire rxrecclk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s_axi_aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_9a86_s_axi_aclk, ASSOCIATED_BUSIF s_axi, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s_axi_aclk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.xgmacint, SENSITIVITY EDGE_RISING, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.xgmacint INTERRUPT" *)
output wire xgmacint;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.areset_datapathclk_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset_datapathclk_out RST" *)
output wire areset_datapathclk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txusrclk_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk_out CLK" *)
output wire txusrclk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.txusrclk2_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk2_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk2_out CLK" *)
output wire txusrclk2_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.gttxreset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gttxreset_out RST" *)
output wire gttxreset_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.gtrxreset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gtrxreset_out RST" *)
output wire gtrxreset_out;
output wire txuserrdy_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.coreclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.coreclk_out CLK" *)
output wire coreclk_out;
output wire resetdone_out;
output wire reset_counter_done_out;
output wire qplllock_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.qplloutclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_qplloutclk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qplloutclk_out CLK" *)
output wire qplloutclk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.qplloutrefclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_qplloutrefclk_out, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qplloutrefclk_out CLK" *)
output wire qplloutrefclk_out;
input wire refclk_p;
input wire refclk_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [10 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [10 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_9a86_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *)
input wire [63 : 0] s_axis_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *)
input wire [7 : 0] s_axis_tx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *)
input wire s_axis_tx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *)
output wire s_axis_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *)
input wire [0 : 0] s_axis_tx_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *)
input wire s_axis_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *)
input wire [15 : 0] s_axis_pause_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pause, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *)
input wire s_axis_pause_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *)
output wire [63 : 0] m_axis_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *)
output wire [7 : 0] m_axis_rx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *)
output wire m_axis_rx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *)
output wire m_axis_rx_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *)
output wire m_axis_rx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *)
output wire tx_statistics_valid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *)
output wire [25 : 0] tx_statistics_vector;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *)
output wire rx_statistics_valid;
(* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *)
output wire [29 : 0] rx_statistics_vector;

  bd_9a86 inst (
    .tx_axis_aresetn(tx_axis_aresetn),
    .rx_axis_aresetn(rx_axis_aresetn),
    .tx_ifg_delay(tx_ifg_delay),
    .dclk(dclk),
    .txp(txp),
    .txn(txn),
    .rxp(rxp),
    .rxn(rxn),
    .signal_detect(signal_detect),
    .tx_fault(tx_fault),
    .tx_disable(tx_disable),
    .pcspma_status(pcspma_status),
    .sim_speedup_control(sim_speedup_control),
    .rxrecclk_out(rxrecclk_out),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .xgmacint(xgmacint),
    .areset_datapathclk_out(areset_datapathclk_out),
    .txusrclk_out(txusrclk_out),
    .txusrclk2_out(txusrclk2_out),
    .gttxreset_out(gttxreset_out),
    .gtrxreset_out(gtrxreset_out),
    .txuserrdy_out(txuserrdy_out),
    .coreclk_out(coreclk_out),
    .resetdone_out(resetdone_out),
    .reset_counter_done_out(reset_counter_done_out),
    .qplllock_out(qplllock_out),
    .qplloutclk_out(qplloutclk_out),
    .qplloutrefclk_out(qplloutrefclk_out),
    .refclk_p(refclk_p),
    .refclk_n(refclk_n),
    .reset(reset),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arready(s_axi_arready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awready(s_axi_awready),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rready(s_axi_rready),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wready(s_axi_wready),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .s_axis_pause_tdata(s_axis_pause_tdata),
    .s_axis_pause_tvalid(s_axis_pause_tvalid),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .tx_statistics_valid(tx_statistics_valid),
    .tx_statistics_vector(tx_statistics_vector),
    .rx_statistics_valid(rx_statistics_valid),
    .rx_statistics_vector(rx_statistics_vector)
  );
endmodule
