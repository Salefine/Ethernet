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
//   Description:  udp top module
//
//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2019/8/27     myj          1.0         Original
//********************************************************************************/


module udp_top(
	
	input  [31:0]							 local_ip_addr,		//local ip address
	input  [47:0]							 local_mac_addr,    //local mac address
	input  [31:0]							 dst_ip_addr,       //destination ip address
	input  [15:0]               			 udp_src_port,      //udp source port
    input  [15:0]               			 udp_dst_port,	    //udp destination port
	
	output									 udp_active,		//udp is in active state, user can send data now
	//rx interface
	input                            	     rx_axis_aclk,
	input                            	     rx_axis_areset,
    input  [63:0]       	     			 mac_rx_axis_tdata,
    input  [7:0]     	     				 mac_rx_axis_tkeep,
    input                            	     mac_rx_axis_tvalid,		 
    input                            	     mac_rx_axis_tlast,
    input                           	     mac_rx_axis_tusr,	
	output  [63:0]       	     			 udp_rx_axis_tdata,
    output  [7:0]     	     				 udp_rx_axis_tkeep,
    output                            	     udp_rx_axis_tvalid,		 
    output                            	     udp_rx_axis_tlast,
    output                           	     udp_rx_axis_tusr,
	//tx interface
	input                            		 tx_axis_aclk,
    input                            		 tx_axis_areset,	
	input  [63:0]       			 		 udp_tx_axis_tdata,
    input  [7:0]     				 		 udp_tx_axis_tkeep,
    input                            		 udp_tx_axis_tvalid,		 
    input                            		 udp_tx_axis_tlast,
    output                           		 udp_tx_axis_tready,		 
	output   [63:0]    						 mac_tx_axis_tdata,
	output   [7:0]     						 mac_tx_axis_tkeep,
	output             						 mac_tx_axis_tvalid,	
	output             						 mac_tx_axis_tlast,
    input                					 mac_tx_axis_tready
	
	
    );


alinx_udp_ip 
#(
    .ALINX_CODE(6997)
)
udp_ip_inst
(
	
	.local_ip_addr		       (local_ip_addr		),
	.local_mac_addr            (local_mac_addr     ),
	.dst_ip_addr               (dst_ip_addr        ),
	.udp_src_port              (udp_src_port       ),
    .udp_dst_port	           (udp_dst_port	    ),
	.udp_active		           (udp_active		    ),
	.rx_axis_aclk              (rx_axis_aclk       ),
	.rx_axis_areset            (rx_axis_areset     ),
    .mac_rx_axis_tdata         (mac_rx_axis_tdata  ),
    .mac_rx_axis_tkeep         (mac_rx_axis_tkeep  ),
    .mac_rx_axis_tvalid		   (mac_rx_axis_tvalid	),
    .mac_rx_axis_tlast         (mac_rx_axis_tlast  ),
    .mac_rx_axis_tusr	       (mac_rx_axis_tusr	),
	.udp_rx_axis_tdata         (udp_rx_axis_tdata  ),
    .udp_rx_axis_tkeep         (udp_rx_axis_tkeep  ),
    .udp_rx_axis_tvalid		   (udp_rx_axis_tvalid	),
    .udp_rx_axis_tlast         (udp_rx_axis_tlast  ),
    .udp_rx_axis_tusr	       (udp_rx_axis_tusr	),
	.tx_axis_aclk              (tx_axis_aclk       ),
    .tx_axis_areset	           (tx_axis_areset	    ),
	.udp_tx_axis_tdata         (udp_tx_axis_tdata  ),
    .udp_tx_axis_tkeep         (udp_tx_axis_tkeep  ),
    .udp_tx_axis_tvalid		   (udp_tx_axis_tvalid	),
    .udp_tx_axis_tlast         (udp_tx_axis_tlast  ),
    .udp_tx_axis_tready		   (udp_tx_axis_tready	),
	.mac_tx_axis_tdata         (mac_tx_axis_tdata  ),
	.mac_tx_axis_tkeep         (mac_tx_axis_tkeep  ),
	.mac_tx_axis_tvalid	       (mac_tx_axis_tvalid	),
	.mac_tx_axis_tlast         (mac_tx_axis_tlast  ),
    .mac_tx_axis_tready        (mac_tx_axis_tready )
	
	
    );
	
	
endmodule
