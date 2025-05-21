----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2022 03:39:41 PM
-- Design Name: 
-- Module Name: dableTB - Behavioral
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

entity dableTB is
--  Port ( );
end dableTB;

architecture Behavioral of dableTB is
  component BCDConvert is
    port ( clk : in std_logic;
           en : in std_logic;
           bin_d_in : in std_logic_vector(15 downto 0);
           bcd_d_out : out std_logic_vector(19 downto 0);
           rdy : out std_logic
           );
   end component;
   signal clk, en, rdy : std_logic;
   signal bin : std_logic_vector(15 downto 0) := X"02fe";
   
   signal bcd : std_logic_vector(19 downto 0);
begin

bc : BCDConvert port map (clk, en, bin, bcd, rdy); 

c1 : process
begin
    clk <= '0';
    wait for 40 ns;
    clk <= '1';
    wait for 40 ns;
end process;


p1 : process
begin
    en <= '1';
    wait for 80 ns;
    en <= '0';
    wait;


end process;

end Behavioral;
