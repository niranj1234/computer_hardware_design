----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2022 08:16:28 AM
-- Design Name: 
-- Module Name: clkDiv - Behavioral
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

entity clkDiv is
    port ( mclk : in std_logic; -- 50 Mhz clock
           clr : in std_logic;
           clk125 : out std_logic;
           clk100 : out std_logic);
end clkDiv;

architecture Behavioral of clkDiv is
signal q : std_logic_vector (23 downto 0) := X"000000";
begin

    process(mclk, clr)
    begin
        if clr = '1' then
            q <= X"000000";
        elsif mclk'event and mclk = '1' then
            q <= q + 1;
        end if;
    end process;

    clk125 <= q(2); -- 12.5 Mhz clock (10 ms trigger required)
    clk100 <= q(9); -- 100k hz drives servo timer
end Behavioral;
