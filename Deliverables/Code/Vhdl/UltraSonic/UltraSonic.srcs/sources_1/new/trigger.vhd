----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2022 10:50:59 PM
-- Design Name: 
-- Module Name: trigger - Behavioral
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

entity trigger is
    generic(N: integer := 20);
    Port ( clk : in STD_LOGIC; -- incoming 50mhz
           clr : in STD_LOGIC;
           T : out STD_LOGIC;
           q : out std_logic_vector(N-1 downto 0));
end trigger;

architecture Behavioral of trigger is
signal count: std_logic_vector(N-1 downto 0) := (0 => '1', others => '0');
signal output : std_logic := '0';
constant pwmmax : integer := 128;
constant msTime : integer := 750000; -- total counts at 12.5 mhz without losing precision
begin
    process(clk, clr)
    begin
        if clr = '1' then
            count <= (0 => '1', others => '0');
        elsif clk'event and clk = '1' then -- othwerise DO NOT increment, wait for clear (New input)
            if count <= pwmmax then -- still triggering
                output <= '1';
                count <= count + '1';
            elsif count >= msTime then
               count <= x"00000";
               output <= '0';
            else
                output <= '0';
                count <= count + '1';
            end if;
        end if;
    end process;
    q <= count;
    T <= output;
end Behavioral;