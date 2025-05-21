----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2022 08:16:28 AM
-- Design Name: 
-- Module Name: NRegister - Behavioral
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

entity subreg is -- inputs the 6th bit from rom8
    generic(N:integer := 2);
    Port ( load : in STD_LOGIC;
           clk : in STD_LOGIC;
           clr : in std_logic;
           d : in STD_LOGIC_VECTOR (N-1 downto 0);
           q : out STD_LOGIC_VECTOR (N-1 downto 0));
end subreg;

architecture Behavioral of subreg is
begin
    process(clk, clr)
    begin
        if clr = '1'  then
            q <= (others => '0');
        elsif clk'event and clk = '1' then
            if load = '1' then
                q <= d;
            end if;
        end if;
    end process;
end Behavioral;
