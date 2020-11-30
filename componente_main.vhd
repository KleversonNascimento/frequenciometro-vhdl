library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity componente_main is
    port(
        sys_clk : in std_logic;
        interval : in std_logic_vector(2 downto 0);
        out_limp : out std_logic;
        out_hab : out std_logic;
        out_arm : out std_logic
    );
end componente_main;

architecture arquitetura_main of componente_main is

-- Contador Decádico
component componente_contador_decadico
    port (
        sys_clk: in std_logic;
        clk_0, clk_1, clk_2, clk_3, clk_4, clk_5: out std_logic
     );
end component;

-- MUX
component componente_mux
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
end component;

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

signal clk_0, clk_1, clk_2, clk_3, clk_4, clk_5: std_logic;
signal clk_controle, contador_a, contador_b, contador_c: std_logic;

begin
    contador_decadico: componente_contador_decadico port map (sys_clk => sys_clk, clk_0 => clk_0, clk_1 => clk_1, clk_2 => clk_2, clk_3 => clk_3, clk_4 => clk_4, clk_5 => clk_5);
    mux: componente_mux port map (out_signal => clk_controle, s1 => interval, a1 => clk_0, a2 => clk_1, a3 => clk_2, a4 => clk_3, a5 => clk_4, a6 => clk_5);
    contador: componente_contador port map (inclk => clk_controle, outa => contador_a, outb => contador_b, outc => contador_c);
    sinal: componente_sinal port map (a => contador_a, b => contador_b, c => contador_c, limp => out_limp, hab => out_hab, arm => out_arm);
end arquitetura_main;