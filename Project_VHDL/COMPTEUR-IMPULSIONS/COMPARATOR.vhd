library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity COMPARATOR is 
port(C , VA: in unsigned(7 downto 0);
     S : std_logic; 
     P :out std_logic); 
end entity; 

architecture arch of COMPARATOR is 

begin 

process(C , VA) 
begin 

if(S = '1')then 
	P <= '0'; 
elsif(C = VA)then 
	P <= '1';
else 
	P <= '0';  
end if; 

end process; 

end architecture ; 