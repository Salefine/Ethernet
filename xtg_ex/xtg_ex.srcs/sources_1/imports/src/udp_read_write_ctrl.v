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
//   Description:  udp read and write control module
//				   There are two mode in this module, one is loopback mode, when 
//				   received data from others, then send out received data; Another
//				   mode is speed mode, in this mode, send full speed data
//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2019/8/27     myj          1.0         Original
//********************************************************************************/


module udp_read_write_ctrl
(

	input						axis_aclk,
	input						axis_aresetn,
	
	input						push_button,		//push button to switch mode
	/* udp tx axis interface */			
	output reg    [63:0]   		udp_tx_axis_tdata  ,
	output reg    [7:0]    		udp_tx_axis_tkeep  ,
	output reg             		udp_tx_axis_tvalid ,
	output reg             		udp_tx_axis_tlast  ,
	input               		udp_tx_axis_tready ,
	/* udp rx axis interface */			
	input     [63:0]    		udp_rx_axis_tdata  ,
	input     [7:0]     		udp_rx_axis_tkeep  ,
	input               		udp_rx_axis_tvalid ,
	input               		udp_rx_axis_tlast  ,
	input               		udp_rx_axis_tusr	

    );

wire				button_posedge ;	//button posedge signal
reg					speed_sel ;			//speed select signal
wire				empty ;				//fifo empty 
wire				fifo_rden ;			//fifo read enable
wire [73:0]			fifo_rdata ;		//fifo read data
reg [7:0]			udp_cnt ;	//udp data counter
reg [15:0]			speed_cnt ;	//speed counter
/* sync fifo for udp rx  */	
axis_fifo  udp_axis_fifo
(
	.clk      (axis_aclk),
    .srst     (~axis_aresetn),
    .din      ({udp_rx_axis_tdata,udp_rx_axis_tkeep,udp_rx_axis_tvalid,udp_rx_axis_tlast}),
    .wr_en    (udp_rx_axis_tvalid),
    .rd_en    (fifo_rden),
    .dout     (fifo_rdata),
    .full     (),
    .empty    (empty)
);

/* key debounce module */	
ax_debounce key_debounce
(
    .clk			(axis_aclk), 
    .rst			(~axis_aresetn), 
    .button_in		(push_button),
    .button_posedge	(button_posedge),
    .button_negedge	(),
    .button_out     ()
);


/* Once push button, swith mode */	
always @(posedge axis_aclk)
  begin
    if (~axis_aresetn)
      speed_sel  <= 1'b0  ;
    else if (button_posedge)
      speed_sel  <= ~speed_sel ;
  end



/* mode control FSM */
localparam IDLE              = 3'b001 ;
localparam LOOPBACK          = 3'b010 ;
localparam SPEED	         = 3'b100 ;



reg [2:0]    state  ;
reg [2:0]    next_state ;


always @(posedge axis_aclk)
  begin
    if (~axis_aresetn)
      state  <=  IDLE  ;
    else
      state  <= next_state ;
  end
  
always @(*)
  begin
    case(state)
      IDLE            :
         begin
          if (speed_sel)
            next_state <= SPEED ;

		  else
		  begin
			if (empty)
				next_state <= IDLE ;
			else
				next_state <= LOOPBACK ;
		  end
        end		 
      LOOPBACK       :
        begin
          if (udp_tx_axis_tready & udp_tx_axis_tvalid & udp_tx_axis_tlast)
            next_state <= IDLE ;
          else
            next_state <= LOOPBACK ; 	
        end
	  SPEED       :
        begin
          if (udp_tx_axis_tready & udp_tx_axis_tvalid & udp_tx_axis_tlast)
            next_state <= IDLE ;
          else
            next_state <= SPEED ; 	
        end
      default        :
        next_state <= IDLE ;
    endcase
  end  


/* In loopback mode, fifo not empty and tready valid, then read out data */
assign fifo_rden = (state == LOOPBACK) & udp_tx_axis_tready & ~empty ;

/* udp counter */
always @(posedge axis_aclk)
  begin
    if (~axis_aresetn)
      udp_cnt  <=  8'd0  ;
	// else if (state == IDLE && state != next_state)
	  // udp_cnt  <=  ~udp_cnt  ;
   else if ((state == SPEED) & udp_tx_axis_tvalid & udp_tx_axis_tready)
     udp_cnt <= udp_cnt + 1 ;
  end
  
/* speed counter */  
always @(posedge axis_aclk)
  begin
    if (~axis_aresetn)
      speed_cnt  <=  16'd0  ;
    else if (state == SPEED) 
	begin
		if (udp_tx_axis_tvalid & udp_tx_axis_tready)
			speed_cnt <= speed_cnt + 1 ;
	end
	else
	  speed_cnt  <=  16'd0  ;
  end 
/* udp tx data switch in different mode */
always @(*)
  begin
	if (state == LOOPBACK)
	begin
		udp_tx_axis_tdata <= fifo_rdata[73:10];
		udp_tx_axis_tkeep <= fifo_rdata[9:2] ;
		udp_tx_axis_tvalid <= fifo_rdata[1] ;
		udp_tx_axis_tlast <= fifo_rdata[0] ;
	end
	else if (state == SPEED)
	begin
		udp_tx_axis_tdata  <= {udp_cnt,udp_cnt,udp_cnt,udp_cnt,udp_cnt,udp_cnt,udp_cnt,udp_cnt};
		udp_tx_axis_tkeep  <= 8'hff ;
		udp_tx_axis_tvalid <= 1'b1   ;
		if (speed_cnt == 16'd127)
			udp_tx_axis_tlast  <= 1'b1  ;
		else
			udp_tx_axis_tlast  <= 1'b0  ;
	end
	else
	begin
      udp_tx_axis_tdata <= 64'd0;
	  udp_tx_axis_tkeep <= 8'd0 ;
	  udp_tx_axis_tvalid <= 1'b0 ;
	  udp_tx_axis_tlast  <= 1'b0 ;
	end
  end

	
endmodule
