library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity tb_compteur_impulsions is 
end entity; 


architecture arch of tb_compteur_impulsions is 

component COMPTEUR_IMPULSIONS 

port (E , clk , rst : in std_logic;
VA : in unsigned(7 downto 0);
S : out std_logic); 

end component; 

signal E : std_logic := '0'; 
signal clk , S: std_logic := '0';
signal rst : std_logic; 
signal VA : unsigned(7 downto 0):= "10000000";

begin 

DUT : COMPTEUR_IMPULSIONS

port map(E => E , rst => rst , clk => clk , VA => VA , S => S); 

clk <= not clk after 15 ns; 

rst <= '1' , '0' after 10 ns ;

E <= not E after 20 ns; 

end architecture;