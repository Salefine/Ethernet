-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: Alinx:user:udp_ip:1.0
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT udp_ip_0
  PORT (
    local_ip_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    local_mac_addr : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    dst_ip_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    udp_src_port : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    udp_dst_port : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    udp_active : OUT STD_LOGIC;
    rx_axis_aclk : IN STD_LOGIC;
    rx_axis_areset : IN STD_LOGIC;
    mac_rx_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    mac_rx_axis_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    mac_rx_axis_tvalid : IN STD_LOGIC;
    mac_rx_axis_tlast : IN STD_LOGIC;
    mac_rx_axis_tusr : IN STD_LOGIC;
    udp_rx_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    udp_rx_axis_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    udp_rx_axis_tvalid : OUT STD_LOGIC;
    udp_rx_axis_tlast : OUT STD_LOGIC;
    udp_rx_axis_tusr : OUT STD_LOGIC;
    tx_axis_aclk : IN STD_LOGIC;
    tx_axis_areset : IN STD_LOGIC;
    udp_tx_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    udp_tx_axis_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    udp_tx_axis_tvalid : IN STD_LOGIC;
    udp_tx_axis_tlast : IN STD_LOGIC;
    udp_tx_axis_tready : OUT STD_LOGIC;
    mac_tx_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    mac_tx_axis_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mac_tx_axis_tvalid : OUT STD_LOGIC;
    mac_tx_axis_tlast : OUT STD_LOGIC;
    mac_tx_axis_tready : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : udp_ip_0
  PORT MAP (
    local_ip_addr => local_ip_addr,
    local_mac_addr => local_mac_addr,
    dst_ip_addr => dst_ip_addr,
    udp_src_port => udp_src_port,
    udp_dst_port => udp_dst_port,
    udp_active => udp_active,
    rx_axis_aclk => rx_axis_aclk,
    rx_axis_areset => rx_axis_areset,
    mac_rx_axis_tdata => mac_rx_axis_tdata,
    mac_rx_axis_tkeep => mac_rx_axis_tkeep,
    mac_rx_axis_tvalid => mac_rx_axis_tvalid,
    mac_rx_axis_tlast => mac_rx_axis_tlast,
    mac_rx_axis_tusr => mac_rx_axis_tusr,
    udp_rx_axis_tdata => udp_rx_axis_tdata,
    udp_rx_axis_tkeep => udp_rx_axis_tkeep,
    udp_rx_axis_tvalid => udp_rx_axis_tvalid,
    udp_rx_axis_tlast => udp_rx_axis_tlast,
    udp_rx_axis_tusr => udp_rx_axis_tusr,
    tx_axis_aclk => tx_axis_aclk,
    tx_axis_areset => tx_axis_areset,
    udp_tx_axis_tdata => udp_tx_axis_tdata,
    udp_tx_axis_tkeep => udp_tx_axis_tkeep,
    udp_tx_axis_tvalid => udp_tx_axis_tvalid,
    udp_tx_axis_tlast => udp_tx_axis_tlast,
    udp_tx_axis_tready => udp_tx_axis_tready,
    mac_tx_axis_tdata => mac_tx_axis_tdata,
    mac_tx_axis_tkeep => mac_tx_axis_tkeep,
    mac_tx_axis_tvalid => mac_tx_axis_tvalid,
    mac_tx_axis_tlast => mac_tx_axis_tlast,
    mac_tx_axis_tready => mac_tx_axis_tready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------
