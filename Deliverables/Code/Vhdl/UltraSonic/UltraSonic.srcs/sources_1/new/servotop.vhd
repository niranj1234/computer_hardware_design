----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2022 11:24:23 AM
-- Design Name: 
-- Module Name: servotop - Behavioral
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

entity servotop is
    Port ( clk125 : in std_logic;
           clk100 : in std_logic;
           clr : in std_logic;
           ssel : in STD_LOGIC_vector(1 downto 0); -- controls the servo motor interval selection (ltClose[2]:ltNear[1]:0)
           servload : in std_logic;
           toggle : out std_logic);
end servotop;

architecture Behavioral of servotop is
component servmux is
        Port ( ssel : in STD_LOGIC_VECTOR (1 downto 0);
               dc : out STD_LOGIC_VECTOR (15 downto 0));
    end component;
    
    component servoCount is
        generic(N: integer := 16);
        Port (     dc : in STD_LOGIC_VECTOR (N-1 downto 0); -- duty cycle
                   clk : in STD_LOGIC;
                   clr : in STD_LOGIC;
                   T : out std_logic;
                   go : in STD_LOGIC);
    end component;
    
    component subreg is -- inputs the 6th bit from rom8
            generic(N:integer := 2);
            Port ( load : in STD_LOGIC;
                   clk : in STD_LOGIC;
                   clr : in std_logic;
                   d : in STD_LOGIC_VECTOR (N-1 downto 0);
                   q : out STD_LOGIC_VECTOR (N-1 downto 0));
        end component;
        
        signal dc : std_logic_vector(15 downto 0);
        signal c, tog, servoOn : std_logic;
        signal regout : std_logic_vector(1 downto 0);
begin
    
    servor : subreg port map(servload, clk125, clr, ssel, regout);
    servom : servmux port map(regout, dc); -- determines which interval to select
    servoOn <= regout(1) xor regout(0); -- If 10 or 01 then on, otherwise off
    servocnt : servoCount port map(dc, clk100, clr, tog, servoOn);
    -- after each full 
    toggle <= tog;

end Behavioral;
