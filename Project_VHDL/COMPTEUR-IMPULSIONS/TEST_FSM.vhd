library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity tb_fsm is 
end entity ; 

architecture arch of tb_fsm is 

component FSM is
  
port(E , clk , rst , S: in std_logic;
     D : out std_logic);

end component; 

signal E : std_logic := '0'; 
signal clk , S: std_logic := '0';
signal rst , D: std_logic; 

begin 

DUT : FSM

port map(E => E , rst => rst , clk => clk , D => D , S => S); 

clk <= not clk after 15 ns; 

rst <= '1' , '0' after 10 ns ;

E <= not E after 20 ns; 

end architecture ; 