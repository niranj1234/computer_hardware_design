----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2022 04:15:17 PM
-- Design Name: 
-- Module Name: displayTop - Behavioral
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

entity displayTop is
    Port ( clkseg : in STD_LOGIC;
           clk125 : in std_logic;
           clr : in STD_LOGIC;
           start : in std_logic;
           dist : in STD_LOGIC_VECTOR (15 downto 0);
           a_to_g : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
end displayTop;

architecture Behavioral of displayTop is

    component dispCntrl is
    Port ( clk : in std_logic;
           clr : in std_logic;
           startdisp : in std_logic;
           bcdload : out std_logic;
           gobcd : out std_logic;
           donebcd : in std_logic;
           segload : out std_logic);
    end component;  
    
    component x7segb8 is
	 port(
		 x : in STD_LOGIC_VECTOR(31 downto 0);
		 clk : in STD_LOGIC;
		 clr : in STD_LOGIC;
		 a_to_g : out STD_LOGIC_VECTOR(6 downto 0);
		 an : out STD_LOGIC_VECTOR(7 downto 0);
		 dp : out STD_LOGIC
	     );
    end component;
    
    component BCDConvert is
        port ( clk : in std_logic;
           en : in std_logic;
           bin_d_in : in std_logic_vector(15 downto 0);
           bcd_d_out : out std_logic_vector(19 downto 0);
           rdy : out std_logic
           );
    end component;
    
    component subreg is -- inputs the 6th bit from rom8
        generic(N:integer := 16);
        Port ( load : in STD_LOGIC;
               clk : in STD_LOGIC;
               clr : in std_logic;
               d : in STD_LOGIC_VECTOR (N-1 downto 0);
               q : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;

signal seginput : std_logic_vector(31 downto 0);
signal bin_d_in : std_logic_vector(15 downto 0);
signal bcd_d_out : std_logic_vector(19 downto 0);
signal segload, rdy, bcdload, gobcd : std_logic;
signal segout : std_logic_vector(15 downto 0);
begin

    cntrl : dispCntrl port map(clk125, clr, start, bcdload, gobcd, rdy, segload);
    bcdreg : subreg port map(bcdload, clk125, clr, dist, bin_d_in);
    -- en will be high until rdy goes high 
    bcd : BCDConvert port map(clk125, bcdload, bin_d_in, bcd_d_out, rdy);
        
-- segment register and output
    segreg : subreg port map(segload, clk125, clr, bcd_d_out(19 downto 4), segout);
    seginput <= X"00000" & segout(15 downto 4);
    seg : x7segb8 port map(seginput, clkseg, clr, a_to_g, an);

end Behavioral;
