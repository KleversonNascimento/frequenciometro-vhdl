library ieee;
use ieee.std_logic_1164.all;

entity componente_main_testbench is
end componente_main_testbench;

architecture arch of componente_main_testbench is
    signal test_interval : std_logic_vector(2 downto 0);
    signal test_sys_clk, test_limp, test_hab, test_arm : std_logic;
begin
    uut: entity work.componente_main(arquitetura_main)
        port map(sys_clk => test_sys_clk, interval => test_interval, out_limp => test_limp, out_hab => test_hab, out_arm => test_arm);
    clock_process :process
        begin
            test_interval <= "000";
            loop_1 : for k in 0 to 5 loop
                test_sys_clk <= '1';
                wait for 5 us;
                test_sys_clk <= '0';
                wait for 5 us;
            end loop loop_1;
            test_interval <= "001";
            loop_2 : for k in 0 to 60 loop
                test_sys_clk <= '1';
                wait for 5 us;
                test_sys_clk <= '0';
                wait for 5 us;
            end loop loop_2;
            test_interval <= "010";
            loop_3 : for k in 0 to 500 loop
                test_sys_clk <= '1';
                wait for 5 us;
                test_sys_clk <= '0';
                wait for 5 us;
            end loop loop_3;
            wait;
    end process;
end arch;