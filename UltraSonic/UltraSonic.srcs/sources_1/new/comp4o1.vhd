----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 12:39:00 AM
-- Design Name: 
-- Module Name: comp4to1 - Behavioral
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

entity comp4to1 is
    Port ( T : in STD_LOGIC_VECTOR (15 downto 0);
           go : in std_logic;
           ltClose : out STD_LOGIC;
           ltNear : out STD_LOGIC;
           ltFar : out STD_LOGIC;
           ltNone : out std_logic;
           done : out std_logic);
end comp4to1;

architecture Behavioral of comp4to1 is
-- reduce threshold for beep to account for lossy precision
constant closeRng : integer := 3900;
constant nearRng : integer := 5900;
constant farRng : integer := 7900;
signal close, near, far, none, doneout : std_logic := '0';
begin

    p1 : process(T, go)
    begin
        close <= '0';
        near <= '0';
        far <= '0';
        none <= '0';
        doneout <= '0';
        if go = '1' then
            if T < closeRng then
                close <= '1';
            elsif T < nearRng then
                near <= '1';
            elsif T < farRng then
                far <= '1';
            else
                none <= '1';
            end if;
            doneout <= '1';
        else
            doneout <= '0';
        end if;
    end process;

ltClose <= close;
ltNear <= near;
ltFar <= far;
ltNone <= none;
done <= doneout;
end Behavioral;
