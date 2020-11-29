library ieee;
use ieee.std_logic_1164.all;

entity componente_main_testbench is
end componente_main_testbench;

architecture tb_arch of componente_main_testbench is
    signal test_sys_clk, test_interval : std_logic;
    signal test_limp, test_hab, test_arm : std_logic;
begin
    uut: entity work.componente_main(arquitetura_main)
        port map(sys_clk => test_sys_clk, interval => test_interval, out_limp => test_limp, out_hab => test_hab, out_arm => test_arm);

        process
        begin
            -- vetor de teste 1
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 2
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 3
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 4
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 5
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 6
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 7
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 8
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 9
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 10
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 11
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 12
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 13
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 14
            test_sys_clk <= '1';
            wait for 200 ns;
            -- vetor de teste 15
            test_sys_clk <= '0';
            wait for 200 ns;
            -- vetor de teste 16
            test_sys_clk <= '1';
            wait for 200 ns;
            wait;
        end process;
end tb_arch;