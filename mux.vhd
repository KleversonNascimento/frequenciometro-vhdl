library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
port(
	a1 : in std_logic;
	a2 : in std_logic;
	a3 : in std_logic;
	a4 : in std_logic;
	a5 : in std_logic;
	a6 : in std_logic;
	s1 : in std_logic_vector(2 downto 0);
	b  : out std_logic
);
end entity mux;

architecture arquitetura_mux of mux is	

begin

p1_mux : process(a1,a2,a3,a4,a5,a6,s1)
begin 
	case s1 is 
		when "000" => b <= a1 ;
		when "001" => b <= a2 ;
		when "010" => b <= a3 ;
		when "011" => b <= a4 ;
		when "100" => b <= a5 ;
		when others => b <= a6 ;		
	end case;
end process p1_mux;

end architecture arquitetura_mux;
