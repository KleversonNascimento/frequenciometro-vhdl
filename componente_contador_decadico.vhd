LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity componente_contador_decadico is
    Port ( sys_clk: in std_logic;
           clk_0, clk_1, clk_2, clk_3, clk_4, clk_5: out std_logic
     );
end componente_contador_decadico;

architecture arch of componente_contador_decadico is
    component componente_dividir_clock_10
        port ( clk: in std_logic;
        clock_out: out std_logic);
    end component;

    signal clk_1_state, clk_2_state, clk_3_state, clk_4_state, clk_5_state: std_logic;
begin
    clk1: componente_dividir_clock_10 port map(clk => sys_clk, clock_out => clk_1_state);
    clk2: componente_dividir_clock_10 port map(clk => clk_1_state, clock_out => clk_2_state);
    clk3: componente_dividir_clock_10 port map(clk => clk_2_state, clock_out => clk_3_state);
    clk4: componente_dividir_clock_10 port map(clk => clk_3_state, clock_out => clk_4_state);
    clk5: componente_dividir_clock_10 port map(clk => clk_4_state, clock_out => clk_5_state);

    clk_0 <= sys_clk;
    clk_1 <= clk_1_state;
    clk_2 <= clk_2_state; 
    clk_3 <= clk_3_state;
    clk_4 <= clk_4_state; 
    clk_5 <= clk_5_state;
end arch;