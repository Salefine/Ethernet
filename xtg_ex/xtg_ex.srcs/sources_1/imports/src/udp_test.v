`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//  Author: myj   myj@alinx.com                                                 //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//     WEB: http://www.alinx.cn/                                                //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2019,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//   Description:  udp test module
//
//
//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2019/8/27     myj          1.0         Original
//********************************************************************************/


module udp_test(
	input						sys_clk_p,
	input						sys_clk_n,
	input						rst_n,
	input                       push_button,
	
	output	[3:0]				led,
	
	input						sfp_refclkp,
	input						sfp_refclkn,
	output            			sfp_txp,
	output            			sfp_txn,
	input             			sfp_rxp,
	input             			sfp_rxn,
	output						sfp_tx_disable
	

    );
	
//axi lite signals	
wire     [10:0]   s_axi_awaddr;
wire              s_axi_awvalid;

wire              s_axi_awready;
wire     [31:0]   s_axi_wdata;
wire              s_axi_wvalid;
wire              s_axi_wready;

wire     [1:0]    s_axi_bresp;
wire              s_axi_bvalid;
wire              s_axi_bready;
wire     [10:0]   s_axi_araddr;
wire              s_axi_arvalid;
wire              s_axi_arready;

wire     [31:0]   s_axi_rdata;
wire     [1:0]    s_axi_rresp;
wire              s_axi_rvalid;
wire              s_axi_rready;	
	
//mac axi stream signals
 (* MARK_DEBUG="true" *)wire     [63:0]   mac_tx_axis_tdata;
 (* MARK_DEBUG="true" *)wire     [7:0]    mac_tx_axis_tkeep;
 (* MARK_DEBUG="true" *)wire              mac_tx_axis_tvalid;
 (* MARK_DEBUG="true" *)wire              mac_tx_axis_tlast;
 (* MARK_DEBUG="true" *)wire              mac_tx_axis_tready;

 (* MARK_DEBUG="true" *)wire     [63:0]   mac_rx_axis_tdata;
 (* MARK_DEBUG="true" *)wire     [7:0]    mac_rx_axis_tkeep;
 (* MARK_DEBUG="true" *)wire              mac_rx_axis_tvalid;
 (* MARK_DEBUG="true" *)wire              mac_rx_axis_tlast;
 (* MARK_DEBUG="true" *)wire              mac_rx_axis_tusr;	
	
//mac axi stream signals
 (* MARK_DEBUG="true" *)wire     [63:0]   udp_tx_axis_tdata;
 (* MARK_DEBUG="true" *)wire     [7:0]    udp_tx_axis_tkeep;
 (* MARK_DEBUG="true" *)wire              udp_tx_axis_tvalid;
 (* MARK_DEBUG="true" *)wire              udp_tx_axis_tlast;
 (* MARK_DEBUG="true" *)wire              udp_tx_axis_tready;

 (* MARK_DEBUG="true" *)wire     [63:0]   udp_rx_axis_tdata;
 (* MARK_DEBUG="true" *)wire     [7:0]    udp_rx_axis_tkeep;
 (* MARK_DEBUG="true" *)wire              udp_rx_axis_tvalid;
 (* MARK_DEBUG="true" *)wire              udp_rx_axis_tlast;
 (* MARK_DEBUG="true" *)wire              udp_rx_axis_tusr;		

wire            sys_clk ;

wire			  coreclk ;
wire			  block_lock ;

wire [7:0] 		  pcspma_status;
wire			  aresetn ;

wire			  s_axi_aclk ;
wire			  pll_locked ;

wire              tx_axis_aresetn;
wire              rx_axis_aresetn;

wire			  axis_aresetn ;
wire              s_axi_aresetn ;

wire			  udp_active ;

//assign i2c_lsb = 1'b0 ;

assign    aresetn  = rst_n & pll_locked & pcspma_status[0];

assign  tx_axis_aresetn    = rst_n & pll_locked ;
assign  rx_axis_aresetn    = rst_n & pll_locked ;


assign    led[0] =  pcspma_status[0];	//pcs block locked
assign    led[1] =  block_lock;			//block is locked, high-active, means RX is synchronized
assign    led[2] =  pll_locked;			//pll is locked
assign    led[3] =  udp_active;			//udp ip is active, user data can be transferred.



//--------------------------------------------------------------------------
// Add reset synchronizers to the asynchronous reset inputs
//--------------------------------------------------------------------------
axi_10g_ethernet_0_sync_reset axis_reset_gen (
  .clk                             (coreclk),
  .reset_in                        (tx_axis_aresetn),
  .reset_out                       (axis_aresetn)
  );

axi_10g_ethernet_0_sync_reset s_axi_reset_gen (
  .clk                             (s_axi_aclk),
  .reset_in                        (aresetn),
  .reset_out                       (s_axi_aresetn)
  );
  
  
/* Instantiate pll module */
clk_gen clk
 (
  .clk_out1      (s_axi_aclk),
  .clk_out2      (sys_clk),
  .reset         (~rst_n),
  .locked        (pll_locked),
  .clk_in1_p     (sys_clk_p),
  .clk_in1_n     (sys_clk_n)
 );


/* Instantiate udp read and write control module */
udp_read_write_ctrl  udp_ctrl
	(
	.axis_aclk                  (coreclk),
	.axis_aresetn			    (axis_aresetn),
	.push_button				(push_button),
	.udp_tx_axis_tdata          (udp_tx_axis_tdata  ),
	.udp_tx_axis_tkeep          (udp_tx_axis_tkeep  ),
	.udp_tx_axis_tvalid         (udp_tx_axis_tvalid ),
	.udp_tx_axis_tlast          (udp_tx_axis_tlast  ),
	.udp_tx_axis_tready 	    (udp_tx_axis_tready ),	
	.udp_rx_axis_tdata          (udp_rx_axis_tdata  ),
	.udp_rx_axis_tkeep          (udp_rx_axis_tkeep  ),
	.udp_rx_axis_tvalid         (udp_rx_axis_tvalid ),
	.udp_rx_axis_tlast          (udp_rx_axis_tlast  ),
	.udp_rx_axis_tusr	        (udp_rx_axis_tusr	)

    );


/* Instantiate udp ip module */
udp_ip_0  udp_ip_inst
	(
	
	.local_ip_addr                   (32'hc0a80002),			//local ip address: 192.168.0.2
	.local_mac_addr                  (48'h00_0a_35_01_fe_c0),	//local mac address: 00_0a_35_01_fe_c0
	.dst_ip_addr                     (32'hc0a80003),			//destination ip address : 192.168.0.3
	.udp_src_port                    (16'h1f90),				//source port: 8080
    .udp_dst_port	                 (16'h1f90),				//destination port : 8080
	.udp_active						 (udp_active),				//udp ip is active, user data can be transferred.
	.rx_axis_aclk                    (coreclk),
	.rx_axis_areset	                 (axis_aresetn),
	.tx_axis_aclk                    (coreclk),
    .tx_axis_areset	                 (axis_aresetn),
	//user interface
	.udp_rx_axis_tdata               (udp_rx_axis_tdata ),
    .udp_rx_axis_tkeep               (udp_rx_axis_tkeep ),
    .udp_rx_axis_tvalid	             (udp_rx_axis_tvalid),	 
    .udp_rx_axis_tlast               (udp_rx_axis_tlast ),
    .udp_rx_axis_tusr                (udp_rx_axis_tusr  ),	
	.udp_tx_axis_tdata               (udp_tx_axis_tdata ),
    .udp_tx_axis_tkeep               (udp_tx_axis_tkeep ),
    .udp_tx_axis_tvalid	             (udp_tx_axis_tvalid),	 
    .udp_tx_axis_tlast               (udp_tx_axis_tlast ),
    .udp_tx_axis_tready	             (udp_tx_axis_tready),	
	//mac interface
    .mac_rx_axis_tdata               (mac_rx_axis_tdata ),
    .mac_rx_axis_tkeep               (mac_rx_axis_tkeep ),
    .mac_rx_axis_tvalid	             (mac_rx_axis_tvalid),	 
    .mac_rx_axis_tlast               (mac_rx_axis_tlast ),
    .mac_rx_axis_tusr	             (mac_rx_axis_tusr	),	 
	.mac_tx_axis_tdata               (mac_tx_axis_tdata ),
	.mac_tx_axis_tkeep               (mac_tx_axis_tkeep ),
	.mac_tx_axis_tvalid	             (mac_tx_axis_tvalid),
	.mac_tx_axis_tlast               (mac_tx_axis_tlast ),
    .mac_tx_axis_tready              (mac_tx_axis_tready)
	
	
    );
	
	
/* Instantiate 10G axi configuration module */	
axi_10g_ethernet_0_axi_lite_sm  mac_config
(
      .s_axi_aclk                      (s_axi_aclk),
      .s_axi_reset                     (~s_axi_aresetn),
      .pcs_loopback                    (1'b0),
      .enable_vlan                     (1'b0),
      .enable_custom_preamble          (1'b0),
      .enable_gen                      (),
      .block_lock                      (block_lock),
      .s_axi_awaddr                    (s_axi_awaddr ),
      .s_axi_awvalid                   (s_axi_awvalid),
      .s_axi_awready                   (s_axi_awready),
      .s_axi_wdata                     (s_axi_wdata  ),
      .s_axi_wvalid                    (s_axi_wvalid ),
      .s_axi_wready                    (s_axi_wready ),
      .s_axi_bresp                     (s_axi_bresp  ),
      .s_axi_bvalid                    (s_axi_bvalid ),
      .s_axi_bready                    (s_axi_bready ),
      .s_axi_araddr                    (s_axi_araddr ),
      .s_axi_arvalid                   (s_axi_arvalid),
      .s_axi_arready                   (s_axi_arready),
      .s_axi_rdata                     (s_axi_rdata  ),
      .s_axi_rresp                     (s_axi_rresp  ),
      .s_axi_rvalid                    (s_axi_rvalid ),
      .s_axi_rready                    (s_axi_rready )
);

/* Instantiate 10G mac subsytem module */
 axi_10g_ethernet mac_subsystem
 (
  //reference clock
  .reset                            (~rst_n),
  .refclk_p                         (sfp_refclkp),
  .refclk_n                         (sfp_refclkn),  
  .dclk                             (s_axi_aclk),
  .coreclk_out                      (coreclk), 
                                    
  .tx_ifg_delay                     (8'd0),
  .signal_detect                    (1'b1),
  .tx_fault                         (1'b0),  
  .pcspma_status                    (pcspma_status),
  .sim_speedup_control              (1'b0),  
  //sfp data and disable            
  .tx_disable                       (sfp_tx_disable),
  .txp                              (sfp_txp),
  .txn                              (sfp_txn),
  .rxp                              (sfp_rxp),
  .rxn                              (sfp_rxn),   
  //mac configuration               
  .s_axi_aclk                       (s_axi_aclk),
  .s_axi_aresetn                    (s_axi_aresetn),
  .s_axi_araddr                     (s_axi_araddr ),
  .s_axi_arready                    (s_axi_arready),
  .s_axi_arvalid                    (s_axi_arvalid),
  .s_axi_awaddr                     (s_axi_awaddr ),
  .s_axi_awready                    (s_axi_awready),
  .s_axi_awvalid                    (s_axi_awvalid),
  .s_axi_bready                     (s_axi_bready ),
  .s_axi_bresp                      (s_axi_bresp  ),
  .s_axi_bvalid                     (s_axi_bvalid ),
  .s_axi_rdata                      (s_axi_rdata  ),
  .s_axi_rready                     (s_axi_rready ),
  .s_axi_rresp                      (s_axi_rresp  ),
  .s_axi_rvalid                     (s_axi_rvalid ),
  .s_axi_wdata                      (s_axi_wdata  ),
  .s_axi_wready                     (s_axi_wready ),
  .s_axi_wvalid                     (s_axi_wvalid ),
  //mac tx stream signals           
  .tx_axis_aresetn			        (tx_axis_aresetn),
  .s_axis_tx_tdata                  (mac_tx_axis_tdata ),
  .s_axis_tx_tkeep                  (mac_tx_axis_tkeep ),
  .s_axis_tx_tlast                  (mac_tx_axis_tlast ),
  .s_axis_tx_tready                 (mac_tx_axis_tready),
  .s_axis_tx_tuser                  (1'b0 ),  //???
  .s_axis_tx_tvalid                 (mac_tx_axis_tvalid),
  .s_axis_pause_tdata               (16'd0),
  .s_axis_pause_tvalid              (1'b0),
  //mac rx stream signals           
  .rx_axis_aresetn                  (rx_axis_aresetn),
  .m_axis_rx_tdata                  (mac_rx_axis_tdata ),
  .m_axis_rx_tkeep                  (mac_rx_axis_tkeep ),
  .m_axis_rx_tlast                  (mac_rx_axis_tlast ),
  .m_axis_rx_tuser                  (mac_rx_axis_tusr ),
  .m_axis_rx_tvalid                 (mac_rx_axis_tvalid),
  //unused signals                  
  .xgmacint                         (), //don't care
  .areset_datapathclk_out           (), //don't care
  .txusrclk_out                     (), //don't care
  .txusrclk2_out                    (), //don't care
  .gttxreset_out                    (), //don't care
  .gtrxreset_out                    (), //don't care
  .txuserrdy_out                    (), //don't care 
  .resetdone_out                    (), //don't care
  .reset_counter_done_out           (), //don't care
  .qplllock_out                     (), //don't care
  .qplloutclk_out                   (), //don't care
  .qplloutrefclk_out                (), //don't care
  .rxrecclk_out                     (), //don't care
  .tx_statistics_valid              (), //don't care
  .tx_statistics_vector             (), //don't care
  .rx_statistics_valid              (), //don't care
  .rx_statistics_vector             ()  //don't care
);	
	
	
	
endmodule
