-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:ip:v_dp_rxss1:2.1
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dpss_zcu102_rx_v_dp_rxss1_0_0 IS
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    rx_vid_clk : IN STD_LOGIC;
    rx_vid_rst : IN STD_LOGIC;
    m_axis_aclk_stream1 : IN STD_LOGIC;
    aux_rx_data_in : IN STD_LOGIC;
    aux_rx_data_out : OUT STD_LOGIC;
    aux_rx_data_en_out_n : OUT STD_LOGIC;
    rx_lnk_clk : IN STD_LOGIC;
    rx_hpd : OUT STD_LOGIC;
    dprxss_dp_irq : OUT STD_LOGIC;
    m_aud_axis_aclk : IN STD_LOGIC;
    m_aud_axis_aresetn : IN STD_LOGIC;
    acr_m_aud : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    acr_n_aud : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    acr_valid : OUT STD_LOGIC;
    ext_rst : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    dprxss_iic_irq : OUT STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_stream1_tdata : OUT STD_LOGIC_VECTOR(119 DOWNTO 0);
    m_axis_video_stream1_tlast : OUT STD_LOGIC;
    m_axis_video_stream1_tready : IN STD_LOGIC;
    m_axis_video_stream1_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_video_stream1_tvalid : OUT STD_LOGIC;
    s_axis_lnk_rx_lane0_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane0_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane0_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane0_tvalid : IN STD_LOGIC;
    m_axis_phy_rx_sb_control_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_phy_rx_sb_control_tready : IN STD_LOGIC;
    m_axis_phy_rx_sb_control_tvalid : OUT STD_LOGIC;
    s_axis_phy_rx_sb_status_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_phy_rx_sb_status_tready : OUT STD_LOGIC;
    s_axis_phy_rx_sb_status_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane3_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane3_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane3_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane3_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane2_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane2_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane2_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane2_tvalid : IN STD_LOGIC;
    s_axis_lnk_rx_lane1_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_lnk_rx_lane1_tready : OUT STD_LOGIC;
    s_axis_lnk_rx_lane1_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s_axis_lnk_rx_lane1_tvalid : IN STD_LOGIC;
    edid_iic_scl_i : IN STD_LOGIC;
    edid_iic_scl_o : OUT STD_LOGIC;
    edid_iic_scl_t : OUT STD_LOGIC;
    edid_iic_sda_i : IN STD_LOGIC;
    edid_iic_sda_o : OUT STD_LOGIC;
    edid_iic_sda_t : OUT STD_LOGIC;
    ext_iic_scl_i : IN STD_LOGIC;
    ext_iic_scl_o : OUT STD_LOGIC;
    ext_iic_scl_t : OUT STD_LOGIC;
    ext_iic_sda_i : IN STD_LOGIC;
    ext_iic_sda_o : OUT STD_LOGIC;
    ext_iic_sda_t : OUT STD_LOGIC;
    aud_axi_egress_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    aud_axi_egress_tid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    aud_axi_egress_tready : IN STD_LOGIC;
    aud_axi_egress_tvalid : OUT STD_LOGIC
  );
END dpss_zcu102_rx_v_dp_rxss1_0_0;

ARCHITECTURE dpss_zcu102_rx_v_dp_rxss1_0_0_arch OF dpss_zcu102_rx_v_dp_rxss1_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF dpss_zcu102_rx_v_dp_rxss1_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_6311 IS
    PORT (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      rx_vid_clk : IN STD_LOGIC;
      rx_vid_rst : IN STD_LOGIC;
      m_axis_aclk_stream1 : IN STD_LOGIC;
      aux_rx_data_in : IN STD_LOGIC;
      aux_rx_data_out : OUT STD_LOGIC;
      aux_rx_data_en_out_n : OUT STD_LOGIC;
      rx_lnk_clk : IN STD_LOGIC;
      rx_hpd : OUT STD_LOGIC;
      dprxss_dp_irq : OUT STD_LOGIC;
      m_aud_axis_aclk : IN STD_LOGIC;
      m_aud_axis_aresetn : IN STD_LOGIC;
      acr_m_aud : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      acr_n_aud : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      acr_valid : OUT STD_LOGIC;
      ext_rst : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      dprxss_iic_irq : OUT STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      s_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
      s_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_video_stream1_tdata : OUT STD_LOGIC_VECTOR(119 DOWNTO 0);
      m_axis_video_stream1_tlast : OUT STD_LOGIC;
      m_axis_video_stream1_tready : IN STD_LOGIC;
      m_axis_video_stream1_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_video_stream1_tvalid : OUT STD_LOGIC;
      s_axis_lnk_rx_lane0_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_lnk_rx_lane0_tready : OUT STD_LOGIC;
      s_axis_lnk_rx_lane0_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axis_lnk_rx_lane0_tvalid : IN STD_LOGIC;
      m_axis_phy_rx_sb_control_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_phy_rx_sb_control_tready : IN STD_LOGIC;
      m_axis_phy_rx_sb_control_tvalid : OUT STD_LOGIC;
      s_axis_phy_rx_sb_status_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_phy_rx_sb_status_tready : OUT STD_LOGIC;
      s_axis_phy_rx_sb_status_tvalid : IN STD_LOGIC;
      s_axis_lnk_rx_lane3_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_lnk_rx_lane3_tready : OUT STD_LOGIC;
      s_axis_lnk_rx_lane3_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axis_lnk_rx_lane3_tvalid : IN STD_LOGIC;
      s_axis_lnk_rx_lane2_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_lnk_rx_lane2_tready : OUT STD_LOGIC;
      s_axis_lnk_rx_lane2_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axis_lnk_rx_lane2_tvalid : IN STD_LOGIC;
      s_axis_lnk_rx_lane1_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_lnk_rx_lane1_tready : OUT STD_LOGIC;
      s_axis_lnk_rx_lane1_tuser : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axis_lnk_rx_lane1_tvalid : IN STD_LOGIC;
      edid_iic_scl_i : IN STD_LOGIC;
      edid_iic_scl_o : OUT STD_LOGIC;
      edid_iic_scl_t : OUT STD_LOGIC;
      edid_iic_sda_i : IN STD_LOGIC;
      edid_iic_sda_o : OUT STD_LOGIC;
      edid_iic_sda_t : OUT STD_LOGIC;
      ext_iic_scl_i : IN STD_LOGIC;
      ext_iic_scl_o : OUT STD_LOGIC;
      ext_iic_scl_t : OUT STD_LOGIC;
      ext_iic_sda_i : IN STD_LOGIC;
      ext_iic_sda_o : OUT STD_LOGIC;
      ext_iic_sda_t : OUT STD_LOGIC;
      aud_axi_egress_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      aud_axi_egress_tid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      aud_axi_egress_tready : IN STD_LOGIC;
      aud_axi_egress_tvalid : OUT STD_LOGIC
    );
  END COMPONENT bd_6311;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF dpss_zcu102_rx_v_dp_rxss1_0_0_arch: ARCHITECTURE IS "bd_6311,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF dpss_zcu102_rx_v_dp_rxss1_0_0_arch : ARCHITECTURE IS "dpss_zcu102_rx_v_dp_rxss1_0_0,bd_6311,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF dpss_zcu102_rx_v_dp_rxss1_0_0_arch: ARCHITECTURE IS "dpss_zcu102_rx_v_dp_rxss1_0_0,bd_6311,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_dp_rxss1,x_ipVersion=2.1,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,MODE=0,PHY_DATA_WIDTH=2,BITS_PER_COLOR=10,NUM_STREAMS=1,LANE_COUNT=4,AUDIO_ENABLE=1,AUDIO_CHANNELS=2,AUX_IO_LOC=1,AUX_IO_TYPE=0,HDCP_ENABLE=0,HDCP22_ENABLE=0,SIM_MODE=Disable,PHY_type_External=1,VIDEO_INTERFACE=0,PIXEL_MODE=4,Example_Test_Mode=Disable,ExampleModes=1,INCLUDE_FEC_PORTS=0,ENABLE_DSC=0,ENA" & 
"BLE_DSC_DUMMY_BYTES_IN_RX=0,EDP_ENABLE=0,LINK_RATE=8.1,Component_Name=dpss_zcu102_rx_v_dp_rxss1_0_0,x_ipLicense=displayport@2018.04(hardware_evaluation),x_ipLicense=rs_decoder@2013.03(hardware_evaluation)}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF aud_axi_egress_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 aud_axi_egress TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF aud_axi_egress_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 aud_axi_egress TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF aud_axi_egress_tid: SIGNAL IS "xilinx.com:interface:axis:1.0 aud_axi_egress TID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aud_axi_egress_tdata: SIGNAL IS "XIL_INTERFACENAME aud_axi_egress, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aud_axi_egress_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 aud_axi_egress TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF ext_iic_scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 ext_iic SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF edid_iic_scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 edid_iic SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane1_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane1_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane1_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_lnk_rx_lane1_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_lnk_rx_lane1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 405000000, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane1_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane2_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane2_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane2_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_lnk_rx_lane2_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_lnk_rx_lane2, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 405000000, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane2_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane3_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane3_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane3_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_lnk_rx_lane3_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_lnk_rx_lane3, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 405000000, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane3_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_phy_rx_sb_status_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_phy_rx_sb_status_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_phy_rx_sb_status_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_phy_rx_sb_status, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_phy_rx_sb_status_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_phy_rx_sb_control_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_phy_rx_sb_control_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_phy_rx_sb_control_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_phy_rx_sb_control, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_phy_rx_sb_control_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane0_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane0_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane0_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_lnk_rx_lane0_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_lnk_rx_lane0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 405000000, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_lnk_rx_lane0_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_stream1_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_stream1_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_stream1_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_stream1_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_video_stream1_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_video_stream1, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 350000000, PHASE 0.0, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_stream1_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREAD" & 
"S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dprxss_iic_irq: SIGNAL IS "XIL_INTERFACENAME INTR.dprxss_iic_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF dprxss_iic_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.dprxss_iic_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF acr_valid: SIGNAL IS "XIL_INTERFACENAME DATA.acr_valid, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF acr_valid: SIGNAL IS "xilinx.com:signal:data:1.0 DATA.acr_valid DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_aud_axis_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.m_aud_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_aud_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.m_aud_axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_aud_axis_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.m_aud_axis_aclk, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF aud_axi_egress, ASSOCIATED_RESET m_aud_axis_aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_aud_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.m_aud_axis_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dprxss_dp_irq: SIGNAL IS "XIL_INTERFACENAME INTR.dprxss_dp_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF dprxss_dp_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.dprxss_dp_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rx_hpd: SIGNAL IS "XIL_INTERFACENAME DATA.rx_hpd, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF rx_hpd: SIGNAL IS "xilinx.com:signal:data:1.0 DATA.rx_hpd DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rx_lnk_clk: SIGNAL IS "XIL_INTERFACENAME CLK.rx_lnk_clk, FREQ_HZ 405000000, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, ASSOCIATED_BUSIF s_axis_lnk_rx_lane0:s_axis_lnk_rx_lane1:s_axis_lnk_rx_lane2:s_axis_lnk_rx_lane3, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rx_lnk_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.rx_lnk_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_aclk_stream1: SIGNAL IS "XIL_INTERFACENAME CLK.m_axis_aclk_stream1, FREQ_HZ 350000000, PHASE 0.0, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF m_axis_video_stream1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_aclk_stream1: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.m_axis_aclk_stream1 CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rx_vid_rst: SIGNAL IS "XIL_INTERFACENAME RST.rx_vid_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rx_vid_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.rx_vid_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rx_vid_clk: SIGNAL IS "XIL_INTERFACENAME CLK.rx_vid_clk, FREQ_HZ 350000000, PHASE 0.0, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, ASSOCIATED_RESET rx_vid_rst, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rx_vid_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.rx_vid_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.s_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.s_axi_aclk, FREQ_HZ 99999001, PHASE 0.000, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF m_axis_phy_rx_sb_control:s_axi:s_axis_phy_rx_sb_status, ASSOCIATED_RESET s_axi_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.s_axi_aclk CLK";
BEGIN
  U0 : bd_6311
    PORT MAP (
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      rx_vid_clk => rx_vid_clk,
      rx_vid_rst => rx_vid_rst,
      m_axis_aclk_stream1 => m_axis_aclk_stream1,
      aux_rx_data_in => aux_rx_data_in,
      aux_rx_data_out => aux_rx_data_out,
      aux_rx_data_en_out_n => aux_rx_data_en_out_n,
      rx_lnk_clk => rx_lnk_clk,
      rx_hpd => rx_hpd,
      dprxss_dp_irq => dprxss_dp_irq,
      m_aud_axis_aclk => m_aud_axis_aclk,
      m_aud_axis_aresetn => m_aud_axis_aresetn,
      acr_m_aud => acr_m_aud,
      acr_n_aud => acr_n_aud,
      acr_valid => acr_valid,
      ext_rst => ext_rst,
      dprxss_iic_irq => dprxss_iic_irq,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awprot => s_axi_awprot,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arprot => s_axi_arprot,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      m_axis_video_stream1_tdata => m_axis_video_stream1_tdata,
      m_axis_video_stream1_tlast => m_axis_video_stream1_tlast,
      m_axis_video_stream1_tready => m_axis_video_stream1_tready,
      m_axis_video_stream1_tuser => m_axis_video_stream1_tuser,
      m_axis_video_stream1_tvalid => m_axis_video_stream1_tvalid,
      s_axis_lnk_rx_lane0_tdata => s_axis_lnk_rx_lane0_tdata,
      s_axis_lnk_rx_lane0_tready => s_axis_lnk_rx_lane0_tready,
      s_axis_lnk_rx_lane0_tuser => s_axis_lnk_rx_lane0_tuser,
      s_axis_lnk_rx_lane0_tvalid => s_axis_lnk_rx_lane0_tvalid,
      m_axis_phy_rx_sb_control_tdata => m_axis_phy_rx_sb_control_tdata,
      m_axis_phy_rx_sb_control_tready => m_axis_phy_rx_sb_control_tready,
      m_axis_phy_rx_sb_control_tvalid => m_axis_phy_rx_sb_control_tvalid,
      s_axis_phy_rx_sb_status_tdata => s_axis_phy_rx_sb_status_tdata,
      s_axis_phy_rx_sb_status_tready => s_axis_phy_rx_sb_status_tready,
      s_axis_phy_rx_sb_status_tvalid => s_axis_phy_rx_sb_status_tvalid,
      s_axis_lnk_rx_lane3_tdata => s_axis_lnk_rx_lane3_tdata,
      s_axis_lnk_rx_lane3_tready => s_axis_lnk_rx_lane3_tready,
      s_axis_lnk_rx_lane3_tuser => s_axis_lnk_rx_lane3_tuser,
      s_axis_lnk_rx_lane3_tvalid => s_axis_lnk_rx_lane3_tvalid,
      s_axis_lnk_rx_lane2_tdata => s_axis_lnk_rx_lane2_tdata,
      s_axis_lnk_rx_lane2_tready => s_axis_lnk_rx_lane2_tready,
      s_axis_lnk_rx_lane2_tuser => s_axis_lnk_rx_lane2_tuser,
      s_axis_lnk_rx_lane2_tvalid => s_axis_lnk_rx_lane2_tvalid,
      s_axis_lnk_rx_lane1_tdata => s_axis_lnk_rx_lane1_tdata,
      s_axis_lnk_rx_lane1_tready => s_axis_lnk_rx_lane1_tready,
      s_axis_lnk_rx_lane1_tuser => s_axis_lnk_rx_lane1_tuser,
      s_axis_lnk_rx_lane1_tvalid => s_axis_lnk_rx_lane1_tvalid,
      edid_iic_scl_i => edid_iic_scl_i,
      edid_iic_scl_o => edid_iic_scl_o,
      edid_iic_scl_t => edid_iic_scl_t,
      edid_iic_sda_i => edid_iic_sda_i,
      edid_iic_sda_o => edid_iic_sda_o,
      edid_iic_sda_t => edid_iic_sda_t,
      ext_iic_scl_i => ext_iic_scl_i,
      ext_iic_scl_o => ext_iic_scl_o,
      ext_iic_scl_t => ext_iic_scl_t,
      ext_iic_sda_i => ext_iic_sda_i,
      ext_iic_sda_o => ext_iic_sda_o,
      ext_iic_sda_t => ext_iic_sda_t,
      aud_axi_egress_tdata => aud_axi_egress_tdata,
      aud_axi_egress_tid => aud_axi_egress_tid,
      aud_axi_egress_tready => aud_axi_egress_tready,
      aud_axi_egress_tvalid => aud_axi_egress_tvalid
    );
END dpss_zcu102_rx_v_dp_rxss1_0_0_arch;
