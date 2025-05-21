----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 12:24:55 PM
-- Design Name: 
-- Module Name: servoCount - Behavioral
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

entity servoCount is
    generic(N: integer := 16);
    Port ( dc : in STD_LOGIC_VECTOR (N-1 downto 0); -- max count
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           T : out std_logic;
           go : in STD_LOGIC);
end servoCount;

architecture Behavioral of servoCount is
signal count: std_logic_vector(N-1 downto 0) := (0 => '1', others => '0');
signal output : std_logic := '0';
signal maxCount : std_logic_vector(15 downto 0) := X"C350";
begin
    process(clk, clr)
    begin
        if clr = '1' then
            count <= (0 => '1', others => '0');
        elsif clk'event and clk = '1' then -- othwerise DO NOT increment, wait for clear (New input)
            if count <= dc then -- still triggering
                if go = '1' then
                    output <= '1';
                end if;
                count <= count + '1';
            elsif count >= maxCount then
                output <= '0';
                count <= X"0001";
            elsif count >= dc then
               output <= '0';
               count <= count + '1';
            end if;
        end if;
    end process;
    T <= output;
end Behavioral;
