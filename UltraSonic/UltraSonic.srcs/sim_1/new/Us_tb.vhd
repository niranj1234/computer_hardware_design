----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2022 10:15:50 AM
-- Design Name: 
-- Module Name: pwmTb - Behavioral
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

entity us_tb is
--  Port ( );
end us_tb;

architecture Behavioral of us_tb is
    component projectTop is
    Port ( jb1 : out STD_LOGIC; -- output T
           jb2 : in std_logic;  -- input E
           jd3 : out std_logic;
           mclk : in STD_LOGIC;
           btn : in STD_LOGIC_vector(3 downto 0);
           ld : out std_logic_vector(7 downto 0);
           a_to_g : out std_logic_vector(6 downto 0);
           an : out std_logic_vector(7 downto 0));
    end component;
    
    signal clk : std_logic := '0';
    signal btn : std_logic_vector(3 downto 0);
    signal jb1 : std_logic := '0'; -- default trigger to 0
    signal jb2 : std_logic := '0'; -- default echo to 0
    signal jd1 : std_logic := '0'; -- default servooutput is 0
    signal sw : std_logic_vector(1 downto 0);
    signal ld : std_logic_vector(7 downto 0);
    signal atog : std_logic_vector(6 downto 0);
    signal an : std_logic_vector(7 downto 0);
begin
    
    us : projectTop port map(jb1, jb2, jd1, clk, btn, ld, atog, an);
    c1 : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    p1 : process
    begin
        
    btn <= "0001";
    wait for 5 ns;
    
    btn <= "0000";
    -- trigger is sending
    
    wait for 11000 ns; -- wait for trigger to send after 10 us
    jb2 <= '1';
    -- echo is 0, wait for 100 cm object trigger to return
    wait for 1750000 ns;
    jb2 <= '0';
    -- echo is beign returned
    
    wait for 3000 ms;
    
    --wait for 11000 ns; -- wait for trigger to send after 10 us
    --jb2 <= '1';
    -- echo is 0, wait for 100 cm object trigger to return
    --wait for 3000000 ns;
    --jb2 <= '0';
    -- echo is beign returned
    
    --wait for 60 ms;
    
    --wait for 11000 ns; -- wait for trigger to send after 10 us
    --jb2 <= '1';
    -- echo is 0, wait for 100 cm object trigger to return
    --wait for 5300000 ns;
    --jb2 <= '0';
    -- echo is beign returned
    
    --wait for 60 ms;
    
    
    
    end process;
    


end Behavioral;
