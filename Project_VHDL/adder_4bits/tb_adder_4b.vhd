library ieee; 
use ieee.std_logic_1164.all; 

entity tb_adder_4b is 
end entity; 

architecture test of tb_adder_4b is 

component adder_4b is 
port(A : in std_logic_vector(3 downto 0); 
	B : in std_logic_vector(3 downto 0); 
	S : out std_logic_vector(3 downto 0)); 
end component; 
signal A,B,S : std_logic_vector(3 downto 0);

begin 
DUT : adder_4b 
port map(A=>A, 
	 B=>B,
	 S=> S); 

A <= "1001" , "1111" after 20ns , "1011" after 40ns; 
B <= "0000" , "0101" after 20ns , "0011" after 40ns; 

end test; 