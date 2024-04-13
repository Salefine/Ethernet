//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_9a86.bd
//Design : bd_9a86
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_9a86,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_9a86,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_10g_ethernet.hwdef" *) 
module bd_9a86
   (areset_datapathclk_out,
    coreclk_out,
    dclk,
    gtrxreset_out,
    gttxreset_out,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    pcspma_status,
    qplllock_out,
    qplloutclk_out,
    qplloutrefclk_out,
    refclk_n,
    refclk_p,
    reset,
    reset_counter_done_out,
    resetdone_out,
    rx_axis_aresetn,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    rxrecclk_out,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
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
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    signal_detect,
    sim_speedup_control,
    tx_axis_aresetn,
    tx_disable,
    tx_fault,
    tx_ifg_delay,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txp,
    txuserrdy_out,
    txusrclk2_out,
    txusrclk_out,
    xgmacint);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESET_DATAPATHCLK_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESET_DATAPATHCLK_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output areset_datapathclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CORECLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CORECLK_OUT, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000" *) output coreclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DCLK, CLK_DOMAIN bd_9a86_dclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input dclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.GTRXRESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.GTRXRESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output gtrxreset_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.GTTXRESET_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.GTTXRESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output gttxreset_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [63:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *) output [7:0]m_axis_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *) output m_axis_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *) output m_axis_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  output [7:0]pcspma_status;
  output qplllock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QPLLOUTCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QPLLOUTCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_qplloutclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000" *) output qplloutclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QPLLOUTREFCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QPLLOUTREFCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_qplloutrefclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000" *) output qplloutrefclk_out;
  input refclk_n;
  input refclk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output reset_counter_done_out;
  output resetdone_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RX_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RX_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rx_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *) output rx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *) output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RXRECCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RXRECCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_rxrecclk_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000" *) output rxrecclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF s_axi, CLK_DOMAIN bd_9a86_s_axi_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_9a86_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [10:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [10:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pause, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]s_axis_pause_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *) input s_axis_pause_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [63:0]s_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *) input [7:0]s_axis_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *) input s_axis_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *) output s_axis_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *) input [0:0]s_axis_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *) input s_axis_tx_tvalid;
  input signal_detect;
  input sim_speedup_control;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.TX_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.TX_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input tx_axis_aresetn;
  output tx_disable;
  input tx_fault;
  input [7:0]tx_ifg_delay;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *) output tx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *) output [25:0]tx_statistics_vector;
  output txn;
  output txp;
  output txuserrdy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK2_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXUSRCLK2_OUT, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk2_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000" *) output txusrclk2_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TXUSRCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000" *) output txusrclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.XGMACINT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.XGMACINT, PortWidth 1, SENSITIVITY EDGE_RISING" *) output xgmacint;

  wire dclk_1;
  wire [0:0]dcm_locked_driver_dout;
  wire [2:0]pma_pmd_type_driver_dout;
  wire [4:0]prtad_driver_dout;
  wire refclk_n_1;
  wire refclk_p_1;
  wire reset_1;
  wire rx_axis_aresetn_1;
  wire rxn_1;
  wire rxp_1;
  wire [10:0]s_axi_1_ARADDR;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [10:0]s_axi_1_AWADDR;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire [15:0]s_axis_pause_1_TDATA;
  wire s_axis_pause_1_TVALID;
  wire [63:0]s_axis_tx_1_TDATA;
  wire [7:0]s_axis_tx_1_TKEEP;
  wire s_axis_tx_1_TLAST;
  wire s_axis_tx_1_TREADY;
  wire [0:0]s_axis_tx_1_TUSER;
  wire s_axis_tx_1_TVALID;
  wire signal_detect_1;
  wire sim_speedup_control_1;
  wire tx_axis_aresetn_1;
  wire tx_fault_1;
  wire [7:0]tx_ifg_delay_1;
  wire [63:0]xmac_m_axis_rx_TDATA;
  wire [7:0]xmac_m_axis_rx_TKEEP;
  wire xmac_m_axis_rx_TLAST;
  wire xmac_m_axis_rx_TUSER;
  wire xmac_m_axis_rx_TVALID;
  wire xmac_mdio_xgmac_MDC;
  wire xmac_mdio_xgmac_MDIO_I;
  wire xmac_mdio_xgmac_MDIO_O;
  wire xmac_rx_statistics_valid;
  wire [29:0]xmac_rx_statistics_vector;
  wire xmac_tx_statistics_valid;
  wire [25:0]xmac_tx_statistics_vector;
  wire xmac_xgmacint;
  wire [7:0]xmac_xgmii_xgmac_RXC;
  wire [63:0]xmac_xgmii_xgmac_RXD;
  wire [7:0]xmac_xgmii_xgmac_TXC;
  wire [63:0]xmac_xgmii_xgmac_TXD;
  wire xpcs_areset_datapathclk_out;
  wire [15:0]xpcs_core_gt_drp_interface_DADDR;
  wire xpcs_core_gt_drp_interface_DEN;
  wire [15:0]xpcs_core_gt_drp_interface_DI;
  wire [15:0]xpcs_core_gt_drp_interface_DO;
  wire xpcs_core_gt_drp_interface_DRDY;
  wire xpcs_core_gt_drp_interface_DWE;
  wire [7:0]xpcs_core_status;
  wire xpcs_coreclk_out;
  wire xpcs_drp_req;
  wire xpcs_gtrxreset_out;
  wire xpcs_gttxreset_out;
  wire xpcs_qplllock_out;
  wire xpcs_qplloutclk_out;
  wire xpcs_qplloutrefclk_out;
  wire xpcs_reset_counter_done_out;
  wire xpcs_resetdone_out;
  wire xpcs_rxrecclk_out;
  wire xpcs_tx_disable;
  wire xpcs_txn;
  wire xpcs_txp;
  wire xpcs_txuserrdy_out;
  wire xpcs_txusrclk2_out;
  wire xpcs_txusrclk_out;

  assign areset_datapathclk_out = xpcs_areset_datapathclk_out;
  assign coreclk_out = xpcs_coreclk_out;
  assign dclk_1 = dclk;
  assign gtrxreset_out = xpcs_gtrxreset_out;
  assign gttxreset_out = xpcs_gttxreset_out;
  assign m_axis_rx_tdata[63:0] = xmac_m_axis_rx_TDATA;
  assign m_axis_rx_tkeep[7:0] = xmac_m_axis_rx_TKEEP;
  assign m_axis_rx_tlast = xmac_m_axis_rx_TLAST;
  assign m_axis_rx_tuser = xmac_m_axis_rx_TUSER;
  assign m_axis_rx_tvalid = xmac_m_axis_rx_TVALID;
  assign pcspma_status[7:0] = xpcs_core_status;
  assign qplllock_out = xpcs_qplllock_out;
  assign qplloutclk_out = xpcs_qplloutclk_out;
  assign qplloutrefclk_out = xpcs_qplloutrefclk_out;
  assign refclk_n_1 = refclk_n;
  assign refclk_p_1 = refclk_p;
  assign reset_1 = reset;
  assign reset_counter_done_out = xpcs_reset_counter_done_out;
  assign resetdone_out = xpcs_resetdone_out;
  assign rx_axis_aresetn_1 = rx_axis_aresetn;
  assign rx_statistics_valid = xmac_rx_statistics_valid;
  assign rx_statistics_vector[29:0] = xmac_rx_statistics_vector;
  assign rxn_1 = rxn;
  assign rxp_1 = rxp;
  assign rxrecclk_out = xpcs_rxrecclk_out;
  assign s_axi_1_ARADDR = s_axi_araddr[10:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[10:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  assign s_axis_pause_1_TDATA = s_axis_pause_tdata[15:0];
  assign s_axis_pause_1_TVALID = s_axis_pause_tvalid;
  assign s_axis_tx_1_TDATA = s_axis_tx_tdata[63:0];
  assign s_axis_tx_1_TKEEP = s_axis_tx_tkeep[7:0];
  assign s_axis_tx_1_TLAST = s_axis_tx_tlast;
  assign s_axis_tx_1_TUSER = s_axis_tx_tuser[0];
  assign s_axis_tx_1_TVALID = s_axis_tx_tvalid;
  assign s_axis_tx_tready = s_axis_tx_1_TREADY;
  assign signal_detect_1 = signal_detect;
  assign sim_speedup_control_1 = sim_speedup_control;
  assign tx_axis_aresetn_1 = tx_axis_aresetn;
  assign tx_disable = xpcs_tx_disable;
  assign tx_fault_1 = tx_fault;
  assign tx_ifg_delay_1 = tx_ifg_delay[7:0];
  assign tx_statistics_valid = xmac_tx_statistics_valid;
  assign tx_statistics_vector[25:0] = xmac_tx_statistics_vector;
  assign txn = xpcs_txn;
  assign txp = xpcs_txp;
  assign txuserrdy_out = xpcs_txuserrdy_out;
  assign txusrclk2_out = xpcs_txusrclk2_out;
  assign txusrclk_out = xpcs_txusrclk_out;
  assign xgmacint = xmac_xgmacint;
  bd_9a86_dcm_locked_driver_0 dcm_locked_driver
       (.dout(dcm_locked_driver_dout));
  bd_9a86_pma_pmd_type_driver_0 pma_pmd_type_driver
       (.dout(pma_pmd_type_driver_dout));
  bd_9a86_prtad_driver_0 prtad_driver
       (.dout(prtad_driver_dout));
  bd_9a86_xmac_0 xmac
       (.mdc(xmac_mdio_xgmac_MDC),
        .mdio_in(xmac_mdio_xgmac_MDIO_I),
        .mdio_out(xmac_mdio_xgmac_MDIO_O),
        .pause_req(s_axis_pause_1_TVALID),
        .pause_val(s_axis_pause_1_TDATA),
        .reset(reset_1),
        .rx_axis_aresetn(rx_axis_aresetn_1),
        .rx_axis_tdata(xmac_m_axis_rx_TDATA),
        .rx_axis_tkeep(xmac_m_axis_rx_TKEEP),
        .rx_axis_tlast(xmac_m_axis_rx_TLAST),
        .rx_axis_tuser(xmac_m_axis_rx_TUSER),
        .rx_axis_tvalid(xmac_m_axis_rx_TVALID),
        .rx_clk0(xpcs_coreclk_out),
        .rx_dcm_locked(dcm_locked_driver_dout),
        .rx_statistics_valid(xmac_rx_statistics_valid),
        .rx_statistics_vector(xmac_rx_statistics_vector),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wvalid(s_axi_1_WVALID),
        .tx_axis_aresetn(tx_axis_aresetn_1),
        .tx_axis_tdata(s_axis_tx_1_TDATA),
        .tx_axis_tkeep(s_axis_tx_1_TKEEP),
        .tx_axis_tlast(s_axis_tx_1_TLAST),
        .tx_axis_tready(s_axis_tx_1_TREADY),
        .tx_axis_tuser(s_axis_tx_1_TUSER),
        .tx_axis_tvalid(s_axis_tx_1_TVALID),
        .tx_clk0(xpcs_coreclk_out),
        .tx_dcm_locked(dcm_locked_driver_dout),
        .tx_ifg_delay(tx_ifg_delay_1),
        .tx_statistics_valid(xmac_tx_statistics_valid),
        .tx_statistics_vector(xmac_tx_statistics_vector),
        .xgmacint(xmac_xgmacint),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
  bd_9a86_xpcs_0 xpcs
       (.areset_datapathclk_out(xpcs_areset_datapathclk_out),
        .core_status(xpcs_core_status),
        .coreclk_out(xpcs_coreclk_out),
        .dclk(dclk_1),
        .drp_daddr_i(xpcs_core_gt_drp_interface_DADDR),
        .drp_daddr_o(xpcs_core_gt_drp_interface_DADDR),
        .drp_den_i(xpcs_core_gt_drp_interface_DEN),
        .drp_den_o(xpcs_core_gt_drp_interface_DEN),
        .drp_di_i(xpcs_core_gt_drp_interface_DI),
        .drp_di_o(xpcs_core_gt_drp_interface_DI),
        .drp_drdy_i(xpcs_core_gt_drp_interface_DRDY),
        .drp_drdy_o(xpcs_core_gt_drp_interface_DRDY),
        .drp_drpdo_i(xpcs_core_gt_drp_interface_DO),
        .drp_drpdo_o(xpcs_core_gt_drp_interface_DO),
        .drp_dwe_i(xpcs_core_gt_drp_interface_DWE),
        .drp_dwe_o(xpcs_core_gt_drp_interface_DWE),
        .drp_gnt(xpcs_drp_req),
        .drp_req(xpcs_drp_req),
        .gtrxreset_out(xpcs_gtrxreset_out),
        .gttxreset_out(xpcs_gttxreset_out),
        .mdc(xmac_mdio_xgmac_MDC),
        .mdio_in(xmac_mdio_xgmac_MDIO_O),
        .mdio_out(xmac_mdio_xgmac_MDIO_I),
        .pma_pmd_type(pma_pmd_type_driver_dout),
        .prtad(prtad_driver_dout),
        .qplllock_out(xpcs_qplllock_out),
        .qplloutclk_out(xpcs_qplloutclk_out),
        .qplloutrefclk_out(xpcs_qplloutrefclk_out),
        .refclk_n(refclk_n_1),
        .refclk_p(refclk_p_1),
        .reset(reset_1),
        .reset_counter_done_out(xpcs_reset_counter_done_out),
        .resetdone_out(xpcs_resetdone_out),
        .rxn(rxn_1),
        .rxp(rxp_1),
        .rxrecclk_out(xpcs_rxrecclk_out),
        .signal_detect(signal_detect_1),
        .sim_speedup_control(sim_speedup_control_1),
        .tx_disable(xpcs_tx_disable),
        .tx_fault(tx_fault_1),
        .txn(xpcs_txn),
        .txp(xpcs_txp),
        .txuserrdy_out(xpcs_txuserrdy_out),
        .txusrclk2_out(xpcs_txusrclk2_out),
        .txusrclk_out(xpcs_txusrclk_out),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
endmodule
