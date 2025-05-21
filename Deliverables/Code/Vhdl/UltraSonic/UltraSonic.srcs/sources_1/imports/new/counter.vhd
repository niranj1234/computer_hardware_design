----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2022 07:44:01 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    generic(N: integer := 32);
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (N-1 downto 0));
end counter;

architecture Behavioral of counter is
signal count: std_logic_vector(N-1 downto 0) := (0 => '1', others => '0');
begin
    process(clk, clr)
    begin
        if clr = '1' then
            count <= (0 => '1', others => '0');
        elsif clk'event and clk = '1' then -- othwerise DO NOT increment, wait for clear (New input)
            count <= count + 1;
        end if;
    end process;
    
    q <= count;
end Behavioral;
