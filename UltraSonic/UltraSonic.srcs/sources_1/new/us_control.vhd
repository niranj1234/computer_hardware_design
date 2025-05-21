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


entity us_control is
    Port ( clk : in std_logic;
           clr : in std_logic;
           T : in STD_LOGIC; -- trigger
           E : in std_logic; -- echo
           count : in std_logic_vector(19 downto 0);
           strtload : out std_logic; -- load Echo value start
           endload : out std_logic; -- load Echo value end
           gocalc : out std_logic;
           donecalc : in std_logic;
           gocomp : out std_logic;
           compload : out std_logic;
           donecomp : in std_logic;
           ldload : out std_logic;
           dispcalc : out std_logic;
           servload : out std_logic;
           uartload : out std_logic;
           gouart : out std_logic);
end us_control;

architecture Behavioral of us_control is
type state_type is (trigger, echo, calc, compare, waiting, done);
signal current_state, next_state: state_type;
constant pwmmaxreset : integer := 128; -- Used to prevent hardware race condition
begin

synch: process(clk, clr, count)
  begin    
    if clr = '1'  or (pwmmaxreset > count and T = '0') then -- if trigger pin isn't 1 and count is less than 128, reset
      current_state <= done;
    elsif (clk'event and clk = '1') then
      current_state <= next_state;
    end if;
 end process synch;

C1: process(current_state, E, T, donecalc, donecomp)
 begin  
 case current_state is    
     when trigger =>  
       if T = '1' then
         next_state <= trigger;
       else                    
         next_state <= waiting; -- wait for echo
       end if;      
     when echo =>  
       if E = '1' then          
          next_state <= echo;
       else                    
          next_state <= calc;        
       end if;
     when calc => 
        if donecalc = '1' then
            next_state <= compare;
        else
            next_state <= calc;
        end if;
    when compare => 
        if donecomp = '1'then
            next_state <= done;
        else
            next_state <= compare;
        end if;
    when waiting => -- waiting for echo
        if E = '1' then
            next_state <= echo;
        else
            next_state <= waiting;
        end if;
    when done =>
        if T = '1' then
            next_state <= trigger;
        else
            next_state <= done;
        end if;
    when others =>
        next_state <= waiting;
   end case;
 end process C1;

fsmImpl: process(current_state, T, E, donecomp, donecalc)
    begin
    strtload <= '0'; endload <= '0'; gocalc <= '0'; gocomp <= '0'; 
    ldload <= '0'; dispcalc <= '0'; servload <= '0'; compload <= '0';
    uartload <= '0'; gouart <= '0';
    case current_state is
        when trigger =>
            -- no op right now
        when echo =>
            -- no op right now
            endload <= '1';
        when calc => 
            gocalc <= '1'; -- start calculation
            compload <= '1'; -- loading comp with result
        when compare =>
            servload <= '1';
            dispcalc <= '1';
            gocomp <= '1';
            ldload <= '1';
            uartload <= '1';
        when waiting =>
            strtload <= '1';
        when done =>
            gouart <= '1';
            -- no op right now
        when others =>
        null;
    end case;
    end process;

end Behavioral;