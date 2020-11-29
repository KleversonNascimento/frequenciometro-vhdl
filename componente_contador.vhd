library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity componente_contador is
    port(
        inclk : in std_logic;
        outa : out std_logic;
        outb : out std_logic;
        outc : out std_logic
    );
end componente_contador;

architecture arquitetura_contador of componente_contador is

component componente_jk
    port(
        j : in std_logic; 
        k : in std_logic; 
        clk : in std_logic; 
        reset : in std_logic; 
        q : out std_logic; 
        qb : out std_logic
    );
end component;

signal a, ab, b, bb, c, cb, s1, s2 : std_logic;

begin
    jk1 : componente_jk port map (j => '1', k => '1', clk => inclk, reset => s1, q => a, qb => ab);
    jk2 : componente_jk port map (j => a, k => a, clk => inclk, reset => s1, q => b, qb => bb);
    jk3 : componente_jk port map (j => s2, k => s2, clk => inclk, reset => s1, q => c, qb => cb);
    s1 <= b nand c;
    s2 <= a and b;
    outa <= a;
    outb <= b;
    outc <= c;
end arquitetura_contador;