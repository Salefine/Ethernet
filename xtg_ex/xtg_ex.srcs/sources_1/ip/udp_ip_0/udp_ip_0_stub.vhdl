-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Apr 13 16:36:00 2024
-- Host        : westlife running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/xilinx_prj/xilinx_Etherent/xtg_ethernet_ex/xtg_ex/xtg_ex.srcs/sources_1/ip/udp_ip_0/udp_ip_0_stub.vhdl
-- Design      : udp_ip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity udp_ip_0 is
  Port ( 
    local_ip_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    local_mac_addr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dst_ip_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    udp_src_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_dst_port : in STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_active : out STD_LOGIC;
    rx_axis_aclk : in STD_LOGIC;
    rx_axis_areset : in STD_LOGIC;
    mac_rx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    mac_rx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mac_rx_axis_tvalid : in STD_LOGIC;
    mac_rx_axis_tlast : in STD_LOGIC;
    mac_rx_axis_tusr : in STD_LOGIC;
    udp_rx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    udp_rx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    udp_rx_axis_tvalid : out STD_LOGIC;
    udp_rx_axis_tlast : out STD_LOGIC;
    udp_rx_axis_tusr : out STD_LOGIC;
    tx_axis_aclk : in STD_LOGIC;
    tx_axis_areset : in STD_LOGIC;
    udp_tx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    udp_tx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    udp_tx_axis_tvalid : in STD_LOGIC;
    udp_tx_axis_tlast : in STD_LOGIC;
    udp_tx_axis_tready : out STD_LOGIC;
    mac_tx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    mac_tx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mac_tx_axis_tvalid : out STD_LOGIC;
    mac_tx_axis_tlast : out STD_LOGIC;
    mac_tx_axis_tready : in STD_LOGIC
  );

end udp_ip_0;

architecture stub of udp_ip_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "local_ip_addr[31:0],local_mac_addr[47:0],dst_ip_addr[31:0],udp_src_port[15:0],udp_dst_port[15:0],udp_active,rx_axis_aclk,rx_axis_areset,mac_rx_axis_tdata[63:0],mac_rx_axis_tkeep[7:0],mac_rx_axis_tvalid,mac_rx_axis_tlast,mac_rx_axis_tusr,udp_rx_axis_tdata[63:0],udp_rx_axis_tkeep[7:0],udp_rx_axis_tvalid,udp_rx_axis_tlast,udp_rx_axis_tusr,tx_axis_aclk,tx_axis_areset,udp_tx_axis_tdata[63:0],udp_tx_axis_tkeep[7:0],udp_tx_axis_tvalid,udp_tx_axis_tlast,udp_tx_axis_tready,mac_tx_axis_tdata[63:0],mac_tx_axis_tkeep[7:0],mac_tx_axis_tvalid,mac_tx_axis_tlast,mac_tx_axis_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "udp_top,Vivado 2019.1";
begin
end;
