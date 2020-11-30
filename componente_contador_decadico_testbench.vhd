LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity componente_contador_decadico_testbench is
end componente_contador_decadico_testbench;

architecture arch of componente_contador_decadico_testbench is
    signal test_sys_clk, test_clk_0, test_clk_1, test_clk_2, test_clk_3, test_clk_4, test_clk_5: std_logic;
begin
    uut: entity work.componente_contador_decadico(arch)
        port map(sys_clk => test_sys_clk, clk_0 => test_clk_0, clk_1 => test_clk_1, clk_2 => test_clk_2, clk_3 => test_clk_3, clk_4 => test_clk_4, clk_5 => test_clk_5);
    clock_process :process
    begin
        test_sys_clk <= '0';
        wait for 5 us;
        test_sys_clk <= '1';
        wait for 5 us;
    end process;
end arch;