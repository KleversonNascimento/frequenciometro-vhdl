library ieee;
use ieee.std_logic_1164.all;

entity componente_contador_testbench is
end componente_contador_testbench;

architecture tb_arch of componente_contador_testbench is
    signal test_inclk : std_logic;
    signal test_outa, test_outb, test_outc : std_logic;
begin
    uut: entity work.componente_contador(arquitetura_contador)
        port map(inclk => test_inclk, outa => test_outa, outb => test_outb, outc => test_outc);

        process
        begin
            -- vetor de teste 1
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 2
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 3
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 4
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 5
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 6
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 7
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 8
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 9
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 10
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 11
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 12
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 13
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 14
            test_inclk <= '1';
            wait for 200 ns;
            -- vetor de teste 15
            test_inclk <= '0';
            wait for 200 ns;
            -- vetor de teste 16
            test_inclk <= '1';
            wait for 200 ns;
            wait;
        end process;
end tb_arch;