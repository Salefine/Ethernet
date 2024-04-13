-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Apr 13 19:26:06 2024
-- Host        : westlife running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_10g_ethernet_sim_netlist.vhdl
-- Design      : axi_10g_ethernet
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0 : entity is "bd_9a86_dcm_locked_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0 : entity is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0 : entity is "bd_9a86_pma_pmd_type_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0 : entity is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  dout(2) <= \<const1>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0 : entity is "bd_9a86_prtad_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0 : entity is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86 is
  port (
    areset_datapathclk_out : out STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    dclk : in STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplllock_out : out STD_LOGIC;
    qplloutclk_out : out STD_LOGIC;
    qplloutrefclk_out : out STD_LOGIC;
    refclk_n : in STD_LOGIC;
    refclk_p : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    resetdone_out : out STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    xgmacint : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86 : entity is "axi_10g_ethernet.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xmac_0 is
  port (
    tx_clk0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    tx_axis_tlast : in STD_LOGIC;
    tx_axis_tuser : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tready : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pause_req : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_tvalid : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    xgmacint : out STD_LOGIC;
    mdc : out STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    tx_dcm_locked : in STD_LOGIC;
    xgmii_txd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk0 : in STD_LOGIC;
    rx_dcm_locked : in STD_LOGIC;
    xgmii_rxd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xmac_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xpcs_0 is
  port (
    dclk : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    qplloutclk_out : out STD_LOGIC;
    qplloutrefclk_out : out STD_LOGIC;
    qplllock_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    areset_datapathclk_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    prtad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    core_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    resetdone_out : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    drp_den_o : out STD_LOGIC;
    drp_dwe_o : out STD_LOGIC;
    drp_daddr_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_di_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_drdy_o : out STD_LOGIC;
    drp_drpdo_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_den_i : in STD_LOGIC;
    drp_dwe_i : in STD_LOGIC;
    drp_daddr_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_di_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_drdy_i : in STD_LOGIC;
    drp_drpdo_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pma_pmd_type : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_disable : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xpcs_0;
  signal \^coreclk_out\ : STD_LOGIC;
  signal dcm_locked_driver_dout : STD_LOGIC;
  signal pma_pmd_type_driver_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prtad_driver_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xmac_mdio_xgmac_MDC : STD_LOGIC;
  signal xmac_mdio_xgmac_MDIO_I : STD_LOGIC;
  signal xmac_mdio_xgmac_MDIO_O : STD_LOGIC;
  signal xmac_xgmii_xgmac_RXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xmac_xgmii_xgmac_RXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xmac_xgmii_xgmac_TXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xmac_xgmii_xgmac_TXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xpcs_core_gt_drp_interface_DADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_gt_drp_interface_DEN : STD_LOGIC;
  signal xpcs_core_gt_drp_interface_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_gt_drp_interface_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xpcs_core_gt_drp_interface_DRDY : STD_LOGIC;
  signal xpcs_core_gt_drp_interface_DWE : STD_LOGIC;
  signal xpcs_drp_req : STD_LOGIC;
  signal NLW_xmac_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_xpcs_mdio_tri_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dcm_locked_driver : label is "bd_9a86_dcm_locked_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dcm_locked_driver : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dcm_locked_driver : label is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
  attribute CHECK_LICENSE_TYPE of pma_pmd_type_driver : label is "bd_9a86_pma_pmd_type_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings of pma_pmd_type_driver : label is "yes";
  attribute X_CORE_INFO of pma_pmd_type_driver : label is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
  attribute CHECK_LICENSE_TYPE of prtad_driver : label is "bd_9a86_prtad_driver_0,xlconstant_v1_1_6_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings of prtad_driver : label is "yes";
  attribute X_CORE_INFO of prtad_driver : label is "xlconstant_v1_1_6_xlconstant,Vivado 2019.1";
  attribute X_CORE_INFO of xmac : label is "ten_gig_eth_mac_v15_1_7,Vivado 2019.1";
  attribute X_CORE_INFO of xpcs : label is "ten_gig_eth_pcs_pma_v6_0_15,Vivado 2019.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of areset_datapathclk_out : signal is "xilinx.com:signal:reset:1.0 RST.ARESET_DATAPATHCLK_OUT RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of areset_datapathclk_out : signal is "XIL_INTERFACENAME RST.ARESET_DATAPATHCLK_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of coreclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CORECLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of coreclk_out : signal is "XIL_INTERFACENAME CLK.CORECLK_OUT, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of dclk : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK CLK";
  attribute X_INTERFACE_PARAMETER of dclk : signal is "XIL_INTERFACENAME CLK.DCLK, CLK_DOMAIN bd_9a86_dclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of gtrxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.GTRXRESET_OUT RST";
  attribute X_INTERFACE_PARAMETER of gtrxreset_out : signal is "XIL_INTERFACENAME RST.GTRXRESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of gttxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.GTTXRESET_OUT RST";
  attribute X_INTERFACE_PARAMETER of gttxreset_out : signal is "XIL_INTERFACENAME RST.GTTXRESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of m_axis_rx_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TLAST";
  attribute X_INTERFACE_INFO of m_axis_rx_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TUSER";
  attribute X_INTERFACE_INFO of m_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TVALID";
  attribute X_INTERFACE_INFO of qplloutclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.QPLLOUTCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of qplloutclk_out : signal is "XIL_INTERFACENAME CLK.QPLLOUTCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_qplloutclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of qplloutrefclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.QPLLOUTREFCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of qplloutrefclk_out : signal is "XIL_INTERFACENAME CLK.QPLLOUTREFCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_qplloutrefclk_out, FREQ_HZ 156250000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of rx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.RX_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of rx_axis_aresetn : signal is "XIL_INTERFACENAME RST.RX_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid";
  attribute X_INTERFACE_INFO of rxrecclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.RXRECCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of rxrecclk_out : signal is "XIL_INTERFACENAME CLK.RXRECCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_rxrecclk_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF s_axi, CLK_DOMAIN bd_9a86_s_axi_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_pause_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TVALID";
  attribute X_INTERFACE_INFO of s_axis_tx_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TLAST";
  attribute X_INTERFACE_INFO of s_axis_tx_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TVALID";
  attribute X_INTERFACE_INFO of tx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.TX_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of tx_axis_aresetn : signal is "XIL_INTERFACENAME RST.TX_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of tx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid";
  attribute X_INTERFACE_INFO of txusrclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK2_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk2_out : signal is "XIL_INTERFACENAME CLK.TXUSRCLK2_OUT, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk2_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of txusrclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.TXUSRCLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk_out : signal is "XIL_INTERFACENAME CLK.TXUSRCLK_OUT, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk_out, FREQ_HZ 322265625, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of xgmacint : signal is "xilinx.com:signal:interrupt:1.0 INTR.XGMACINT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of xgmacint : signal is "XIL_INTERFACENAME INTR.XGMACINT, PortWidth 1, SENSITIVITY EDGE_RISING";
  attribute X_INTERFACE_INFO of m_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_rx_tdata : signal is "XIL_INTERFACENAME m_axis_rx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of m_axis_rx_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP";
  attribute X_INTERFACE_INFO of rx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_9a86_s_axi_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axis_pause_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_pause_tdata : signal is "XIL_INTERFACENAME s_axis_pause, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axis_tx_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_tdata : signal is "XIL_INTERFACENAME s_axis_tx, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, FREQ_HZ 156250000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of s_axis_tx_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tx_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TUSER";
  attribute X_INTERFACE_INFO of tx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector";
begin
  coreclk_out <= \^coreclk_out\;
dcm_locked_driver: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_dcm_locked_driver_0
     port map (
      dout(0) => dcm_locked_driver_dout
    );
pma_pmd_type_driver: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_pma_pmd_type_driver_0
     port map (
      dout(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0)
    );
prtad_driver: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_prtad_driver_0
     port map (
      dout(4 downto 0) => prtad_driver_dout(4 downto 0)
    );
xmac: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xmac_0
     port map (
      mdc => xmac_mdio_xgmac_MDC,
      mdio_in => xmac_mdio_xgmac_MDIO_I,
      mdio_out => xmac_mdio_xgmac_MDIO_O,
      mdio_tri => NLW_xmac_mdio_tri_UNCONNECTED,
      pause_req => s_axis_pause_tvalid,
      pause_val(15 downto 0) => s_axis_pause_tdata(15 downto 0),
      reset => reset,
      rx_axis_aresetn => rx_axis_aresetn,
      rx_axis_tdata(63 downto 0) => m_axis_rx_tdata(63 downto 0),
      rx_axis_tkeep(7 downto 0) => m_axis_rx_tkeep(7 downto 0),
      rx_axis_tlast => m_axis_rx_tlast,
      rx_axis_tuser => m_axis_rx_tuser,
      rx_axis_tvalid => m_axis_rx_tvalid,
      rx_clk0 => \^coreclk_out\,
      rx_dcm_locked => dcm_locked_driver_dout,
      rx_statistics_valid => rx_statistics_valid,
      rx_statistics_vector(29 downto 0) => rx_statistics_vector(29 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      tx_axis_aresetn => tx_axis_aresetn,
      tx_axis_tdata(63 downto 0) => s_axis_tx_tdata(63 downto 0),
      tx_axis_tkeep(7 downto 0) => s_axis_tx_tkeep(7 downto 0),
      tx_axis_tlast => s_axis_tx_tlast,
      tx_axis_tready => s_axis_tx_tready,
      tx_axis_tuser => s_axis_tx_tuser(0),
      tx_axis_tvalid => s_axis_tx_tvalid,
      tx_clk0 => \^coreclk_out\,
      tx_dcm_locked => dcm_locked_driver_dout,
      tx_ifg_delay(7 downto 0) => tx_ifg_delay(7 downto 0),
      tx_statistics_valid => tx_statistics_valid,
      tx_statistics_vector(25 downto 0) => tx_statistics_vector(25 downto 0),
      xgmacint => xgmacint,
      xgmii_rxc(7 downto 0) => xmac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => xmac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => xmac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => xmac_xgmii_xgmac_TXD(63 downto 0)
    );
xpcs: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86_xpcs_0
     port map (
      areset_datapathclk_out => areset_datapathclk_out,
      core_status(7 downto 0) => pcspma_status(7 downto 0),
      coreclk_out => \^coreclk_out\,
      dclk => dclk,
      drp_daddr_i(15 downto 0) => xpcs_core_gt_drp_interface_DADDR(15 downto 0),
      drp_daddr_o(15 downto 0) => xpcs_core_gt_drp_interface_DADDR(15 downto 0),
      drp_den_i => xpcs_core_gt_drp_interface_DEN,
      drp_den_o => xpcs_core_gt_drp_interface_DEN,
      drp_di_i(15 downto 0) => xpcs_core_gt_drp_interface_DI(15 downto 0),
      drp_di_o(15 downto 0) => xpcs_core_gt_drp_interface_DI(15 downto 0),
      drp_drdy_i => xpcs_core_gt_drp_interface_DRDY,
      drp_drdy_o => xpcs_core_gt_drp_interface_DRDY,
      drp_drpdo_i(15 downto 0) => xpcs_core_gt_drp_interface_DO(15 downto 0),
      drp_drpdo_o(15 downto 0) => xpcs_core_gt_drp_interface_DO(15 downto 0),
      drp_dwe_i => xpcs_core_gt_drp_interface_DWE,
      drp_dwe_o => xpcs_core_gt_drp_interface_DWE,
      drp_gnt => xpcs_drp_req,
      drp_req => xpcs_drp_req,
      gtrxreset_out => gtrxreset_out,
      gttxreset_out => gttxreset_out,
      mdc => xmac_mdio_xgmac_MDC,
      mdio_in => xmac_mdio_xgmac_MDIO_O,
      mdio_out => xmac_mdio_xgmac_MDIO_I,
      mdio_tri => NLW_xpcs_mdio_tri_UNCONNECTED,
      pma_pmd_type(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0),
      prtad(4 downto 0) => prtad_driver_dout(4 downto 0),
      qplllock_out => qplllock_out,
      qplloutclk_out => qplloutclk_out,
      qplloutrefclk_out => qplloutrefclk_out,
      refclk_n => refclk_n,
      refclk_p => refclk_p,
      reset => reset,
      reset_counter_done_out => reset_counter_done_out,
      resetdone_out => resetdone_out,
      rxn => rxn,
      rxp => rxp,
      rxrecclk_out => rxrecclk_out,
      signal_detect => signal_detect,
      sim_speedup_control => sim_speedup_control,
      tx_disable => tx_disable,
      tx_fault => tx_fault,
      txn => txn,
      txp => txp,
      txuserrdy_out => txuserrdy_out,
      txusrclk2_out => txusrclk2_out,
      txusrclk_out => txusrclk_out,
      xgmii_rxc(7 downto 0) => xmac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => xmac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => xmac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => xmac_xgmii_xgmac_TXD(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    tx_axis_aresetn : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dclk : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sim_speedup_control : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    xgmacint : out STD_LOGIC;
    areset_datapathclk_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    resetdone_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    qplllock_out : out STD_LOGIC;
    qplloutclk_out : out STD_LOGIC;
    qplloutrefclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_10g_ethernet,bd_9a86,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_9a86,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "axi_10g_ethernet.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of areset_datapathclk_out : signal is "xilinx.com:signal:reset:1.0 RST.areset_datapathclk_out RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of areset_datapathclk_out : signal is "XIL_INTERFACENAME RST.areset_datapathclk_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of coreclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.coreclk_out CLK";
  attribute X_INTERFACE_PARAMETER of coreclk_out : signal is "XIL_INTERFACENAME CLK.coreclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, ASSOCIATED_BUSIF m_axis_rx:s_axis_pause:s_axis_tx, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET tx_axis_aresetn:rx_axis_aresetn";
  attribute X_INTERFACE_INFO of dclk : signal is "xilinx.com:signal:clock:1.0 CLK.dclk CLK";
  attribute X_INTERFACE_PARAMETER of dclk : signal is "XIL_INTERFACENAME CLK.dclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_9a86_dclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of gtrxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.gtrxreset_out RST";
  attribute X_INTERFACE_PARAMETER of gtrxreset_out : signal is "XIL_INTERFACENAME RST.gtrxreset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of gttxreset_out : signal is "xilinx.com:signal:reset:1.0 RST.gttxreset_out RST";
  attribute X_INTERFACE_PARAMETER of gttxreset_out : signal is "XIL_INTERFACENAME RST.gttxreset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_rx_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TLAST";
  attribute X_INTERFACE_INFO of m_axis_rx_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TUSER";
  attribute X_INTERFACE_INFO of m_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_rx_tvalid : signal is "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of qplloutclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.qplloutclk_out CLK";
  attribute X_INTERFACE_PARAMETER of qplloutclk_out : signal is "XIL_INTERFACENAME CLK.qplloutclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_qplloutclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of qplloutrefclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.qplloutrefclk_out CLK";
  attribute X_INTERFACE_PARAMETER of qplloutrefclk_out : signal is "XIL_INTERFACENAME CLK.qplloutrefclk_out, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_qplloutrefclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of rx_axis_aresetn : signal is "XIL_INTERFACENAME RST.rx_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid";
  attribute X_INTERFACE_INFO of rxrecclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.rxrecclk_out CLK";
  attribute X_INTERFACE_PARAMETER of rxrecclk_out : signal is "XIL_INTERFACENAME CLK.rxrecclk_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_rxrecclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.s_axi_aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_9a86_s_axi_aclk, ASSOCIATED_BUSIF s_axi, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_wvalid : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_9a86_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_pause_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_pause_tvalid : signal is "XIL_INTERFACENAME s_axis_pause, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tx_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TLAST";
  attribute X_INTERFACE_INFO of s_axis_tx_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TREADY";
  attribute X_INTERFACE_INFO of s_axis_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tx_tvalid : signal is "XIL_INTERFACENAME s_axis_tx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_coreclk_out, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tx_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of tx_axis_aresetn : signal is "XIL_INTERFACENAME RST.tx_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tx_statistics_valid : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid";
  attribute X_INTERFACE_INFO of txusrclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.txusrclk2_out CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk2_out : signal is "XIL_INTERFACENAME CLK.txusrclk2_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk2_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of txusrclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.txusrclk_out CLK";
  attribute X_INTERFACE_PARAMETER of txusrclk_out : signal is "XIL_INTERFACENAME CLK.txusrclk_out, FREQ_HZ 322265625, PHASE 0.000, CLK_DOMAIN bd_9a86_xpcs_0_txusrclk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of xgmacint : signal is "xilinx.com:signal:interrupt:1.0 INTR.xgmacint INTERRUPT";
  attribute X_INTERFACE_PARAMETER of xgmacint : signal is "XIL_INTERFACENAME INTR.xgmacint, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TDATA";
  attribute X_INTERFACE_INFO of m_axis_rx_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP";
  attribute X_INTERFACE_INFO of rx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axis_pause_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_pause TDATA";
  attribute X_INTERFACE_INFO of s_axis_tx_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TDATA";
  attribute X_INTERFACE_INFO of s_axis_tx_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tx_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_tx TUSER";
  attribute X_INTERFACE_INFO of tx_statistics_vector : signal is "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_9a86
     port map (
      areset_datapathclk_out => areset_datapathclk_out,
      coreclk_out => coreclk_out,
      dclk => dclk,
      gtrxreset_out => gtrxreset_out,
      gttxreset_out => gttxreset_out,
      m_axis_rx_tdata(63 downto 0) => m_axis_rx_tdata(63 downto 0),
      m_axis_rx_tkeep(7 downto 0) => m_axis_rx_tkeep(7 downto 0),
      m_axis_rx_tlast => m_axis_rx_tlast,
      m_axis_rx_tuser => m_axis_rx_tuser,
      m_axis_rx_tvalid => m_axis_rx_tvalid,
      pcspma_status(7 downto 0) => pcspma_status(7 downto 0),
      qplllock_out => qplllock_out,
      qplloutclk_out => qplloutclk_out,
      qplloutrefclk_out => qplloutrefclk_out,
      refclk_n => refclk_n,
      refclk_p => refclk_p,
      reset => reset,
      reset_counter_done_out => reset_counter_done_out,
      resetdone_out => resetdone_out,
      rx_axis_aresetn => rx_axis_aresetn,
      rx_statistics_valid => rx_statistics_valid,
      rx_statistics_vector(29 downto 0) => rx_statistics_vector(29 downto 0),
      rxn => rxn,
      rxp => rxp,
      rxrecclk_out => rxrecclk_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(10 downto 0) => s_axi_araddr(10 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(10 downto 0) => s_axi_awaddr(10 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_pause_tdata(15 downto 0) => s_axis_pause_tdata(15 downto 0),
      s_axis_pause_tvalid => s_axis_pause_tvalid,
      s_axis_tx_tdata(63 downto 0) => s_axis_tx_tdata(63 downto 0),
      s_axis_tx_tkeep(7 downto 0) => s_axis_tx_tkeep(7 downto 0),
      s_axis_tx_tlast => s_axis_tx_tlast,
      s_axis_tx_tready => s_axis_tx_tready,
      s_axis_tx_tuser(0) => s_axis_tx_tuser(0),
      s_axis_tx_tvalid => s_axis_tx_tvalid,
      signal_detect => signal_detect,
      sim_speedup_control => sim_speedup_control,
      tx_axis_aresetn => tx_axis_aresetn,
      tx_disable => tx_disable,
      tx_fault => tx_fault,
      tx_ifg_delay(7 downto 0) => tx_ifg_delay(7 downto 0),
      tx_statistics_valid => tx_statistics_valid,
      tx_statistics_vector(25 downto 0) => tx_statistics_vector(25 downto 0),
      txn => txn,
      txp => txp,
      txuserrdy_out => txuserrdy_out,
      txusrclk2_out => txusrclk2_out,
      txusrclk_out => txusrclk_out,
      xgmacint => xgmacint
    );
end STRUCTURE;
