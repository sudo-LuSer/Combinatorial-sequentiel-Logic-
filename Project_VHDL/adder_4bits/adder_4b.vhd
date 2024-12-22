library ieee; 
use ieee.std_logic_1164.all; 

entity adder_4b is 
port(A : in std_logic_vector(3 downto 0); 
     B : in std_logic_vector(3 downto 0); 
     S : out std_logic_vector(3 downto 0)); 
end entity; 

architecture struct of adder_4b is 

component full_adder is 
port(A : in std_logic;
     B : in std_logic; 
     C : in std_logic; 
     SUM : out std_logic; 
     CARRY : out std_logic);
end component; 

signal C:std_logic_vector(3 downto 0) ; 

begin 

fa0 : full_adder 
port map(A => A(0), 
	 B => B(0), 
	 C => '0',
	 SUM => S(0),
	 CARRY => C(0)); 

fa1 : full_adder
port map(A => A(1), 
	 B => B(1), 
	 C => C(0), 
	 SUM => S(1), 
	 CARRY => C(1)); 

fa2 : full_adder
port map(A => A(2), 
 	 B => B(2), 
	 C => C(1), 
 	 SUM => S(2), 
	 CARRY => C(2)); 

fa3 : full_adder
port map(A => A(3), 
	 B => B(3), 
	 C => C(2),
 	 SUM => S(3), 
	 CARRY => C(3)); 

end struct; 