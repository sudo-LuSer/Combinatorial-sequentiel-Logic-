library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity tb_comparator is 
end entity; 

architecture arch of tb_comparator is 

signal C , VA : unsigned(7 downto 0); 
signal P , S: std_logic; 

component COMPARATOR is 
port(C , VA : in unsigned(7 downto 0);
     S : in std_logic := '0'; 
     P : out std_logic); 

end component;  

begin 

DUT : COMPARATOR 
port map(C => C, 
	 VA => VA, 
	 P => P, 
	 S => S); 

C <= "10010000" , "10000000" after 20 ns; 

VA <= "10000000"; 

end architecture; 