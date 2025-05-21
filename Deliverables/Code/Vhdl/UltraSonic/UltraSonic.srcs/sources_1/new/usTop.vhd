----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2022 11:33:51 AM
-- Design Name: 
-- Module Name: usTop - Behavioral
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

entity usTop is
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
end usTop;

architecture Behavioral of usTop is
    component trigger is
        generic(N: integer := 20);
        Port ( clk : in STD_LOGIC; -- incoming 50mhz
               clr : in STD_LOGIC;
               T : out STD_LOGIC;
               q : out std_logic_vector(N-1 downto 0));
    end component;
    
    component us_control is
        Port ( clk : in std_logic;
               clr : in std_logic;
               T : in STD_LOGIC; -- trigger
               E : in std_logic; -- echo
               count : in std_logic_vector(19 downto 0);
               strtload : out std_logic; -- load start echo time
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
    end component;
    
    component subreg is -- inputs the 6th bit from rom8
        generic(N:integer := 16);
        Port ( load : in STD_LOGIC;
               clk : in STD_LOGIC;
               clr : in std_logic;
               d : in STD_LOGIC_VECTOR (N-1 downto 0);
               q : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
    
    
    component sub is
           Port ( go : in std_logic; -- tells us to start calc
                  ts : in STD_LOGIC_VECTOR (15 downto 0);
                  te : in STD_LOGIC_VECTOR (15 downto 0);
                  dist : out STD_LOGIC_VECTOR (15 downto 0);
                  done : out std_logic);
    end component;
    
    component comp4to1 is
        Port ( T : in STD_LOGIC_VECTOR (15 downto 0);
               go : in std_logic;
               ltClose : out STD_LOGIC;
               ltNear : out STD_LOGIC;
               ltFar : out STD_LOGIC;
               ltNone : out std_logic;
               done : out std_logic);
    end component;
    
    signal ltClose, ltNear, ltFar, ltNone, send : std_logic;
    signal Tin, strtload, endload, compload, ldload, c,
           gocalc, gocomp, donecomp, donebcd, donecalc, goload: std_logic;
    signal count : std_logic_vector(19 downto 0);
    signal endout, strtout, dist, crout : std_logic_vector(15 downto 0) := x"0000";
    signal countTime : std_logic_vector(15 downto 0);
    signal ldout, ldin, segout : std_logic_vector(15 downto 0) := X"0000";
    
begin

    trig : trigger port map(clk125, clr, Tin, count);
    countTime <= "000" & count(19 downto 7); -- 1 count time = 10 us => 13 ns per count
    
    -- outputs: servload, dispcalc
    cntrl : us_control port map(clk125, clr, Tin, echo, count, strtload, endload, gocalc, donecalc,
                                gocomp, compload, donecomp, ldload, 
                                dispcalc, servload, uartload, gouart);
                                
    -- math reg stuff
    endReg : subreg port map(endload, clk125, clr, countTime, endout);
    strtReg : subreg port map(strtload, clk125, clr, countTime, strtout);
    math : sub port map(gocalc, strtout, endout, dist, donecalc);
    
    -- comp reg stuff
    compr : subreg port map(compload, clk125, clr, dist, crout);
    comp : comp4to1 port map(crout, gocomp, ltClose, ltNear, ltFar, ltNone, donecomp);
    
    -- ld comp outputs: ld
    ldin <= X"000" & ltClose & ltNear & ltFar & "0";
    ldreg : subreg port map(ldload, clk125, clr, ldin, ldout);
    
    -- outputs
    servsel <= ltNear & ltClose; -- self selecting
    distance <= crout;
    uartsel <= ltFar & ltNear & ltClose;
    T <= Tin;
    ld <= ldout(7 downto 0);

end Behavioral;
