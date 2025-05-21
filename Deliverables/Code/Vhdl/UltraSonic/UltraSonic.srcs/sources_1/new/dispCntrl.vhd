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


entity dispCntrl is
    Port ( clk : in std_logic;
           clr : in std_logic;
           startdisp : in std_logic;
           bcdload : out std_logic;
           gobcd : out std_logic;
           donebcd : in std_logic;
           segload : out std_logic);
end dispCntrl;

architecture Behavioral of dispCntrl is
type state_type is (displaying, bcd);
signal current_state, next_state: state_type;
signal st : std_logic_vector(15 downto 0);
begin

synch: process(clk, clr)
  begin    
    if clr = '1' then -- prevents hardware trigger stuck issue
      current_state <= displaying;
    elsif (clk'event and clk = '1') then
      current_state <= next_state;
    end if;
 end process synch;

C1: process(current_state, startdisp, donebcd)
 begin  
 case current_state is    
     when displaying =>  
       if startdisp = '1' then
         next_state <= bcd;
       else                    
         next_state <= displaying; -- wait for echo
       end if;      
     when bcd =>  
       if donebcd = '1' then          
          next_state <= displaying;
       else                    
          next_state <= bcd;        
       end if;
    when others =>
        next_state <= displaying;
   end case;
 end process C1;

fsmImpl: process(current_state, startdisp, donebcd)
    begin
    segload <= '0'; gobcd <= '0'; bcdload <= '0';
    case current_state is
        when displaying =>
            segload <= '1';
            --
        when bcd =>
            bcdload <= '1';
            gobcd <= '1';
        when others =>
        null;
    end case;
    end process;

end Behavioral;