library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity componente_sinal is
    port(
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        limp : out std_logic;
        hab : out std_logic;
        arm : out std_logic
    );
end componente_sinal;

architecture arquitetura_sinal of componente_sinal is

begin
    limp <= not a and not b and not c;
    hab <= not a and b and not c;
    arm <= not a and not b and c;

end arquitetura_sinal;
