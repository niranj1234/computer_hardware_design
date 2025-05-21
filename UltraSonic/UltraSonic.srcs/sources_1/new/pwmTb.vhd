----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 10:15:50 AM
-- Design Name: 
-- Module Name: pwmTb - Behavioral
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

entity pwmTb is
--  Port ( );
end pwmTb;

architecture Behavioral of pwmTb is
    component trigger is
        generic(N: integer := 20);
        Port ( clk : in STD_LOGIC; -- incoming 50mhz
               clr : in STD_LOGIC;
               T : out STD_LOGIC;
               q : out std_logic_vector(N-1 downto 0));
    end component;
    
    signal clk, clr : std_logic := '0';
    signal T : std_logic := '0';
    signal q : std_logic_vector(19 downto 0) := X"00000";
begin

    t1 : trigger port map(clk, clr, T, q);
    c1 : process
    begin
        clk <= '0';
        wait for 40 ns;
        clk <= '1';
        wait for 40 ns;
    end process;
    


end Behavioral;
