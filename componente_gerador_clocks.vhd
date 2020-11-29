LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity componente_gerador_clocks is
    Port ( clk_base: in std_logic;
           reset: in std_logic;
           clk_1, clk_2, clk_3, clk_4, clk_5: out std_logic
     );
end componente_gerador_clocks;

architecture arch of componente_gerador_clocks is
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

    signal trash, clk_1_state, clk_2_state, clk_3_state, clk_4_state, clk_5_state: std_logic;
begin
    jk1: componente_jk port map (j => '1', k => '1', clk => clk_base, reset => reset, q => clk_1_state, qb => trash);
    jk2: componente_jk port map (j => '1', k => '1', clk => clk_1_state, reset => reset, q => clk_2_state, qb => trash);
    jk3: componente_jk port map (j => '1', k => '1', clk => clk_2_state, reset => reset, q => clk_3_state, qb => trash);
    jk4: componente_jk port map (j => '1', k => '1', clk => clk_3_state, reset => reset, q => clk_4_state, qb => trash);
    jk5: componente_jk port map (j => '1', k => '1', clk => clk_4_state, reset => reset, q => clk_5_state, qb => trash);

    clk_1 <= clk_1_state;
    clk_2 <= clk_2_state; 
    clk_3 <= clk_3_state;
    clk_4 <= clk_4_state; 
    clk_5 <= clk_5_state;
end arch;