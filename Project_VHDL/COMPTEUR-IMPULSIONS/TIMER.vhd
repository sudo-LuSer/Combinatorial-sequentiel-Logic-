library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity TIMER is 
port(P , clk , rst: in std_logic;
     S : out std_logic); 
end entity; 

architecture arch of TIMER is 

signal cmp : unsigned(3 downto 0):="0000"; 
signal T : std_logic; 

begin 

process(clk , rst)
begin

if(rst ='1')then 
	cmp <= "0000";
	T <= '0';
elsif(clk='1' and clk'event)then 
	if(P = '1')then 
		T <= '1';
	end if;
	if(T = '1')then 
		if(cmp = "1010")then 
			T <= '0';
		else  
			cmp <= cmp + "0001";
		end if;  
	end if;
end if;  

end process; 

S <= T; 

end architecture; 