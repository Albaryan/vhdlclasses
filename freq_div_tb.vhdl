library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freq_div_tb is
    end freq_div_tb;

architecture tb_behav of freq_div_tb is
    signal test_in0:std_logic;
    signal test_out: std_logic;
begin
    uut: entity work.freq_div(behav)
        port map(
            clk=> test_in0,
            
            clk_o=>test_out
        );
process 
begin

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;
    
    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;
    
    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;

    test_in0<= '0';
    wait for 50 ns;

    test_in0<= '1';
    wait for 50 ns;
    wait;

end process;
end tb_behav;
    

