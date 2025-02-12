library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity tb_timer is 
end entity ; 

architecture arch of tb_timer is 

component TIMER is
  
port(P , clk , rst: in std_logic;
     S : out std_logic);

end component; 

signal P : std_logic; 
signal clk : std_logic := '0';
signal rst : std_logic;
signal S : std_logic; 

begin 

DUT : TIMER

port map(P => P , rst => rst , clk => clk , S => S); 

P <= '1' ;

clk <= not clk after 10 ns; 

rst <= '1' , '0' after 10 ns ;


end architecture ; 