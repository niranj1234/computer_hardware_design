----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2022 12:06:22 PM
-- Design Name: 
-- Module Name: digiuarttop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity digikeyuartTop is
    Port ( mclk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (3 downto 0);
           jc1 : out STD_LOGIC;
           btn : in STD_LOGIC_vector(1 downto 0));
end digikeyuartTop;

architecture Behavioral of digikeyuartTop is

    component uart is
  GENERIC(
        clk_freq  :  INTEGER    := 12_500_00;  --frequency of system clock in Hertz
        baud_rate :  INTEGER    := 9_600;      --data link baud rate in bits/second
        os_rate   :  INTEGER    := 16;          --oversampling rate to find center of receive bits (in samples per baud period)
        d_width   :  INTEGER    := 8;           --data bus width
        parity    :  INTEGER    := 1;           --0 for no parity, 1 for parity
        parity_eo :  STD_LOGIC  := '0');        --'0' for even, '1' for odd parity
      PORT(
        clk      :  IN   STD_LOGIC;                             --system clock
        reset_n  :  IN   STD_LOGIC;                             --ascynchronous reset
        tx_ena   :  IN   STD_LOGIC;                             --initiate transmission
        tx_data  :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
        tx_busy  :  OUT  STD_LOGIC;                             --transmission in progress
        tx       :  OUT  STD_LOGIC);                            --transmit pin
END component;

    component feedMux is
        Port ( fsel : in STD_LOGIC_VECTOR (2 downto 0);
               q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
signal muxout : std_logic_vector(7 downto 0) := X"00";
signal ready, tdre : std_logic := '0';
    begin
    
    uesp : uart port map(mclk, btn(0), sw(0), muxout, tdre, jc1);
    mux : feedmux port map(sw(3 downto 1), muxout); 
end Behavioral;
