library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity COUNTER is 
port(D , clk , rst , S: in std_logic;
     C : out unsigned(7 downto 0)); 
end entity; 

architecture arch of COUNTER is 

signal cmp : unsigned(7 downto 0); 

begin 

process(clk , rst)
begin

if(rst ='1')then 
	cmp <= "00000000";

elsif(clk='1' and clk'event)then 
	if(S = '1')then 
		cmp <= "00000000"; 
	elsif(D = '1')then 
		cmp <= cmp + "00000001"; 
	end if;
end if;  

end process; 

C <= cmp;

end architecture; 