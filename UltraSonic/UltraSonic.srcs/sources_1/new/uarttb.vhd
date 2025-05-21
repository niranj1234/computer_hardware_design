----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2022 05:44:57 PM
-- Design Name: 
-- Module Name: uarttb - Behavioral
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

entity uarttb is
--  Port ( );
end uarttb;

architecture Behavioral of uarttb is
    component uartTop is
        Port ( mclk : in STD_LOGIC;
               sw : in STD_LOGIC_VECTOR (3 downto 0);
               jc1 : out STD_LOGIC;
               btn : in STD_LOGIC_vector(1 downto 0));
    end component;
    
    signal mclk, jc1 : std_logic;
    signal sw : std_logic_vector(3 downto 0);
    signal btn : std_logic_vector(1 downto 0);
begin

pm : uartTop port map (mclk, sw, jc1, btn);

cl : process 
begin
    mclk <= '1'; 
    wait for 40 ns;
    mclk <= '0';
    wait for 40 ns;
end process;


p1 : process
begin

    btn <= "01";
    
    wait for 40 ns;
    
    btn <= "00";
    sw <= "0100";
    
    wait for 40 ns;
    
    sw <= "0101";
    
    wait for 50 ms;


end process;

end Behavioral;
