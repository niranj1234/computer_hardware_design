----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 01:23:44 AM
-- Design Name: 
-- Module Name: sub - Behavioral
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

entity sub is
    Port ( go : in std_logic; -- tells us to start calc
           ts : in std_logic_vector(15 downto 0);
           te : in STD_LOGIC_VECTOR (15 downto 0);
           dist : out STD_LOGIC_VECTOR (15 downto 0);
           done : out std_logic);
end sub;

architecture Behavioral of sub is
signal mult : std_logic_vector(31 downto 0) := X"00000000";
signal doneout : std_logic;
signal SOUND : std_logic_vector(15 downto 0) := x"0011"; -- half distance time 17
signal SCALE : std_logic_vector(3 downto 0) := "0000"; -- convert to cm
constant ovf : integer := 3600; -- no object
begin

    p1 : process(go)
    begin
        if go = '1' then
            if te < ovf then
                mult <= ((te - ts) * SOUND);
            else
                mult <= X"0000FFFF";
            end if;
            doneout <= '1';
        else
            -- no op
            doneout <= '0';
        end if;
    end process;
    done <= doneout; -- did we finish
    dist <= mult(15 downto 0); -- take lowest 16 bits

end Behavioral;
