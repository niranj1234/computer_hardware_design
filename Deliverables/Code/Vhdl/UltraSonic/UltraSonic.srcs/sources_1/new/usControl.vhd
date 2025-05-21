----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2022 10:16:23 PM
-- Design Name: 
-- Module Name: usControl - Behavioral
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

entity projectTop is
    Port ( jb1 : out STD_LOGIC; -- output T (US sensor)
           jb2 : in std_logic;  -- input E (US sensor)
           jd3 : out std_logic; -- servo output
           jc1 : out std_logic; -- uart output
           mclk : in STD_LOGIC;
           btn : in STD_LOGIC_vector(3 downto 0);
           ld : out std_logic_vector(7 downto 0);
           a_to_g : out std_logic_vector(6 downto 0);
           an : out std_logic_vector(7 downto 0));
end projectTop;

architecture Behavioral of projectTop is

    component clkDiv is
    port ( mclk : in std_logic; -- 50 Mhz clock
           clr : in std_logic;
           clk125 : out std_logic;
           clk100 : out std_logic);
    end component;
    
    component subreg is -- inputs the 6th bit from rom8
        generic(N:integer := 16);
        Port ( load : in STD_LOGIC;
               clk : in STD_LOGIC;
               clr : in std_logic;
               d : in STD_LOGIC_VECTOR (N-1 downto 0);
               q : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
    
    component usTop is
        Port ( T : out std_logic;
               echo : in std_logic;
               clk125 : in std_logic;
               clr : in std_logic;
               dispcalc : out std_logic;
               servsel : out std_logic_vector(1 downto 0);
               servload : out std_logic;
               uartload : out std_logic;
               gouart : out std_logic;
               uartsel : out std_logic_vector(2 downto 0);
               distance : out std_logic_vector(15 downto 0);
               ld : out std_logic_vector(7 downto 0));
    end component;

    component displayTop is
    Port ( clkseg : in STD_LOGIC;
           clk125 : in std_logic;
           clr : in STD_LOGIC;
           start : in std_logic;
           dist : in STD_LOGIC_VECTOR (15 downto 0);
           a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component uartcntrl is
        Port ( clk : in STD_LOGIC;
               clr : in STD_LOGIC;
               go : in STD_LOGIC;
               tdre : in STD_LOGIC;
               ready : out STD_LOGIC);
    end component;
    
    component uartesp is
        Port ( clk : in STD_LOGIC;
               clr : in STD_LOGIC;
               data : in STD_LOGIC_VECTOR (8 downto 0);
               ready : in STD_LOGIC;
               tx : out STD_LOGIC;
               tdre : out STD_LOGIC);
    end component;
    
    component servotop is
        Port ( clk125 : in std_logic;
               clk100 : in std_logic;
               clr : in std_logic;
               ssel : in STD_LOGIC_vector(1 downto 0);
               servload : in std_logic;
               toggle : out std_logic);
    end component;
    
    component uartTop is
        Port ( clk : in STD_LOGIC;
               clr : std_logic;
               fsel : in std_logic_vector(2 downto 0);
               go : in std_logic;
               uartload : in std_logic;
               output : out STD_LOGIC);
    end component;

signal clk125, clk100, servload, dispcalc, goserv, gouart, uartload : std_logic;
signal dist : std_logic_vector(15 downto 0) := x"0000";
signal ldout, ldin, segout : std_logic_vector(15 downto 0) := X"0000";
signal seginput : std_logic_vector(31 downto 0);
signal servsel : std_logic_vector(1 downto 0) := "00";
signal uartsel : std_logic_vector(2 downto 0) := "000";


begin
    div : clkDiv port map(mclk, btn(1), clk125, clk100);
    
    -- Ultrasonic sensor top component
    ust : usTop port map(jb1, jb2, clk125, btn(1), dispcalc, servsel, servload, uartload, gouart, uartsel, dist, ld);
    
    -- Display top component
    disp : displayTop port map(mclk, clk125, btn(1), dispcalc, dist, a_to_g, an);
    
    -- servo top component
    servo : servotop port map(clk125, clk100, btn(1), servsel, servload, jd3);
    
    -- uart top component
    uart : uartTop port map(clk125, btn(1), uartsel, gouart, uartload, jc1);
    

end Behavioral;
