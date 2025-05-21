----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2022 05:07:14 PM
-- Design Name: 
-- Module Name: feedMux - Behavioral
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

entity feedMux is
    Port ( fsel : in STD_LOGIC_VECTOR (2 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end feedMux;

architecture Behavioral of feedMux is
signal output : std_logic_vector(7 downto 0);
signal close : std_logic_vector(7 downto 0) := X"41"; -- 63 A
signal near : std_logic_vector(7 downto 0) := X"42"; -- 64 B
signal far : std_logic_vector(7 downto 0) := X"43"; -- 65 C
signal none : std_logic_vector(7 downto 0) := X"44"; -- 66 D (off)

begin

p1 : process(fsel)
begin
    if fsel(0) = '1' then
        output <= close;
    elsif fsel(1) = '1' then
        output <= near;
    elsif fsel(2) = '1' then
        output <= far;
    else
        output <= none;
    end if;
end process;

q <= output;

end Behavioral;
