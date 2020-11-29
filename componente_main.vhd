library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity componente_main is
    port(
        sys_clk : in std_logic;
        interval : in std_logic;
        out_limp : out std_logic;
        out_hab : out std_logic;
        out_arm : out std_logic
    );
end componente_main;

architecture arquitetura_main of componente_main is

-- TODO: Contador Decádico
-- TODO: MUX

-- Contador de controle de modulo 6 MOD-6
component componente_contador
    port(
        inclk : in std_logic;
        outa : out std_logic;
        outb : out std_logic;
        outc : out std_logic
    );
end component;

-- Gerador de sinal de controle (decodificador)
component componente_sinal
    port(
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        limp : out std_logic;
        hab : out std_logic;
        arm : out std_logic
    );
end component;

-- TODO: Signal dos Contadores decádicos
-- O clk_controle deve ser a saída do MUX
signal clk_controle, contador_a, contador_b, contador_c : std_logic;

begin
    -- TODO: Trocar inclk => sys_clk para inclk => clk_controle (saída do MUX)
    contador: componente_contador port map (inclk => sys_clk, outa => contador_a, outb => contador_b, outc => contador_c);
    sinal: componente_sinal port map (a => contador_a, b => contador_b, c => contador_c, limp => out_limp, hab => out_hab, arm => out_arm);
end arquitetura_main;