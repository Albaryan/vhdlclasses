library ieee;
use ieee.std_logic_1164.all;
entity gt_tb is
    end gt_tb;

architecture tb_behav of gt_tb is
    signal test_in0, test_in1: std_logic;
    signal test_out: std_logic;
begin
    uut: entity work.gt(behav)
        port map(
            x=>test_in0,
            y=>test_in1,
            gt1=>test_out
        );
process
begin
    test_in0<= '0';
    test_in1<= '0';
    wait for 200 ns;

    test_in0<= '0';
    test_in1<= '1';
    wait for 200 ns;

    test_in0<= '1';
    test_in1<= '0';
    wait for 200 ns;

    test_in0<= '1';
    test_in1<= '1';
    wait for 200 ns;
    wait;

end process;
end tb_behav;