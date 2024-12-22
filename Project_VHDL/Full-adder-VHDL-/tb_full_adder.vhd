
library ieee; 
use ieee.std_logic_1164.all;
entity test_bench_full_adder is 
end entity; 

architecture tb of test_bench_full_adder is 
signal a , b ,c : STD_LOGIC;
signal SUM ,CARRY : STD_LOGIC; 

begin 
	UUT: entity work.full_adder
	port map(a=>a,
		 b=>b, 
		 c=>c, 
	 	 SUM=>SUM,
		 CARRY=>CARRY); 

a <= '0' , '1' after 60 ns , '0' after 140 ns;
b <= '0' , '1' after 40 ns , '0' after 100 ns , '1' after 140 ns;
c <= '0' , '1' after 20 ns , '0' after 80 ns , '1' after 120 ns; 

end tb;   