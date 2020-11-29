library ieee;
use ieee.std_logic_1164.all;

entity componente_sinal_testbench is
end componente_sinal_testbench;

architecture tb_arquitetura_sinal of componente_sinal_testbench is
    signal test_a, test_b, test_c : std_logic;
    signal test_out_limp, test_out_hab, test_out_arm : std_logic;
begin
    uut: entity work.componente_sinal(arquitetura_sinal)
        port map(a => test_a, b => test_b, c => test_c, limp => test_out_limp, hab => test_out_hab, arm => test_out_arm);

        process
        begin
            -- limpeza
            test_a <= '0';
            test_b <= '0';
            test_c <= '0';
            wait for 200 ns;
            -- habilitacao
            test_a <= '0';
            test_b <= '1';
            test_c <= '0';
            wait for 200 ns;
            -- armazenamento
            test_a <= '0';
            test_b <= '0';
            test_c <= '1';
            wait for 200 ns;
            -- outros casos
            test_a <= '1';
            test_b <= '0';
            test_c <= '0';
            wait for 200 ns;
            test_a <= '1';
            test_b <= '1';
            test_c <= '0';
            wait for 200 ns;
            test_a <= '1';
            test_b <= '0';
            test_c <= '1';
            wait for 200 ns;
            wait;
        end process;
end tb_arquitetura_sinal;