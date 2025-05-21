----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2022 04:44:47 PM
-- Design Name: 
-- Module Name: uartTop - Behavioral
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

entity uartTop is
    Port ( clk : in STD_LOGIC;
           clr : std_logic;
           fsel : in std_logic_vector(2 downto 0);
           go : in std_logic;
           uartload : in std_logic;
           output : out STD_LOGIC);
end uartTop;

architecture Behavioral of uartTop is

    component uartc2 is
        port(
             clk : in STD_LOGIC;
             clr : in STD_LOGIC;
             tx_data : in STD_LOGIC_VECTOR(7 downto 0);
             ready : in STD_LOGIC;
             tdre : out STD_LOGIC;
             TxD : out STD_LOGIC
             );
    end component;
    
    component uartcntrl is
        Port ( clk : in STD_LOGIC;
               clr : in STD_LOGIC;
               go : in STD_LOGIC;
               tdre : in STD_LOGIC;
               ready : out STD_LOGIC);
    end component;
    
    component subreg is -- inputs the 6th bit from rom8
        generic(N:integer := 3);
        Port ( load : in STD_LOGIC;
               clk : in STD_LOGIC;
               clr : in std_logic;
               d : in STD_LOGIC_VECTOR (N-1 downto 0);
               q : out STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
    
    component feedMux is
        Port ( fsel : in STD_LOGIC_VECTOR (2 downto 0);
               q : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal muxout : std_logic_vector(7 downto 0) := X"00";
    signal ready, tdre : std_logic := '0';
    signal regout : std_logic_vector(2 downto 0);
begin
uesp : uartc2 port map(clk, clr, muxout, ready, tdre, output);
ucntl : uartcntrl port map(clk, clr, go, tdre, ready);
reg : subreg port map(uartload, clk, clr, fsel, regout);
mux : feedmux port map(regout, muxout); 


end Behavioral;
