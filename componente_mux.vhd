library IEEE;
use IEEE.std_logic_1164.all;

entity componente_mux is
port(
	a1 : in std_logic;
	a2 : in std_logic;
	a3 : in std_logic;
	a4 : in std_logic;
	a5 : in std_logic;
	a6 : in std_logic;
	s1 : in std_logic_vector(2 downto 0);
	out_signal  : out std_logic
);
end entity componente_mux;

architecture arch of componente_mux is	
begin
	p1_mux : process(a1,a2,a3,a4,a5,a6,s1)
	begin 
		case s1 is 
			when "000" => out_signal <= a1 ;
			when "001" => out_signal <= a2 ;
			when "010" => out_signal <= a3 ;
			when "011" => out_signal <= a4 ;
			when "100" => out_signal <= a5 ;
			when others => out_signal <= a6 ;		
		end case;
	end process p1_mux;
end architecture arch;
