----------------------------------------------------------------------------------------------------
-- Copyright (c) 2025 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Mercury_ZX1_PE3 is
  
  port (
    
    -- PS MIO Pins
    FIXED_IO_mio                   : inout   std_logic_vector(53 downto 0);
    FIXED_IO_ddr_vrn               : inout   std_logic;
    FIXED_IO_ddr_vrp               : inout   std_logic;
    FIXED_IO_ps_srstb              : inout   std_logic;
    FIXED_IO_ps_clk                : inout   std_logic;
    FIXED_IO_ps_porb               : inout   std_logic;
    DDR_cas_n                      : inout   std_logic;
    DDR_cke                        : inout   std_logic;
    DDR_ck_n                       : inout   std_logic;
    DDR_ck_p                       : inout   std_logic;
    DDR_cs_n                       : inout   std_logic;
    DDR_reset_n                    : inout   std_logic;
    DDR_odt                        : inout   std_logic;
    DDR_ras_n                      : inout   std_logic;
    DDR_we_n                       : inout   std_logic;
    DDR_ba                         : inout   std_logic_vector(2 downto 0);
    DDR_addr                       : inout   std_logic_vector(14 downto 0);
    DDR_dm                         : inout   std_logic_vector(3 downto 0);
    DDR_dq                         : inout   std_logic_vector(31 downto 0);
    DDR_dqs_n                      : inout   std_logic_vector(3 downto 0);
    DDR_dqs_p                      : inout   std_logic_vector(3 downto 0);
    
    -- Anios IO
    IO_D0_P                        : inout   std_logic;
    IO_D1_N                        : inout   std_logic;
    IO_D2_P                        : inout   std_logic;
    IO_D3_N                        : inout   std_logic;
    IO_D4_P                        : inout   std_logic;
    IO_D5_N                        : inout   std_logic;
    IO_D6_P                        : inout   std_logic;
    IO_D7_N                        : inout   std_logic;
    IO_D8_P                        : inout   std_logic;
    IO_D9_N                        : inout   std_logic;
    IO_CLK0_N                      : inout   std_logic;
    IO_CLK0_P                      : inout   std_logic;
    IO_D10_P                       : inout   std_logic;
    IO_D11_N                       : inout   std_logic;
    IO_D12_P                       : inout   std_logic;
    IO_D13_N                       : inout   std_logic;
    IO_D14_P                       : inout   std_logic;
    IO_D15_N                       : inout   std_logic;
    IO_D16_P                       : inout   std_logic;
    IO_D17_N                       : inout   std_logic;
    IO_D18_P                       : inout   std_logic;
    IO_D19_N                       : inout   std_logic;
    IO_D20_P                       : inout   std_logic;
    IO_D21_N                       : inout   std_logic;
    IO_D22_P                       : inout   std_logic;
    IO_D23_N                       : inout   std_logic;
    
    -- Clock Generator
    OSC_N                          : in      std_logic;
    OSC_P                          : in      std_logic;
    
    -- Display Port
    DP_HPD                         : in      std_logic;
    DP_AUX_IN                      : in      std_logic;
    DP_AUX_OE                      : out     std_logic;
    DP_AUX_OUT                     : out     std_logic;
    
    -- FMC HPC Connector
    FMC_LA02_N                     : inout   std_logic;
    FMC_LA02_P                     : inout   std_logic;
    FMC_LA03_N                     : inout   std_logic;
    FMC_LA03_P                     : inout   std_logic;
    FMC_LA04_N                     : inout   std_logic;
    FMC_LA04_P                     : inout   std_logic;
    FMC_LA05_N                     : inout   std_logic;
    FMC_LA05_P                     : inout   std_logic;
    FMC_LA06_N                     : inout   std_logic;
    FMC_LA06_P                     : inout   std_logic;
    FMC_LA07_N                     : inout   std_logic;
    FMC_LA07_P                     : inout   std_logic;
    FMC_LA08_N                     : inout   std_logic;
    FMC_LA08_P                     : inout   std_logic;
    FMC_LA09_N                     : inout   std_logic;
    FMC_LA09_P                     : inout   std_logic;
    FMC_LA10_N                     : inout   std_logic;
    FMC_LA10_P                     : inout   std_logic;
    FMC_LA11_N                     : inout   std_logic;
    FMC_LA11_P                     : inout   std_logic;
    FMC_LA12_N                     : inout   std_logic;
    FMC_LA12_P                     : inout   std_logic;
    FMC_LA13_N                     : inout   std_logic;
    FMC_LA13_P                     : inout   std_logic;
    FMC_LA14_N                     : inout   std_logic;
    FMC_LA14_P                     : inout   std_logic;
    FMC_LA15_N                     : inout   std_logic;
    FMC_LA15_P                     : inout   std_logic;
    FMC_LA16_N                     : inout   std_logic;
    FMC_LA16_P                     : inout   std_logic;
    FMC_LA19_N                     : inout   std_logic;
    FMC_LA19_P                     : inout   std_logic;
    FMC_LA20_N                     : inout   std_logic;
    FMC_LA20_P                     : inout   std_logic;
    FMC_LA21_N                     : inout   std_logic;
    FMC_LA21_P                     : inout   std_logic;
    FMC_LA22_N                     : inout   std_logic;
    FMC_LA22_P                     : inout   std_logic;
    FMC_LA23_N                     : inout   std_logic;
    FMC_LA23_P                     : inout   std_logic;
    FMC_LA24_N                     : inout   std_logic;
    FMC_LA24_P                     : inout   std_logic;
    FMC_LA25_N                     : inout   std_logic;
    FMC_LA25_P                     : inout   std_logic;
    FMC_LA26_N                     : inout   std_logic;
    FMC_LA26_P                     : inout   std_logic;
    FMC_LA27_N                     : inout   std_logic;
    FMC_LA27_P                     : inout   std_logic;
    FMC_LA28_N                     : inout   std_logic;
    FMC_LA28_P                     : inout   std_logic;
    FMC_LA29_N                     : inout   std_logic;
    FMC_LA29_P                     : inout   std_logic;
    FMC_LA30_N                     : inout   std_logic;
    FMC_LA30_P                     : inout   std_logic;
    FMC_LA31_N                     : inout   std_logic;
    FMC_LA31_P                     : inout   std_logic;
    FMC_LA32_N                     : inout   std_logic;
    FMC_LA32_P                     : inout   std_logic;
    FMC_LA33_N                     : inout   std_logic;
    FMC_LA33_P                     : inout   std_logic;
    FMC_LA00_CC_N                  : inout   std_logic;
    FMC_LA00_CC_P                  : inout   std_logic;
    FMC_LA01_CC_N                  : inout   std_logic;
    FMC_LA01_CC_P                  : inout   std_logic;
    FMC_LA17_CC_N                  : inout   std_logic;
    FMC_LA17_CC_P                  : inout   std_logic;
    FMC_LA18_CC_N                  : inout   std_logic;
    FMC_LA18_CC_P                  : inout   std_logic;
    FMC_CLK0_M2C_N                 : inout   std_logic;
    FMC_CLK0_M2C_P                 : inout   std_logic;
    FMC_CLK1_M2C_N                 : inout   std_logic;
    FMC_CLK1_M2C_P                 : inout   std_logic;
    
    -- Firefly
    FF_DIO0_P                      : inout   std_logic;
    FF_DIO0_N                      : inout   std_logic;
    FF_DIO1_P                      : inout   std_logic;
    FF_DIO1_N                      : inout   std_logic;
    FF_DIO2_P                      : inout   std_logic;
    FF_DIO2_N                      : inout   std_logic;
    FF_DIO3_P                      : inout   std_logic;
    FF_DIO3_N                      : inout   std_logic;
    
    -- HDMI
    HDMI_CEC                       : inout   std_logic;
    HDMI_HPD                       : in      std_logic;
    
    -- I2C MGMT
    I2C_MGMT_INT_N                 : in      std_logic;
    I2C_MGMT_SCL                   : inout   std_logic;
    I2C_MGMT_SDA                   : inout   std_logic;
    
    -- I2C User
    I2C_USER_INT_N                 : in      std_logic;
    I2C_USER_SCL                   : inout   std_logic;
    I2C_USER_SDA                   : inout   std_logic;
    
    -- LED
    FPGA_LED0_N                    : out     std_logic;
    FPGA_LED1_N                    : out     std_logic;
    FPGA_LED2_N                    : out     std_logic;
    
    -- MGT Group 1
    MGT_TX4_P                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX4_N                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX5_P                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX5_N                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX6_P                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX6_N                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX7_P                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_TX7_N                      : inout   std_logic; -- Available on B111, No_MGT_routing modules
    MGT_RX4_P                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX4_N                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX5_P                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX5_N                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX6_P                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX6_N                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX7_P                      : inout   std_logic; -- Only available on B111 modules
    MGT_RX7_N                      : inout   std_logic; -- Only available on B111 modules
    
    -- Clock Generator MGT RefClk1
    MGT_REFCLK1_N                  : in      std_logic; -- Available on B111, No_MGT_routing modules
    MGT_REFCLK1_P                  : in      std_logic; -- Available on B111, No_MGT_routing modules
    
    -- Clock Generator MGT RefClk2
    MGT_REFCLK2_N                  : in      std_logic; -- Available on B111, No_MGT_routing modules
    MGT_REFCLK2_P                  : in      std_logic; -- Available on B111, No_MGT_routing modules
    
    -- Oscillator 100 MHz
    CALIB_CLK                      : in      std_logic;
    
    -- PE3 LED
    PE3_LED0_N                     : out     std_logic;
    PE3_LED1_N                     : out     std_logic;
    DII_LED_N                      : out     std_logic;
    DIO_LED_N                      : out     std_logic;
    
    -- PL 200 MHz Oscillator
    CLK200_N                       : in      std_logic;
    CLK200_P                       : in      std_logic;
    
    -- SDRAM
    DDR3_VSEL                      : inout   std_logic;
    DDR3PL_WE_N                    : out     std_logic;
    DDR3PL_CAS_N                   : out     std_logic;
    DDR3PL_RAS_N                   : out     std_logic;
    DDR3PL_RST_N                   : out     std_logic;
    DDR3PL_BA                      : out     std_logic_vector(2 downto 0);
    DDR3PL_DQ                      : inout   std_logic_vector(15 downto 0);
    DDR3PL_A                       : out     std_logic_vector(13 downto 0);
    DDR3PL_CKE                     : out     std_logic_vector(0 downto 0);
    DDR3PL_CK_N                    : out     std_logic_vector(0 downto 0);
    DDR3PL_CK_P                    : out     std_logic_vector(0 downto 0);
    DDR3PL_ODT                     : out     std_logic_vector(0 downto 0);
    DDR3PL_DM                      : inout   std_logic_vector(1 downto 0);
    DDR3PL_DQS_N                   : inout   std_logic_vector(1 downto 0);
    DDR3PL_DQS_P                   : inout   std_logic_vector(1 downto 0);
    
    -- PL Fast Ethernet 1
    ETH1_CLK                       : out     std_logic;
    ETH1_MDC                       : out     std_logic;
    ETH1_MDIO                      : inout   std_logic;
    ETH1_RESET_N                   : out     std_logic;
    ETH1_INT_N_PWDN_N              : inout   std_logic;
    
    -- PL Fast Ethernet 1A
    ETH1A_COL_PL                   : in      std_logic;
    ETH1A_RXDV                     : in      std_logic;
    ETH1A_RXER                     : in      std_logic;
    ETH1A_TXEN                     : out     std_logic;
    ETH1A_RXCLK                    : in      std_logic;
    ETH1A_TXCLK                    : in      std_logic;
    ETH1A_CRS_PL                   : in      std_logic;
    ETH1A_LED_PL_N                 : in      std_logic;
    ETH1A_RXD                      : in      std_logic_vector(3 downto 0);
    ETH1A_TXD                      : out     std_logic_vector(3 downto 0);
    
    -- PL Fast Ethernet 1B
    ETH1B_COL_PL                   : in      std_logic;
    ETH1B_RXDV                     : in      std_logic;
    ETH1B_RXER                     : in      std_logic;
    ETH1B_TXEN                     : out     std_logic;
    ETH1B_RXCLK                    : in      std_logic;
    ETH1B_TXCLK                    : in      std_logic;
    ETH1B_CRS_PL                   : in      std_logic;
    ETH1B_LED_PL_N                 : in      std_logic;
    ETH1B_RXD                      : in      std_logic_vector(3 downto 0);
    ETH1B_TXD                      : out     std_logic_vector(3 downto 0);
    
    -- PL Gig Ethernet
    ETH0_INT_N_PL                  : in      std_logic;
    
    -- USER INPUT
    BTN_N                          : in      std_logic;
    DIP_N                          : in      std_logic
  );
end Mercury_ZX1_PE3;

architecture rtl of Mercury_ZX1_PE3 is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Mercury_ZX1 is
    port (
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Clk25               : out    std_logic;
      Rst_N               : out    std_logic;
      FIXED_IO_mio        : inout  std_logic_vector(53 downto 0);
      FIXED_IO_ddr_vrn    : inout  std_logic;
      FIXED_IO_ddr_vrp    : inout  std_logic;
      FIXED_IO_ps_srstb   : inout  std_logic;
      FIXED_IO_ps_clk     : inout  std_logic;
      FIXED_IO_ps_porb    : inout  std_logic;
      DDR_cas_n           : inout  std_logic;
      DDR_cke             : inout  std_logic;
      DDR_ck_n            : inout  std_logic;
      DDR_ck_p            : inout  std_logic;
      DDR_cs_n            : inout  std_logic;
      DDR_reset_n         : inout  std_logic;
      DDR_odt             : inout  std_logic;
      DDR_ras_n           : inout  std_logic;
      DDR_we_n            : inout  std_logic;
      DDR_ba              : inout  std_logic_vector(2 downto 0);
      DDR_addr            : inout  std_logic_vector(14 downto 0);
      DDR_dm              : inout  std_logic_vector(3 downto 0);
      DDR_dq              : inout  std_logic_vector(31 downto 0);
      DDR_dqs_n           : inout  std_logic_vector(3 downto 0);
      DDR_dqs_p           : inout  std_logic_vector(3 downto 0);
      IRQ_I2C_MGMT        : in     std_logic;
      IRQ_I2C_USER        : in     std_logic;
      IIC_MGMT_sda_i      : in     std_logic;
      IIC_MGMT_sda_o      : out    std_logic;
      IIC_MGMT_sda_t      : out    std_logic;
      IIC_MGMT_scl_i      : in     std_logic;
      IIC_MGMT_scl_o      : out    std_logic;
      IIC_MGMT_scl_t      : out    std_logic;
      IIC_USER_sda_i      : in     std_logic;
      IIC_USER_sda_o      : out    std_logic;
      IIC_USER_sda_t      : out    std_logic;
      IIC_USER_scl_i      : in     std_logic;
      IIC_USER_scl_o      : out    std_logic;
      IIC_USER_scl_t      : out    std_logic;
      LED_N               : out    std_logic_vector(1 downto 0);
      SYS_CLK_clk_p       : in     std_logic;
      SYS_CLK_clk_n       : in     std_logic;
      DDR3_dq             : inout  std_logic_vector(15 downto 0);
      DDR3_dqs_p          : inout  std_logic_vector(1 downto 0);
      DDR3_dqs_n          : inout  std_logic_vector(1 downto 0);
      DDR3_addr           : out    std_logic_vector(13 downto 0);
      DDR3_ba             : out    std_logic_vector(2 downto 0);
      DDR3_ras_n          : out    std_logic;
      DDR3_cas_n          : out    std_logic;
      DDR3_we_n           : out    std_logic;
      DDR3_reset_n        : out    std_logic;
      DDR3_ck_p           : out    std_logic_vector(0 downto 0);
      DDR3_ck_n           : out    std_logic_vector(0 downto 0);
      DDR3_cke            : out    std_logic_vector(0 downto 0);
      DDR3_dm             : out    std_logic_vector(1 downto 0);
      DDR3_odt            : out    std_logic_vector(0 downto 0);
      IRQ_ETH0            : in     std_logic
    );
  end component Mercury_ZX1;
  

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Clk25            : std_logic;
  signal Rst_N            : std_logic;
  signal IRQ_I2C_MGMT     : std_logic;
  signal IRQ_I2C_USER     : std_logic;
  signal IIC_MGMT_sda_i   : std_logic;
  signal IIC_MGMT_sda_o   : std_logic;
  signal IIC_MGMT_sda_t   : std_logic;
  signal IIC_MGMT_scl_i   : std_logic;
  signal IIC_MGMT_scl_o   : std_logic;
  signal IIC_MGMT_scl_t   : std_logic;
  signal IIC_USER_sda_i   : std_logic;
  signal IIC_USER_sda_o   : std_logic;
  signal IIC_USER_sda_t   : std_logic;
  signal IIC_USER_scl_i   : std_logic;
  signal IIC_USER_scl_o   : std_logic;
  signal IIC_USER_scl_t   : std_logic;
  signal LED_N            : std_logic_vector(1 downto 0);
  signal IRQ_ETH0         : std_logic;
  signal LedCount         : unsigned(23 downto 0);
  
  ----------------------------------------------------------------------------------------------------
  -- attribute declarations
  ----------------------------------------------------------------------------------------------------

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Mercury_ZX1_i: component Mercury_ZX1
    port map (
      Clk100               => Clk100,
      Clk50                => Clk50,
      Clk25                => Clk25,
      Rst_N                => Rst_N,
      FIXED_IO_mio         => FIXED_IO_mio,
      FIXED_IO_ddr_vrn     => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp     => FIXED_IO_ddr_vrp,
      FIXED_IO_ps_srstb    => FIXED_IO_ps_srstb,
      FIXED_IO_ps_clk      => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb     => FIXED_IO_ps_porb,
      DDR_cas_n            => DDR_cas_n,
      DDR_cke              => DDR_cke,
      DDR_ck_n             => DDR_ck_n,
      DDR_ck_p             => DDR_ck_p,
      DDR_cs_n             => DDR_cs_n,
      DDR_reset_n          => DDR_reset_n,
      DDR_odt              => DDR_odt,
      DDR_ras_n            => DDR_ras_n,
      DDR_we_n             => DDR_we_n,
      DDR_ba               => DDR_ba,
      DDR_addr             => DDR_addr,
      DDR_dm               => DDR_dm,
      DDR_dq               => DDR_dq,
      DDR_dqs_n            => DDR_dqs_n,
      DDR_dqs_p            => DDR_dqs_p,
      IRQ_I2C_MGMT         => IRQ_I2C_MGMT,
      IRQ_I2C_USER         => IRQ_I2C_USER,
      IIC_MGMT_sda_i       => IIC_MGMT_sda_i,
      IIC_MGMT_sda_o       => IIC_MGMT_sda_o,
      IIC_MGMT_sda_t       => IIC_MGMT_sda_t,
      IIC_MGMT_scl_i       => IIC_MGMT_scl_i,
      IIC_MGMT_scl_o       => IIC_MGMT_scl_o,
      IIC_MGMT_scl_t       => IIC_MGMT_scl_t,
      IIC_USER_sda_i       => IIC_USER_sda_i,
      IIC_USER_sda_o       => IIC_USER_sda_o,
      IIC_USER_sda_t       => IIC_USER_sda_t,
      IIC_USER_scl_i       => IIC_USER_scl_i,
      IIC_USER_scl_o       => IIC_USER_scl_o,
      IIC_USER_scl_t       => IIC_USER_scl_t,
      LED_N                => LED_N,
      SYS_CLK_clk_p        => CLK200_P,
      SYS_CLK_clk_n        => CLK200_N,
      DDR3_dq              => DDR3PL_DQ,
      DDR3_dqs_p           => DDR3PL_DQS_P,
      DDR3_dqs_n           => DDR3PL_DQS_N,
      DDR3_addr            => DDR3PL_A,
      DDR3_ba              => DDR3PL_BA,
      DDR3_ras_n           => DDR3PL_RAS_N,
      DDR3_cas_n           => DDR3PL_CAS_N,
      DDR3_we_n            => DDR3PL_WE_N,
      DDR3_reset_n         => DDR3PL_RST_N,
      DDR3_ck_p            => DDR3PL_CK_P,
      DDR3_ck_n            => DDR3PL_CK_N,
      DDR3_cke             => DDR3PL_CKE,
      DDR3_dm              => DDR3PL_DM,
      DDR3_odt             => DDR3PL_ODT,
      IRQ_ETH0             => IRQ_ETH0
    );
  
  IRQ_I2C_MGMT <= not I2C_MGMT_INT_N;
  I2C_MGMT_SDA <= IIC_MGMT_sda_o when IIC_MGMT_sda_t = '0' else 'Z';
  IIC_MGMT_sda_i <= I2C_MGMT_SDA;
  I2C_MGMT_SCL <= IIC_MGMT_scl_o when IIC_MGMT_scl_t = '0' else 'Z';
  IIC_MGMT_scl_i <= I2C_MGMT_SCL;
  
  IRQ_I2C_USER <= not I2C_USER_INT_N;
  I2C_USER_SDA <= IIC_USER_sda_o when IIC_USER_sda_t = '0' else 'Z';
  IIC_USER_sda_i <= I2C_USER_SDA;
  I2C_USER_SCL <= IIC_USER_scl_o when IIC_USER_scl_t = '0' else 'Z';
  IIC_USER_scl_i <= I2C_USER_SCL;
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  FPGA_LED0_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  FPGA_LED1_N <= '0' when LED_N(0) = '0' else 'Z';
  FPGA_LED2_N <= '0' when LED_N(1) = '0' else 'Z';
  
  DDR3_VSEL <= 'Z';
  
  ETH1_CLK <= Clk25;
  
  IRQ_ETH0 <= not ETH0_INT_N_PL;
  
end rtl;
