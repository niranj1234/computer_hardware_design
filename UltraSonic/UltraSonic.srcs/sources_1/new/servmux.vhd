----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 04:37:21 PM
-- Design Name: 
-- Module Name: servmux - Behavioral
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

entity servmux is
    Port ( ssel : in STD_LOGIC_VECTOR (1 downto 0);
           dc : out STD_LOGIC_VECTOR (15 downto 0));
end servmux;

architecture Behavioral of servmux is
-- stores full duty cycle
-- Following intervals need to be shifted left 1 space to fit 17 bits
signal close : std_logic_vector(15 downto 0) := X"C350"; -- constant vibration 100% duty cycle
signal near : std_logic_vector(15 downto 0) := X"61A8"; -- 25000 cycles at .01 ms ea -> 256 ms -> 50% duty cycle
signal output : std_logic_vector(15 downto 0) := X"0000";
signal far : std_logic_vector(15 downto 0) := X"0000"; -- no vibration
signal const : std_logic;
begin

p1 : process(ssel)
begin
    if ssel(0) <= '1' then
        output <= close;
    elsif ssel(1) <= '1' then
        output <= near;
    else
        output <= far;
    end if;
end process;
dc <= output;

end Behavioral;
