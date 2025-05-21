----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 09:32:50 PM
-- Design Name: 
-- Module Name: uartesp - Behavioral
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

entity uartesp is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           data : in STD_LOGIC_VECTOR (8 downto 0);
           ready : in STD_LOGIC;
           tx : out STD_LOGIC;
           tdre : out STD_LOGIC);
end uartesp;

architecture Behavioral of uartesp is
type state_type is (mark, start, delay, shift, stop);
signal state: state_type;
signal txbuff: STD_LOGIC_VECTOR (7 downto 0);
signal baud_count: STD_LOGIC_VECTOR (16 downto 0);
signal bit_count: STD_LOGIC_VECTOR (3 downto 0);
constant bit_time: STD_LOGIC_VECTOR (16 downto 0) := X"1c200"; -- 15200 baud rate
begin

uart2 : process(clk, clr, ready)
begin
    if clr = '1' then
        state <= mark;
        txbuff <= X"00";
        baud_count <= X"000";
        bit_count <= X"0";
        tx <= '1';
    elsif (clk'event and clk = '1') then
        case state is
            when mark =>
                bit_count <= "0000";
                tdre <= '1';
                if ready = '0' then
                    state <= mark;
                    txbuff <= data;
                else
                    baud_count <= X"00000";
                    state <= start;
                end if;
            when start => -- output start bit
                baud_count <= X"00000";
                tx <= '0';
                tdre <= '0';
                state <= delay;
            when delay =>
                tdre <= '0';
                if baud_count >= bit_time then
                    baud_count <= X"00000";
                    if bit_count < 8 then -- if shifting isn't complete
                        state <= shift;
                    else
                        state <= stop; -- finished shifting
                    end if;
                else
                    baud_count <= baud_count + 1;
                    state <= delay;
                end if;
             when shift =>		-- get next bit
                tdre <= '0';
                tx <= txbuff(0);
                txbuff(6 downto 0) <= txbuff(7 downto 1);
                bit_count <= bit_count + 1;
                state <= delay;
             when stop =>        -- stop bit
                tdre <='0';
                tx <= '1';
                if baud_count >= bit_time then      
                    baud_count <= X"000";
                    state <= mark;    
                else 
                    baud_count <= baud_count + 1;
                    state <= stop;         
                end if;              
              end case;               
    end if;
end process uart2; 
end Behavioral;
