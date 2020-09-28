--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_6311.bd
--Design : bd_6311
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_6311 is
  port (
    acr_m_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_n_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_valid : out STD_LOGIC;
    aud_axi_egress_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aud_axi_egress_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aud_axi_egress_tready : in STD_LOGIC;
    aud_axi_egress_tvalid : out STD_LOGIC;
    aux_rx_data_en_out_n : out STD_LOGIC;
    aux_rx_data_in : in STD_LOGIC;
    aux_rx_data_out : out STD_LOGIC;
    dprxss_dp_irq : out STD_LOGIC;
    dprxss_iic_irq : out STD_LOGIC;
    edid_iic_scl_i : in STD_LOGIC;
    edid_iic_scl_o : out STD_LOGIC;
    edid_iic_scl_t : out STD_LOGIC;
    edid_iic_sda_i : in STD_LOGIC;
    edid_iic_sda_o : out STD_LOGIC;
    edid_iic_sda_t : out STD_LOGIC;
    ext_iic_scl_i : in STD_LOGIC;
    ext_iic_scl_o : out STD_LOGIC;
    ext_iic_scl_t : out STD_LOGIC;
    ext_iic_sda_i : in STD_LOGIC;
    ext_iic_sda_o : out STD_LOGIC;
    ext_iic_sda_t : out STD_LOGIC;
    ext_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_aud_axis_aclk : in STD_LOGIC;
    m_aud_axis_aresetn : in STD_LOGIC;
    m_axis_aclk_stream1 : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_phy_rx_sb_control_tready : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tvalid : out STD_LOGIC;
    m_axis_video_stream1_tdata : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axis_video_stream1_tlast : out STD_LOGIC;
    m_axis_video_stream1_tready : in STD_LOGIC;
    m_axis_video_stream1_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_stream1_tvalid : out STD_LOGIC;
    rx_hpd : out STD_LOGIC;
    rx_lnk_clk : in STD_LOGIC;
    rx_vid_clk : in STD_LOGIC;
    rx_vid_rst : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_lnk_rx_lane0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane0_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane0_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane1_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane1_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane2_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane2_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane3_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane3_tvalid : in STD_LOGIC;
    s_axis_phy_rx_sb_status_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_phy_rx_sb_status_tready : out STD_LOGIC;
    s_axis_phy_rx_sb_status_tvalid : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_6311 : entity is "bd_6311,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_6311,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_6311 : entity is "dpss_zcu102_rx_v_dp_rxss1_0_0.hwdef";
end bd_6311;

architecture STRUCTURE of bd_6311 is
  component bd_6311_dp_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_int : out STD_LOGIC;
    rx_vid_clk : in STD_LOGIC;
    rx_vid_rst : in STD_LOGIC;
    rx_vid_vsync : out STD_LOGIC;
    rx_vid_hsync : out STD_LOGIC;
    rx_vid_oddeven : out STD_LOGIC;
    rx_vid_enable : out STD_LOGIC;
    rx_vid_pixel0 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel1 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rx_vid_pixel3 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    lnk_m_vid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lnk_n_vid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aux_rx_data_in : in STD_LOGIC;
    aux_rx_data_out : out STD_LOGIC;
    aux_rx_data_en_out_n : out STD_LOGIC;
    rx_hpd : out STD_LOGIC;
    i2c_sda_in : in STD_LOGIC;
    i2c_sda_enable_n : out STD_LOGIC;
    i2c_sda_o : out STD_LOGIC;
    i2c_scl_in : in STD_LOGIC;
    i2c_scl_enable_n : out STD_LOGIC;
    i2c_scl_o : out STD_LOGIC;
    aud_rst : in STD_LOGIC;
    rx_lnk_clk : in STD_LOGIC;
    lnk_rx_axi4s_lane0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane0_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane0_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane1_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane1_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane2_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane2_tready : out STD_LOGIC;
    lnk_rx_axi4s_lane3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lnk_rx_axi4s_lane3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    lnk_rx_axi4s_lane3_tvalid : in STD_LOGIC;
    lnk_rx_axi4s_lane3_tready : out STD_LOGIC;
    lnk_rx_sb_status_axi4s_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    lnk_rx_sb_status_axi4s_tvalid : in STD_LOGIC;
    lnk_rx_sb_status_axi4s_tready : out STD_LOGIC;
    lnk_rx_sb_control_axi4s_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lnk_rx_sb_control_axi4s_tvalid : out STD_LOGIC;
    lnk_rx_sb_control_axi4s_tready : in STD_LOGIC;
    lnk_m_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lnk_n_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_aud_axis_aclk : in STD_LOGIC;
    m_aud_axis_aresetn : in STD_LOGIC;
    m_axis_audio_egress_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_audio_egress_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_audio_egress_tvalid : out STD_LOGIC;
    m_axis_audio_egress_tready : in STD_LOGIC;
    link_bw_high_out : out STD_LOGIC;
    link_bw_hbr2_out : out STD_LOGIC;
    bw_changed_out : out STD_LOGIC;
    rx_vid_pixel_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_vid_msa_hres : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_vid_msa_vres : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_bpc : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_cformat : out STD_LOGIC_VECTOR ( 2 downto 0 );
    acr_m_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_n_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_valid : out STD_LOGIC
  );
  end component bd_6311_dp_0;
  component bd_6311_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_6311_xlconstant_0_0;
  component bd_6311_iic_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_6311_iic_0;
  component bd_6311_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC
  );
  end component bd_6311_xbar_0;
  component bd_6311_vb1_0 is
  port (
    vid_pixel_clk : in STD_LOGIC;
    vid_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_pixel0 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel1 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel2 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    vid_pixel3 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dp_hres : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pixel_mode : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bpc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_format : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    wr_error : out STD_LOGIC;
    rd_error : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    hres_cntr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vres_cntr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    debug_port : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_6311_vb1_0;
  component bd_6311_notof_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_6311_notof_0_0;
  signal aux_rx_data_in_1 : STD_LOGIC;
  signal dp_acr_m_aud : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dp_acr_n_aud : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal dp_acr_valid : STD_LOGIC;
  signal dp_aud_axi_egress_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dp_aud_axi_egress_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dp_aud_axi_egress_TREADY : STD_LOGIC;
  signal dp_aud_axi_egress_TVALID : STD_LOGIC;
  signal dp_aux_rx_data_en_out_n : STD_LOGIC;
  signal dp_aux_rx_data_out : STD_LOGIC;
  signal dp_axi_int : STD_LOGIC;
  signal dp_dp_rx_vid_intf_str0_TX_VID_ENABLE : STD_LOGIC;
  signal dp_dp_rx_vid_intf_str0_TX_VID_HSYNC : STD_LOGIC;
  signal dp_dp_rx_vid_intf_str0_TX_VID_PIXEL0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal dp_dp_rx_vid_intf_str0_TX_VID_PIXEL1 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal dp_dp_rx_vid_intf_str0_TX_VID_PIXEL2 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal dp_dp_rx_vid_intf_str0_TX_VID_PIXEL3 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal dp_dp_rx_vid_intf_str0_TX_VID_VSYNC : STD_LOGIC;
  signal dp_i2c_edid_SCL_I : STD_LOGIC;
  signal dp_i2c_edid_SCL_O : STD_LOGIC;
  signal dp_i2c_edid_SCL_T : STD_LOGIC;
  signal dp_i2c_edid_SDA_I : STD_LOGIC;
  signal dp_i2c_edid_SDA_O : STD_LOGIC;
  signal dp_i2c_edid_SDA_T : STD_LOGIC;
  signal dp_lnk_rx_sb_control_axi4s_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dp_lnk_rx_sb_control_axi4s_TREADY : STD_LOGIC;
  signal dp_lnk_rx_sb_control_axi4s_TVALID : STD_LOGIC;
  signal dp_rx_bpc : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dp_rx_cformat : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dp_rx_hpd : STD_LOGIC;
  signal dp_rx_vid_msa_hres : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dp_rx_vid_pixel_mode : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal iic_IIC_SCL_I : STD_LOGIC;
  signal iic_IIC_SCL_O : STD_LOGIC;
  signal iic_IIC_SCL_T : STD_LOGIC;
  signal iic_IIC_SDA_I : STD_LOGIC;
  signal iic_IIC_SDA_O : STD_LOGIC;
  signal iic_IIC_SDA_T : STD_LOGIC;
  signal iic_gpo : STD_LOGIC_VECTOR ( 0 to 0 );
  signal iic_iic2intc_irpt : STD_LOGIC;
  signal m_aud_axis_aclk_1 : STD_LOGIC;
  signal m_aud_axis_aresetn_1 : STD_LOGIC;
  signal m_axis_aclk_stream1_1 : STD_LOGIC;
  signal notof_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_lnk_clk_1 : STD_LOGIC;
  signal rx_vid_clk_1 : STD_LOGIC;
  signal rx_vid_rst_1 : STD_LOGIC;
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s_axi_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s_axi_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal s_axis_lnk_rx_lane0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_lnk_rx_lane0_1_TREADY : STD_LOGIC;
  signal s_axis_lnk_rx_lane0_1_TUSER : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axis_lnk_rx_lane0_1_TVALID : STD_LOGIC;
  signal s_axis_lnk_rx_lane1_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_lnk_rx_lane1_1_TREADY : STD_LOGIC;
  signal s_axis_lnk_rx_lane1_1_TUSER : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axis_lnk_rx_lane1_1_TVALID : STD_LOGIC;
  signal s_axis_lnk_rx_lane2_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_lnk_rx_lane2_1_TREADY : STD_LOGIC;
  signal s_axis_lnk_rx_lane2_1_TUSER : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axis_lnk_rx_lane2_1_TVALID : STD_LOGIC;
  signal s_axis_lnk_rx_lane3_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_lnk_rx_lane3_1_TREADY : STD_LOGIC;
  signal s_axis_lnk_rx_lane3_1_TUSER : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s_axis_lnk_rx_lane3_1_TVALID : STD_LOGIC;
  signal s_axis_phy_rx_sb_status_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_phy_rx_sb_status_1_TREADY : STD_LOGIC;
  signal s_axis_phy_rx_sb_status_1_TVALID : STD_LOGIC;
  signal vb1_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 119 downto 0 );
  signal vb1_m_axis_video_TLAST : STD_LOGIC;
  signal vb1_m_axis_video_TREADY : STD_LOGIC;
  signal vb1_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vb1_m_axis_video_TVALID : STD_LOGIC;
  signal xbar_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_M00_AXI_ARREADY : STD_LOGIC;
  signal xbar_M00_AXI_ARVALID : STD_LOGIC;
  signal xbar_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_M00_AXI_AWREADY : STD_LOGIC;
  signal xbar_M00_AXI_AWVALID : STD_LOGIC;
  signal xbar_M00_AXI_BREADY : STD_LOGIC;
  signal xbar_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M00_AXI_BVALID : STD_LOGIC;
  signal xbar_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_RREADY : STD_LOGIC;
  signal xbar_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M00_AXI_RVALID : STD_LOGIC;
  signal xbar_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M00_AXI_WREADY : STD_LOGIC;
  signal xbar_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_M00_AXI_WVALID : STD_LOGIC;
  signal xbar_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xbar_M01_AXI_ARREADY : STD_LOGIC;
  signal xbar_M01_AXI_ARVALID : STD_LOGIC;
  signal xbar_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xbar_M01_AXI_AWREADY : STD_LOGIC;
  signal xbar_M01_AXI_AWVALID : STD_LOGIC;
  signal xbar_M01_AXI_BREADY : STD_LOGIC;
  signal xbar_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M01_AXI_BVALID : STD_LOGIC;
  signal xbar_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M01_AXI_RREADY : STD_LOGIC;
  signal xbar_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_M01_AXI_RVALID : STD_LOGIC;
  signal xbar_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_M01_AXI_WREADY : STD_LOGIC;
  signal xbar_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_M01_AXI_WVALID : STD_LOGIC;
  signal NLW_dp_bw_changed_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dp_link_bw_hbr2_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dp_link_bw_high_out_UNCONNECTED : STD_LOGIC;
  signal NLW_dp_rx_vid_oddeven_UNCONNECTED : STD_LOGIC;
  signal NLW_dp_lnk_m_aud_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_dp_lnk_m_vid_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_dp_lnk_n_aud_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_dp_lnk_n_vid_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_dp_rx_vid_msa_vres_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_vb1_rd_error_UNCONNECTED : STD_LOGIC;
  signal NLW_vb1_wr_error_UNCONNECTED : STD_LOGIC;
  signal NLW_vb1_debug_port_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_vb1_hres_cntr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_vb1_vres_cntr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_xbar_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xlconstant_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of acr_valid : signal is "xilinx.com:signal:data:1.0 DATA.ACR_VALID DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of acr_valid : signal is "XIL_INTERFACENAME DATA.ACR_VALID, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of aud_axi_egress_tready : signal is "xilinx.com:interface:axis:1.0 aud_axi_egress TREADY";
  attribute X_INTERFACE_INFO of aud_axi_egress_tvalid : signal is "xilinx.com:interface:axis:1.0 aud_axi_egress TVALID";
  attribute X_INTERFACE_INFO of dprxss_dp_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.DPRXSS_DP_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of dprxss_dp_irq : signal is "XIL_INTERFACENAME INTR.DPRXSS_DP_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of dprxss_iic_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.DPRXSS_IIC_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of dprxss_iic_irq : signal is "XIL_INTERFACENAME INTR.DPRXSS_IIC_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of edid_iic_scl_i : signal is "xilinx.com:interface:iic:1.0 edid_iic SCL_I";
  attribute X_INTERFACE_INFO of edid_iic_scl_o : signal is "xilinx.com:interface:iic:1.0 edid_iic SCL_O";
  attribute X_INTERFACE_INFO of edid_iic_scl_t : signal is "xilinx.com:interface:iic:1.0 edid_iic SCL_T";
  attribute X_INTERFACE_INFO of edid_iic_sda_i : signal is "xilinx.com:interface:iic:1.0 edid_iic SDA_I";
  attribute X_INTERFACE_INFO of edid_iic_sda_o : signal is "xilinx.com:interface:iic:1.0 edid_iic SDA_O";
  attribute X_INTERFACE_INFO of edid_iic_sda_t : signal is "xilinx.com:interface:iic:1.0 edid_iic SDA_T";
  attribute X_INTERFACE_INFO of ext_iic_scl_i : signal is "xilinx.com:interface:iic:1.0 ext_iic SCL_I";
  attribute X_INTERFACE_INFO of ext_iic_scl_o : signal is "xilinx.com:interface:iic:1.0 ext_iic SCL_O";
  attribute X_INTERFACE_INFO of ext_iic_scl_t : signal is "xilinx.com:interface:iic:1.0 ext_iic SCL_T";
  attribute X_INTERFACE_INFO of ext_iic_sda_i : signal is "xilinx.com:interface:iic:1.0 ext_iic SDA_I";
  attribute X_INTERFACE_INFO of ext_iic_sda_o : signal is "xilinx.com:interface:iic:1.0 ext_iic SDA_O";
  attribute X_INTERFACE_INFO of ext_iic_sda_t : signal is "xilinx.com:interface:iic:1.0 ext_iic SDA_T";
  attribute X_INTERFACE_INFO of m_aud_axis_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.M_AUD_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of m_aud_axis_aclk : signal is "XIL_INTERFACENAME CLK.M_AUD_AXIS_ACLK, ASSOCIATED_BUSIF aud_axi_egress, ASSOCIATED_RESET m_aud_axis_aresetn, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 99999001, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_aud_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.M_AUD_AXIS_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of m_aud_axis_aresetn : signal is "XIL_INTERFACENAME RST.M_AUD_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_aclk_stream1 : signal is "xilinx.com:signal:clock:1.0 CLK.M_AXIS_ACLK_STREAM1 CLK";
  attribute X_INTERFACE_PARAMETER of m_axis_aclk_stream1 : signal is "XIL_INTERFACENAME CLK.M_AXIS_ACLK_STREAM1, ASSOCIATED_BUSIF m_axis_video_stream1, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, FREQ_HZ 350000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of m_axis_phy_rx_sb_control_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TREADY";
  attribute X_INTERFACE_INFO of m_axis_phy_rx_sb_control_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TVALID";
  attribute X_INTERFACE_INFO of m_axis_video_stream1_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TLAST";
  attribute X_INTERFACE_INFO of m_axis_video_stream1_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TREADY";
  attribute X_INTERFACE_INFO of m_axis_video_stream1_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TVALID";
  attribute X_INTERFACE_INFO of rx_hpd : signal is "xilinx.com:signal:data:1.0 DATA.RX_HPD DATA";
  attribute X_INTERFACE_PARAMETER of rx_hpd : signal is "XIL_INTERFACENAME DATA.RX_HPD, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rx_lnk_clk : signal is "xilinx.com:signal:clock:1.0 CLK.RX_LNK_CLK CLK";
  attribute X_INTERFACE_PARAMETER of rx_lnk_clk : signal is "XIL_INTERFACENAME CLK.RX_LNK_CLK, ASSOCIATED_BUSIF s_axis_lnk_rx_lane0:s_axis_lnk_rx_lane1:s_axis_lnk_rx_lane2:s_axis_lnk_rx_lane3, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 405000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rx_vid_clk : signal is "xilinx.com:signal:clock:1.0 CLK.RX_VID_CLK CLK";
  attribute X_INTERFACE_PARAMETER of rx_vid_clk : signal is "XIL_INTERFACENAME CLK.RX_VID_CLK, ASSOCIATED_RESET rx_vid_rst, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, FREQ_HZ 350000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rx_vid_rst : signal is "xilinx.com:signal:reset:1.0 RST.RX_VID_RST RST";
  attribute X_INTERFACE_PARAMETER of rx_vid_rst : signal is "XIL_INTERFACENAME RST.RX_VID_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF m_axis_phy_rx_sb_control:s_axi:s_axis_phy_rx_sb_status, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET s_axi_aresetn, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 99999001, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane0_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TREADY";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane0_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TVALID";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane1_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TREADY";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane1_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TVALID";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane2_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TREADY";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane2_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TVALID";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane3_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TREADY";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane3_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TVALID";
  attribute X_INTERFACE_INFO of s_axis_phy_rx_sb_status_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TREADY";
  attribute X_INTERFACE_INFO of s_axis_phy_rx_sb_status_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TVALID";
  attribute X_INTERFACE_INFO of aud_axi_egress_tdata : signal is "xilinx.com:interface:axis:1.0 aud_axi_egress TDATA";
  attribute X_INTERFACE_PARAMETER of aud_axi_egress_tdata : signal is "XIL_INTERFACENAME aud_axi_egress, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 99999001, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of aud_axi_egress_tid : signal is "xilinx.com:interface:axis:1.0 aud_axi_egress TID";
  attribute X_INTERFACE_INFO of m_axis_phy_rx_sb_control_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_phy_rx_sb_control TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_phy_rx_sb_control_tdata : signal is "XIL_INTERFACENAME m_axis_phy_rx_sb_control, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 99999001, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of m_axis_video_stream1_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_video_stream1_tdata : signal is "XIL_INTERFACENAME m_axis_video_stream1, CLK_DOMAIN dpss_zcu102_rx_clk_wiz_0_0_clk_out1, FREQ_HZ 350000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 15, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of m_axis_video_stream1_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video_stream1 TUSER";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 13, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane0_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_lnk_rx_lane0_tdata : signal is "XIL_INTERFACENAME s_axis_lnk_rx_lane0, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 405000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane0_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane0 TUSER";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane1_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_lnk_rx_lane1_tdata : signal is "XIL_INTERFACENAME s_axis_lnk_rx_lane1, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 405000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane1_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane1 TUSER";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane2_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_lnk_rx_lane2_tdata : signal is "XIL_INTERFACENAME s_axis_lnk_rx_lane2, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 405000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane2_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane2 TUSER";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane3_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_lnk_rx_lane3_tdata : signal is "XIL_INTERFACENAME s_axis_lnk_rx_lane3, CLK_DOMAIN dpss_zcu102_rx_vid_phy_controller_0_0_rxoutclk, FREQ_HZ 405000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 12";
  attribute X_INTERFACE_INFO of s_axis_lnk_rx_lane3_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_lnk_rx_lane3 TUSER";
  attribute X_INTERFACE_INFO of s_axis_phy_rx_sb_status_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_phy_rx_sb_status TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_phy_rx_sb_status_tdata : signal is "XIL_INTERFACENAME s_axis_phy_rx_sb_status, CLK_DOMAIN dpss_zcu102_rx_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 99999001, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  acr_m_aud(23 downto 0) <= dp_acr_m_aud(23 downto 0);
  acr_n_aud(23 downto 0) <= dp_acr_n_aud(23 downto 0);
  acr_valid <= dp_acr_valid;
  aud_axi_egress_tdata(31 downto 0) <= dp_aud_axi_egress_TDATA(31 downto 0);
  aud_axi_egress_tid(7 downto 0) <= dp_aud_axi_egress_TID(7 downto 0);
  aud_axi_egress_tvalid <= dp_aud_axi_egress_TVALID;
  aux_rx_data_en_out_n <= dp_aux_rx_data_en_out_n;
  aux_rx_data_in_1 <= aux_rx_data_in;
  aux_rx_data_out <= dp_aux_rx_data_out;
  dp_aud_axi_egress_TREADY <= aud_axi_egress_tready;
  dp_i2c_edid_SCL_I <= edid_iic_scl_i;
  dp_i2c_edid_SDA_I <= edid_iic_sda_i;
  dp_lnk_rx_sb_control_axi4s_TREADY <= m_axis_phy_rx_sb_control_tready;
  dprxss_dp_irq <= dp_axi_int;
  dprxss_iic_irq <= iic_iic2intc_irpt;
  edid_iic_scl_o <= dp_i2c_edid_SCL_O;
  edid_iic_scl_t <= dp_i2c_edid_SCL_T;
  edid_iic_sda_o <= dp_i2c_edid_SDA_O;
  edid_iic_sda_t <= dp_i2c_edid_SDA_T;
  ext_iic_scl_o <= iic_IIC_SCL_O;
  ext_iic_scl_t <= iic_IIC_SCL_T;
  ext_iic_sda_o <= iic_IIC_SDA_O;
  ext_iic_sda_t <= iic_IIC_SDA_T;
  ext_rst(0) <= iic_gpo(0);
  iic_IIC_SCL_I <= ext_iic_scl_i;
  iic_IIC_SDA_I <= ext_iic_sda_i;
  m_aud_axis_aclk_1 <= m_aud_axis_aclk;
  m_aud_axis_aresetn_1 <= m_aud_axis_aresetn;
  m_axis_aclk_stream1_1 <= m_axis_aclk_stream1;
  m_axis_phy_rx_sb_control_tdata(7 downto 0) <= dp_lnk_rx_sb_control_axi4s_TDATA(7 downto 0);
  m_axis_phy_rx_sb_control_tvalid <= dp_lnk_rx_sb_control_axi4s_TVALID;
  m_axis_video_stream1_tdata(119 downto 0) <= vb1_m_axis_video_TDATA(119 downto 0);
  m_axis_video_stream1_tlast <= vb1_m_axis_video_TLAST;
  m_axis_video_stream1_tuser(0) <= vb1_m_axis_video_TUSER(0);
  m_axis_video_stream1_tvalid <= vb1_m_axis_video_TVALID;
  rx_hpd <= dp_rx_hpd;
  rx_lnk_clk_1 <= rx_lnk_clk;
  rx_vid_clk_1 <= rx_vid_clk;
  rx_vid_rst_1 <= rx_vid_rst;
  s_axi_1_ARADDR(12 downto 0) <= s_axi_araddr(12 downto 0);
  s_axi_1_ARPROT(2 downto 0) <= s_axi_arprot(2 downto 0);
  s_axi_1_ARVALID(0) <= s_axi_arvalid(0);
  s_axi_1_AWADDR(12 downto 0) <= s_axi_awaddr(12 downto 0);
  s_axi_1_AWPROT(2 downto 0) <= s_axi_awprot(2 downto 0);
  s_axi_1_AWVALID(0) <= s_axi_awvalid(0);
  s_axi_1_BREADY(0) <= s_axi_bready(0);
  s_axi_1_RREADY(0) <= s_axi_rready(0);
  s_axi_1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  s_axi_1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  s_axi_1_WVALID(0) <= s_axi_wvalid(0);
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
  s_axi_arready(0) <= s_axi_1_ARREADY;
  s_axi_awready(0) <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid(0) <= s_axi_1_BVALID;
  s_axi_rdata(31 downto 0) <= s_axi_1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= s_axi_1_RRESP(1 downto 0);
  s_axi_rvalid(0) <= s_axi_1_RVALID;
  s_axi_wready(0) <= s_axi_1_WREADY;
  s_axis_lnk_rx_lane0_1_TDATA(31 downto 0) <= s_axis_lnk_rx_lane0_tdata(31 downto 0);
  s_axis_lnk_rx_lane0_1_TUSER(11 downto 0) <= s_axis_lnk_rx_lane0_tuser(11 downto 0);
  s_axis_lnk_rx_lane0_1_TVALID <= s_axis_lnk_rx_lane0_tvalid;
  s_axis_lnk_rx_lane0_tready <= s_axis_lnk_rx_lane0_1_TREADY;
  s_axis_lnk_rx_lane1_1_TDATA(31 downto 0) <= s_axis_lnk_rx_lane1_tdata(31 downto 0);
  s_axis_lnk_rx_lane1_1_TUSER(11 downto 0) <= s_axis_lnk_rx_lane1_tuser(11 downto 0);
  s_axis_lnk_rx_lane1_1_TVALID <= s_axis_lnk_rx_lane1_tvalid;
  s_axis_lnk_rx_lane1_tready <= s_axis_lnk_rx_lane1_1_TREADY;
  s_axis_lnk_rx_lane2_1_TDATA(31 downto 0) <= s_axis_lnk_rx_lane2_tdata(31 downto 0);
  s_axis_lnk_rx_lane2_1_TUSER(11 downto 0) <= s_axis_lnk_rx_lane2_tuser(11 downto 0);
  s_axis_lnk_rx_lane2_1_TVALID <= s_axis_lnk_rx_lane2_tvalid;
  s_axis_lnk_rx_lane2_tready <= s_axis_lnk_rx_lane2_1_TREADY;
  s_axis_lnk_rx_lane3_1_TDATA(31 downto 0) <= s_axis_lnk_rx_lane3_tdata(31 downto 0);
  s_axis_lnk_rx_lane3_1_TUSER(11 downto 0) <= s_axis_lnk_rx_lane3_tuser(11 downto 0);
  s_axis_lnk_rx_lane3_1_TVALID <= s_axis_lnk_rx_lane3_tvalid;
  s_axis_lnk_rx_lane3_tready <= s_axis_lnk_rx_lane3_1_TREADY;
  s_axis_phy_rx_sb_status_1_TDATA(15 downto 0) <= s_axis_phy_rx_sb_status_tdata(15 downto 0);
  s_axis_phy_rx_sb_status_1_TVALID <= s_axis_phy_rx_sb_status_tvalid;
  s_axis_phy_rx_sb_status_tready <= s_axis_phy_rx_sb_status_1_TREADY;
  vb1_m_axis_video_TREADY <= m_axis_video_stream1_tready;
dp: component bd_6311_dp_0
     port map (
      acr_m_aud(23 downto 0) => dp_acr_m_aud(23 downto 0),
      acr_n_aud(23 downto 0) => dp_acr_n_aud(23 downto 0),
      acr_valid => dp_acr_valid,
      aud_rst => notof_0_Res(0),
      aux_rx_data_en_out_n => dp_aux_rx_data_en_out_n,
      aux_rx_data_in => aux_rx_data_in_1,
      aux_rx_data_out => dp_aux_rx_data_out,
      axi_int => dp_axi_int,
      bw_changed_out => NLW_dp_bw_changed_out_UNCONNECTED,
      i2c_scl_enable_n => dp_i2c_edid_SCL_T,
      i2c_scl_in => dp_i2c_edid_SCL_I,
      i2c_scl_o => dp_i2c_edid_SCL_O,
      i2c_sda_enable_n => dp_i2c_edid_SDA_T,
      i2c_sda_in => dp_i2c_edid_SDA_I,
      i2c_sda_o => dp_i2c_edid_SDA_O,
      link_bw_hbr2_out => NLW_dp_link_bw_hbr2_out_UNCONNECTED,
      link_bw_high_out => NLW_dp_link_bw_high_out_UNCONNECTED,
      lnk_m_aud(23 downto 0) => NLW_dp_lnk_m_aud_UNCONNECTED(23 downto 0),
      lnk_m_vid(23 downto 0) => NLW_dp_lnk_m_vid_UNCONNECTED(23 downto 0),
      lnk_n_aud(23 downto 0) => NLW_dp_lnk_n_aud_UNCONNECTED(23 downto 0),
      lnk_n_vid(23 downto 0) => NLW_dp_lnk_n_vid_UNCONNECTED(23 downto 0),
      lnk_rx_axi4s_lane0_tdata(31 downto 0) => s_axis_lnk_rx_lane0_1_TDATA(31 downto 0),
      lnk_rx_axi4s_lane0_tready => s_axis_lnk_rx_lane0_1_TREADY,
      lnk_rx_axi4s_lane0_tuser(11 downto 0) => s_axis_lnk_rx_lane0_1_TUSER(11 downto 0),
      lnk_rx_axi4s_lane0_tvalid => s_axis_lnk_rx_lane0_1_TVALID,
      lnk_rx_axi4s_lane1_tdata(31 downto 0) => s_axis_lnk_rx_lane1_1_TDATA(31 downto 0),
      lnk_rx_axi4s_lane1_tready => s_axis_lnk_rx_lane1_1_TREADY,
      lnk_rx_axi4s_lane1_tuser(11 downto 0) => s_axis_lnk_rx_lane1_1_TUSER(11 downto 0),
      lnk_rx_axi4s_lane1_tvalid => s_axis_lnk_rx_lane1_1_TVALID,
      lnk_rx_axi4s_lane2_tdata(31 downto 0) => s_axis_lnk_rx_lane2_1_TDATA(31 downto 0),
      lnk_rx_axi4s_lane2_tready => s_axis_lnk_rx_lane2_1_TREADY,
      lnk_rx_axi4s_lane2_tuser(11 downto 0) => s_axis_lnk_rx_lane2_1_TUSER(11 downto 0),
      lnk_rx_axi4s_lane2_tvalid => s_axis_lnk_rx_lane2_1_TVALID,
      lnk_rx_axi4s_lane3_tdata(31 downto 0) => s_axis_lnk_rx_lane3_1_TDATA(31 downto 0),
      lnk_rx_axi4s_lane3_tready => s_axis_lnk_rx_lane3_1_TREADY,
      lnk_rx_axi4s_lane3_tuser(11 downto 0) => s_axis_lnk_rx_lane3_1_TUSER(11 downto 0),
      lnk_rx_axi4s_lane3_tvalid => s_axis_lnk_rx_lane3_1_TVALID,
      lnk_rx_sb_control_axi4s_tdata(7 downto 0) => dp_lnk_rx_sb_control_axi4s_TDATA(7 downto 0),
      lnk_rx_sb_control_axi4s_tready => dp_lnk_rx_sb_control_axi4s_TREADY,
      lnk_rx_sb_control_axi4s_tvalid => dp_lnk_rx_sb_control_axi4s_TVALID,
      lnk_rx_sb_status_axi4s_tdata(15 downto 0) => s_axis_phy_rx_sb_status_1_TDATA(15 downto 0),
      lnk_rx_sb_status_axi4s_tready => s_axis_phy_rx_sb_status_1_TREADY,
      lnk_rx_sb_status_axi4s_tvalid => s_axis_phy_rx_sb_status_1_TVALID,
      m_aud_axis_aclk => m_aud_axis_aclk_1,
      m_aud_axis_aresetn => m_aud_axis_aresetn_1,
      m_axis_audio_egress_tdata(31 downto 0) => dp_aud_axi_egress_TDATA(31 downto 0),
      m_axis_audio_egress_tid(7 downto 0) => dp_aud_axi_egress_TID(7 downto 0),
      m_axis_audio_egress_tready => dp_aud_axi_egress_TREADY,
      m_axis_audio_egress_tvalid => dp_aud_axi_egress_TVALID,
      rx_bpc(2 downto 0) => dp_rx_bpc(2 downto 0),
      rx_cformat(2 downto 0) => dp_rx_cformat(2 downto 0),
      rx_hpd => dp_rx_hpd,
      rx_lnk_clk => rx_lnk_clk_1,
      rx_vid_clk => rx_vid_clk_1,
      rx_vid_enable => dp_dp_rx_vid_intf_str0_TX_VID_ENABLE,
      rx_vid_hsync => dp_dp_rx_vid_intf_str0_TX_VID_HSYNC,
      rx_vid_msa_hres(15 downto 0) => dp_rx_vid_msa_hres(15 downto 0),
      rx_vid_msa_vres(15 downto 0) => NLW_dp_rx_vid_msa_vres_UNCONNECTED(15 downto 0),
      rx_vid_oddeven => NLW_dp_rx_vid_oddeven_UNCONNECTED,
      rx_vid_pixel0(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL0(47 downto 0),
      rx_vid_pixel1(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL1(47 downto 0),
      rx_vid_pixel2(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL2(47 downto 0),
      rx_vid_pixel3(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL3(47 downto 0),
      rx_vid_pixel_mode(2 downto 0) => dp_rx_vid_pixel_mode(2 downto 0),
      rx_vid_rst => rx_vid_rst_1,
      rx_vid_vsync => dp_dp_rx_vid_intf_str0_TX_VID_VSYNC,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(31 downto 0) => xbar_M00_AXI_ARADDR(31 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arprot(2 downto 0) => xbar_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => xbar_M00_AXI_ARREADY,
      s_axi_arvalid => xbar_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => xbar_M00_AXI_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => xbar_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => xbar_M00_AXI_AWREADY,
      s_axi_awvalid => xbar_M00_AXI_AWVALID,
      s_axi_bready => xbar_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => xbar_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => xbar_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => xbar_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => xbar_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => xbar_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => xbar_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => xbar_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => xbar_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => xbar_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => xbar_M00_AXI_WVALID
    );
iic: component bd_6311_iic_0
     port map (
      gpo(0) => iic_gpo(0),
      iic2intc_irpt => iic_iic2intc_irpt,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(8 downto 0) => xbar_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => xbar_M01_AXI_ARREADY,
      s_axi_arvalid => xbar_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => xbar_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => xbar_M01_AXI_AWREADY,
      s_axi_awvalid => xbar_M01_AXI_AWVALID,
      s_axi_bready => xbar_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => xbar_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => xbar_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => xbar_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => xbar_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => xbar_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => xbar_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => xbar_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => xbar_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => xbar_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => xbar_M01_AXI_WVALID,
      scl_i => iic_IIC_SCL_I,
      scl_o => iic_IIC_SCL_O,
      scl_t => iic_IIC_SCL_T,
      sda_i => iic_IIC_SDA_I,
      sda_o => iic_IIC_SDA_O,
      sda_t => iic_IIC_SDA_T
    );
notof_0: component bd_6311_notof_0_0
     port map (
      Op1(0) => m_aud_axis_aresetn_1,
      Res(0) => notof_0_Res(0)
    );
vb1: component bd_6311_vb1_0
     port map (
      bpc(2 downto 0) => dp_rx_bpc(2 downto 0),
      color_format(2 downto 0) => dp_rx_cformat(2 downto 0),
      debug_port(4 downto 0) => NLW_vb1_debug_port_UNCONNECTED(4 downto 0),
      dp_hres(15 downto 0) => dp_rx_vid_msa_hres(15 downto 0),
      hres_cntr_out(15 downto 0) => NLW_vb1_hres_cntr_out_UNCONNECTED(15 downto 0),
      m_axis_aclk => m_axis_aclk_stream1_1,
      m_axis_video_tdata(119 downto 0) => vb1_m_axis_video_TDATA(119 downto 0),
      m_axis_video_tlast => vb1_m_axis_video_TLAST,
      m_axis_video_tready => vb1_m_axis_video_TREADY,
      m_axis_video_tuser(0) => vb1_m_axis_video_TUSER(0),
      m_axis_video_tvalid => vb1_m_axis_video_TVALID,
      pixel_mode(2 downto 0) => dp_rx_vid_pixel_mode(2 downto 0),
      rd_error => NLW_vb1_rd_error_UNCONNECTED,
      vid_active_video => dp_dp_rx_vid_intf_str0_TX_VID_ENABLE,
      vid_hsync => dp_dp_rx_vid_intf_str0_TX_VID_HSYNC,
      vid_pixel0(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL0(47 downto 0),
      vid_pixel1(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL1(47 downto 0),
      vid_pixel2(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL2(47 downto 0),
      vid_pixel3(47 downto 0) => dp_dp_rx_vid_intf_str0_TX_VID_PIXEL3(47 downto 0),
      vid_pixel_clk => rx_vid_clk_1,
      vid_reset => rx_vid_rst_1,
      vid_vsync => dp_dp_rx_vid_intf_str0_TX_VID_VSYNC,
      vres_cntr_out(15 downto 0) => NLW_vb1_vres_cntr_out_UNCONNECTED(15 downto 0),
      wr_error => NLW_vb1_wr_error_UNCONNECTED
    );
xbar: component bd_6311_xbar_0
     port map (
      M00_AXI_araddr(31 downto 0) => xbar_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => xbar_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => xbar_M00_AXI_ARREADY,
      M00_AXI_arvalid => xbar_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => xbar_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => xbar_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => xbar_M00_AXI_AWREADY,
      M00_AXI_awvalid => xbar_M00_AXI_AWVALID,
      M00_AXI_bready => xbar_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => xbar_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => xbar_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => xbar_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => xbar_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => xbar_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => xbar_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => xbar_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => xbar_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => xbar_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => xbar_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => xbar_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_xbar_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => xbar_M01_AXI_ARREADY,
      M01_AXI_arvalid => xbar_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => xbar_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_xbar_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => xbar_M01_AXI_AWREADY,
      M01_AXI_awvalid => xbar_M01_AXI_AWVALID,
      M01_AXI_bready => xbar_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => xbar_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => xbar_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => xbar_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => xbar_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => xbar_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => xbar_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => xbar_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => xbar_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => xbar_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => xbar_M01_AXI_WVALID,
      S00_AXI_araddr(12 downto 0) => s_axi_1_ARADDR(12 downto 0),
      S00_AXI_arprot(2 downto 0) => s_axi_1_ARPROT(2 downto 0),
      S00_AXI_arready => s_axi_1_ARREADY,
      S00_AXI_arvalid => s_axi_1_ARVALID(0),
      S00_AXI_awaddr(12 downto 0) => s_axi_1_AWADDR(12 downto 0),
      S00_AXI_awprot(2 downto 0) => s_axi_1_AWPROT(2 downto 0),
      S00_AXI_awready => s_axi_1_AWREADY,
      S00_AXI_awvalid => s_axi_1_AWVALID(0),
      S00_AXI_bready => s_axi_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      S00_AXI_bvalid => s_axi_1_BVALID,
      S00_AXI_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      S00_AXI_rready => s_axi_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      S00_AXI_rvalid => s_axi_1_RVALID,
      S00_AXI_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      S00_AXI_wready => s_axi_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => s_axi_1_WVALID(0),
      aclk => s_axi_aclk_1,
      aresetn => s_axi_aresetn_1
    );
xlconstant_0: component bd_6311_xlconstant_0_0
     port map (
      dout(0) => NLW_xlconstant_0_dout_UNCONNECTED(0)
    );
end STRUCTURE;
