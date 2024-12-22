library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity adder_4b2 is 
port(A : in std_logic_vector(3 downto 0);
     B : in std_logic_vector(3 downto 0); 
     S : out std_logic_vector(3 downto 0)); 
end entity; 

architecture behaviour of adder_4b2 is

begin 

S <= std_logic_vector(signed(A) + signed(B)); 

end behaviour; 