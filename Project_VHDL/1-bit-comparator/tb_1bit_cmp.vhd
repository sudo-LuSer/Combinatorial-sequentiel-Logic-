library ieee; 
use ieee.std_logic_1164.all;
entity test_bench_1_bit_cmp is 
end entity; 

architecture tb of test_bench_1_bit_cmp is 
signal a,b : STD_LOGIC;
signal S,I,E : STD_LOGIC; 

begin 
	UUT: entity work.one_bit_comparateur
	port map(a=>a,
		 b=>b,
		 E=>E, 
	 	 S=>S,
		 I=>I); 

a <= '0' , '1' after 20 ns , '0' after 40 ns , '1' after 60 ns;
b <= '0' , '1' after 20 ns , '1' after 40 ns , '0' after 60 ns;

end tb;   