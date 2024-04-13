//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_9a86_wrapper.bd
//Design : bd_9a86_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_9a86_wrapper
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
  output areset_datapathclk_out;
  output coreclk_out;
  input dclk;
  output gtrxreset_out;
  output gttxreset_out;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  output [7:0]pcspma_status;
  output qplllock_out;
  output qplloutclk_out;
  output qplloutrefclk_out;
  input refclk_n;
  input refclk_p;
  input reset;
  output reset_counter_done_out;
  output resetdone_out;
  input rx_axis_aresetn;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output rxrecclk_out;
  input s_axi_aclk;
  input [10:0]s_axi_araddr;
  input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  input [10:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input s_axi_wvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input signal_detect;
  input sim_speedup_control;
  input tx_axis_aresetn;
  output tx_disable;
  input tx_fault;
  input [7:0]tx_ifg_delay;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txp;
  output txuserrdy_out;
  output txusrclk2_out;
  output txusrclk_out;
  output xgmacint;

  wire areset_datapathclk_out;
  wire coreclk_out;
  wire dclk;
  wire gtrxreset_out;
  wire gttxreset_out;
  wire [63:0]m_axis_rx_tdata;
  wire [7:0]m_axis_rx_tkeep;
  wire m_axis_rx_tlast;
  wire m_axis_rx_tuser;
  wire m_axis_rx_tvalid;
  wire [7:0]pcspma_status;
  wire qplllock_out;
  wire qplloutclk_out;
  wire qplloutrefclk_out;
  wire refclk_n;
  wire refclk_p;
  wire reset;
  wire reset_counter_done_out;
  wire resetdone_out;
  wire rx_axis_aresetn;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire rxn;
  wire rxp;
  wire rxrecclk_out;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [15:0]s_axis_pause_tdata;
  wire s_axis_pause_tvalid;
  wire [63:0]s_axis_tx_tdata;
  wire [7:0]s_axis_tx_tkeep;
  wire s_axis_tx_tlast;
  wire s_axis_tx_tready;
  wire [0:0]s_axis_tx_tuser;
  wire s_axis_tx_tvalid;
  wire signal_detect;
  wire sim_speedup_control;
  wire tx_axis_aresetn;
  wire tx_disable;
  wire tx_fault;
  wire [7:0]tx_ifg_delay;
  wire tx_statistics_valid;
  wire [25:0]tx_statistics_vector;
  wire txn;
  wire txp;
  wire txuserrdy_out;
  wire txusrclk2_out;
  wire txusrclk_out;
  wire xgmacint;

  bd_9a86 bd_9a86_i
       (.areset_datapathclk_out(areset_datapathclk_out),
        .coreclk_out(coreclk_out),
        .dclk(dclk),
        .gtrxreset_out(gtrxreset_out),
        .gttxreset_out(gttxreset_out),
        .m_axis_rx_tdata(m_axis_rx_tdata),
        .m_axis_rx_tkeep(m_axis_rx_tkeep),
        .m_axis_rx_tlast(m_axis_rx_tlast),
        .m_axis_rx_tuser(m_axis_rx_tuser),
        .m_axis_rx_tvalid(m_axis_rx_tvalid),
        .pcspma_status(pcspma_status),
        .qplllock_out(qplllock_out),
        .qplloutclk_out(qplloutclk_out),
        .qplloutrefclk_out(qplloutrefclk_out),
        .refclk_n(refclk_n),
        .refclk_p(refclk_p),
        .reset(reset),
        .reset_counter_done_out(reset_counter_done_out),
        .resetdone_out(resetdone_out),
        .rx_axis_aresetn(rx_axis_aresetn),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_out(rxrecclk_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
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
        .s_axis_pause_tdata(s_axis_pause_tdata),
        .s_axis_pause_tvalid(s_axis_pause_tvalid),
        .s_axis_tx_tdata(s_axis_tx_tdata),
        .s_axis_tx_tkeep(s_axis_tx_tkeep),
        .s_axis_tx_tlast(s_axis_tx_tlast),
        .s_axis_tx_tready(s_axis_tx_tready),
        .s_axis_tx_tuser(s_axis_tx_tuser),
        .s_axis_tx_tvalid(s_axis_tx_tvalid),
        .signal_detect(signal_detect),
        .sim_speedup_control(sim_speedup_control),
        .tx_axis_aresetn(tx_axis_aresetn),
        .tx_disable(tx_disable),
        .tx_fault(tx_fault),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_statistics_valid(tx_statistics_valid),
        .tx_statistics_vector(tx_statistics_vector),
        .txn(txn),
        .txp(txp),
        .txuserrdy_out(txuserrdy_out),
        .txusrclk2_out(txusrclk2_out),
        .txusrclk_out(txusrclk_out),
        .xgmacint(xgmacint));
endmodule
