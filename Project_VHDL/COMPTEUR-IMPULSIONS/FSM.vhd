library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
entity FSM is 
port(E , clk , rst , S: in std_logic;
     D : out std_logic); 
end entity; 

architecture arch of FSM is 

type states is (E_0 , E_1 , E_2 );
signal etat_actuelle : states;
signal etat_future : states;  

begin 

process(etat_actuelle)
begin 
	case etat_actuelle is
		when E_0 => 
			D <= '0'; 
		when E_1 => 
			D <= '1';	
		when E_2 => 
			D <= '0';
	end case; 
end process;

process (etat_actuelle , E)
begin 
		case etat_actuelle is 
			when E_0 => 
				if (E = '1') then 
					etat_future <= E_1; 
				end if; 

			when E_1 =>  
				if(E = '1')then 
					etat_future <= E_2;
				else 
					etat_future <= E_0;
				end if;

			when E_2 =>  
				if(E = '0')then 
					etat_future <= E_0;
				end if; 
			when others => 
				etat_future <= E_0; 

		end case;

end process;

process(clk , rst)
begin 
if (rst = '1')then 
	etat_actuelle <= E_0;	

elsif(clk = '1' and clk'event) then 
	if(S = '1')then 
		etat_actuelle <= E_0; 
	else
		etat_actuelle <= etat_future;
	end if;
end if; 

end process;

end architecture;