library ieee;
use ieee.std_logic_1164.all;

entity componente_gerador_clocks_testbench is
end componente_gerador_clocks_testbench;

architecture tb_arch of componente_gerador_clocks_testbench is
    signal test_clk_base, test_clk_1, test_clk_2, test_clk_3, test_clk_4, test_clk_5, reset: std_logic;
begin
    uut: entity work.componente_gerador_clocks(comportament)
        port map(clk_base => test_clk_base, clk_1 => test_clk_1, clk_2 => test_clk_2, clk_3 => test_clk_3, clk_4 => test_clk_4, clk_5 => test_clk_5, reset => reset);
    clock_process :process
    begin
        test_clk_base <= '0';
        wait for 5 us;
        test_clk_base <= '1';
        wait for 5 us;
    end process;
end tb_arch;