----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 10:50:21 AM
-- Design Name: 
-- Module Name: uartcntrl - Behavioral
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

entity uartcntrl is
    Port ( clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           go : in STD_LOGIC;
           tdre : in STD_LOGIC;
           ready : out STD_LOGIC);
end uartcntrl;

architecture Behavioral of uartcntrl is
type state_type is (wtgo, wttdre, load, wtngo);
signal state: state_type;
begin 
ctrl: process(clk, clr)		
  begin
    if clr = '1' then
	state <= wtgo;
	ready <= '0';
    elsif (clk'event and clk = '1') then
      case state is		  
      	 when wtgo =>		-- wait for btn
          	if go = '0' then  	-- if bnt up
                state <= wtgo;	--   stay in wtgo
                ready <= '0';
          	else
			    ready <= '0';
                state <= wttdre;	-- else go to wttdre
         	end if;      
          when wttdre =>		-- wait for tdre = 1
            if tdre = '0' then      -- if tdre = 0
                state <= wttdre;    --    stay in wtdone
                ready <= '0';
             else 
                state <= load;    -- else go to load
                ready <= '0';
             end if;
          when load =>            -- output ready      
             ready <= '1';
             state <= wtngo;    -- go to wtngo
          when wtngo =>		-- wait for btn up
             if go = '1' then      -- if btn down
                state <= wtngo;    --   stay in wtngo
                ready <= '0';
             else
                ready <= '0';
                state <= wtgo;    --  else go to wtgo
              end if;      
          end case;               
    end if;
end process ctrl;
end Behavioral;
