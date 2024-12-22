library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity compteur_impulsions is 

port(E , clk , rst : in std_logic; VA : in unsigned(7 downto 0);
     S : out std_logic); 

end entity; 


architecture arch of compteur_impulsions is 

signal D , P: std_logic; 
signal C : unsigned(7 downto 0);
signal S0 : std_logic; 

component FSM 
  
port(E , clk , rst , S: in std_logic;
     D : out std_logic);

end component; 

component COUNTER is
  
port(D , clk , rst , S: in std_logic;
     C : out unsigned(7 downto 0));

end component; 

component COMPARATOR  

port(C , VA : in unsigned(7 downto 0);
     S : in std_logic; 
     P : out std_logic); 

end component;  

component TIMER 
  
port(P , clk , rst: in std_logic; S : out std_logic);

end component; 

begin 

S <= S0; 

DUT0 : FSM

port map(E => E , rst => rst , clk => clk , D => D , S => S0);  

DUT1 : COUNTER

port map(D => D , rst => rst , clk => clk , S => S0 , C => C); 

DUT2 : COMPARATOR 

port map(C => C, VA => VA, P => P, S => S0); 

DUT3 : TIMER

port map(P => P , rst => rst , clk => clk , S => S0); 


end architecture;
