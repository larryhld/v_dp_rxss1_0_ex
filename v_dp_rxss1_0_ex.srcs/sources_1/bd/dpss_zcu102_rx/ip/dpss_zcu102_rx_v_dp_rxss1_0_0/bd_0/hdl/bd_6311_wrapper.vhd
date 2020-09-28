--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_6311_wrapper.bd
--Design : bd_6311_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_6311_wrapper is
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
    edid_iic_scl_io : inout STD_LOGIC;
    edid_iic_sda_io : inout STD_LOGIC;
    ext_iic_scl_io : inout STD_LOGIC;
    ext_iic_sda_io : inout STD_LOGIC;
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
end bd_6311_wrapper;

architecture STRUCTURE of bd_6311_wrapper is
  component bd_6311 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    rx_vid_clk : in STD_LOGIC;
    rx_vid_rst : in STD_LOGIC;
    m_axis_aclk_stream1 : in STD_LOGIC;
    aux_rx_data_in : in STD_LOGIC;
    aux_rx_data_out : out STD_LOGIC;
    aux_rx_data_en_out_n : out STD_LOGIC;
    rx_lnk_clk : in STD_LOGIC;
    rx_hpd : out STD_LOGIC;
    dprxss_dp_irq : out STD_LOGIC;
    m_aud_axis_aclk : in STD_LOGIC;
    m_aud_axis_aresetn : in STD_LOGIC;
    acr_m_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_n_aud : out STD_LOGIC_VECTOR ( 23 downto 0 );
    acr_valid : out STD_LOGIC;
    ext_rst : out STD_LOGIC_VECTOR ( 0 to 0 );
    dprxss_iic_irq : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_stream1_tdata : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axis_video_stream1_tlast : out STD_LOGIC;
    m_axis_video_stream1_tready : in STD_LOGIC;
    m_axis_video_stream1_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_stream1_tvalid : out STD_LOGIC;
    s_axis_lnk_rx_lane0_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane0_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane0_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane0_tvalid : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_phy_rx_sb_control_tready : in STD_LOGIC;
    m_axis_phy_rx_sb_control_tvalid : out STD_LOGIC;
    s_axis_phy_rx_sb_status_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_phy_rx_sb_status_tready : out STD_LOGIC;
    s_axis_phy_rx_sb_status_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane3_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane3_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane3_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane3_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane2_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane2_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane2_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane2_tvalid : in STD_LOGIC;
    s_axis_lnk_rx_lane1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_lnk_rx_lane1_tready : out STD_LOGIC;
    s_axis_lnk_rx_lane1_tuser : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_lnk_rx_lane1_tvalid : in STD_LOGIC;
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
    aud_axi_egress_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aud_axi_egress_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aud_axi_egress_tready : in STD_LOGIC;
    aud_axi_egress_tvalid : out STD_LOGIC
  );
  end component bd_6311;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal edid_iic_scl_i : STD_LOGIC;
  signal edid_iic_scl_o : STD_LOGIC;
  signal edid_iic_scl_t : STD_LOGIC;
  signal edid_iic_sda_i : STD_LOGIC;
  signal edid_iic_sda_o : STD_LOGIC;
  signal edid_iic_sda_t : STD_LOGIC;
  signal ext_iic_scl_i : STD_LOGIC;
  signal ext_iic_scl_o : STD_LOGIC;
  signal ext_iic_scl_t : STD_LOGIC;
  signal ext_iic_sda_i : STD_LOGIC;
  signal ext_iic_sda_o : STD_LOGIC;
  signal ext_iic_sda_t : STD_LOGIC;
begin
bd_6311_i: component bd_6311
     port map (
      acr_m_aud(23 downto 0) => acr_m_aud(23 downto 0),
      acr_n_aud(23 downto 0) => acr_n_aud(23 downto 0),
      acr_valid => acr_valid,
      aud_axi_egress_tdata(31 downto 0) => aud_axi_egress_tdata(31 downto 0),
      aud_axi_egress_tid(7 downto 0) => aud_axi_egress_tid(7 downto 0),
      aud_axi_egress_tready => aud_axi_egress_tready,
      aud_axi_egress_tvalid => aud_axi_egress_tvalid,
      aux_rx_data_en_out_n => aux_rx_data_en_out_n,
      aux_rx_data_in => aux_rx_data_in,
      aux_rx_data_out => aux_rx_data_out,
      dprxss_dp_irq => dprxss_dp_irq,
      dprxss_iic_irq => dprxss_iic_irq,
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
      ext_rst(0) => ext_rst(0),
      m_aud_axis_aclk => m_aud_axis_aclk,
      m_aud_axis_aresetn => m_aud_axis_aresetn,
      m_axis_aclk_stream1 => m_axis_aclk_stream1,
      m_axis_phy_rx_sb_control_tdata(7 downto 0) => m_axis_phy_rx_sb_control_tdata(7 downto 0),
      m_axis_phy_rx_sb_control_tready => m_axis_phy_rx_sb_control_tready,
      m_axis_phy_rx_sb_control_tvalid => m_axis_phy_rx_sb_control_tvalid,
      m_axis_video_stream1_tdata(119 downto 0) => m_axis_video_stream1_tdata(119 downto 0),
      m_axis_video_stream1_tlast => m_axis_video_stream1_tlast,
      m_axis_video_stream1_tready => m_axis_video_stream1_tready,
      m_axis_video_stream1_tuser(0) => m_axis_video_stream1_tuser(0),
      m_axis_video_stream1_tvalid => m_axis_video_stream1_tvalid,
      rx_hpd => rx_hpd,
      rx_lnk_clk => rx_lnk_clk,
      rx_vid_clk => rx_vid_clk,
      rx_vid_rst => rx_vid_rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready(0) => s_axi_arready(0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready(0) => s_axi_awready(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axis_lnk_rx_lane0_tdata(31 downto 0) => s_axis_lnk_rx_lane0_tdata(31 downto 0),
      s_axis_lnk_rx_lane0_tready => s_axis_lnk_rx_lane0_tready,
      s_axis_lnk_rx_lane0_tuser(11 downto 0) => s_axis_lnk_rx_lane0_tuser(11 downto 0),
      s_axis_lnk_rx_lane0_tvalid => s_axis_lnk_rx_lane0_tvalid,
      s_axis_lnk_rx_lane1_tdata(31 downto 0) => s_axis_lnk_rx_lane1_tdata(31 downto 0),
      s_axis_lnk_rx_lane1_tready => s_axis_lnk_rx_lane1_tready,
      s_axis_lnk_rx_lane1_tuser(11 downto 0) => s_axis_lnk_rx_lane1_tuser(11 downto 0),
      s_axis_lnk_rx_lane1_tvalid => s_axis_lnk_rx_lane1_tvalid,
      s_axis_lnk_rx_lane2_tdata(31 downto 0) => s_axis_lnk_rx_lane2_tdata(31 downto 0),
      s_axis_lnk_rx_lane2_tready => s_axis_lnk_rx_lane2_tready,
      s_axis_lnk_rx_lane2_tuser(11 downto 0) => s_axis_lnk_rx_lane2_tuser(11 downto 0),
      s_axis_lnk_rx_lane2_tvalid => s_axis_lnk_rx_lane2_tvalid,
      s_axis_lnk_rx_lane3_tdata(31 downto 0) => s_axis_lnk_rx_lane3_tdata(31 downto 0),
      s_axis_lnk_rx_lane3_tready => s_axis_lnk_rx_lane3_tready,
      s_axis_lnk_rx_lane3_tuser(11 downto 0) => s_axis_lnk_rx_lane3_tuser(11 downto 0),
      s_axis_lnk_rx_lane3_tvalid => s_axis_lnk_rx_lane3_tvalid,
      s_axis_phy_rx_sb_status_tdata(15 downto 0) => s_axis_phy_rx_sb_status_tdata(15 downto 0),
      s_axis_phy_rx_sb_status_tready => s_axis_phy_rx_sb_status_tready,
      s_axis_phy_rx_sb_status_tvalid => s_axis_phy_rx_sb_status_tvalid
    );
edid_iic_scl_iobuf: component IOBUF
     port map (
      I => edid_iic_scl_o,
      IO => edid_iic_scl_io,
      O => edid_iic_scl_i,
      T => edid_iic_scl_t
    );
edid_iic_sda_iobuf: component IOBUF
     port map (
      I => edid_iic_sda_o,
      IO => edid_iic_sda_io,
      O => edid_iic_sda_i,
      T => edid_iic_sda_t
    );
ext_iic_scl_iobuf: component IOBUF
     port map (
      I => ext_iic_scl_o,
      IO => ext_iic_scl_io,
      O => ext_iic_scl_i,
      T => ext_iic_scl_t
    );
ext_iic_sda_iobuf: component IOBUF
     port map (
      I => ext_iic_sda_o,
      IO => ext_iic_sda_io,
      O => ext_iic_sda_i,
      T => ext_iic_sda_t
    );
end STRUCTURE;
