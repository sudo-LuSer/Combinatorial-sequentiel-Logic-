
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity tb_counter is 
end entity ; 

architecture arch of tb_counter is 

component COUNTER is
  
port(D , clk , rst , S: in std_logic;
     C : out unsigned(7 downto 0));

end component; 

signal D : std_logic; 
signal clk : std_logic := '0';
signal rst : std_logic;
signal S : std_logic := '0'; 
signal C : unsigned(7 downto 0); 

begin 

DUT : COUNTER

port map(D => D , rst => rst , clk => clk , S => S , C => C); 

D <= '1' ;

clk <= not clk after 10 ns; 

rst <= '1' , '0' after 10 ns ;


end architecture ; 