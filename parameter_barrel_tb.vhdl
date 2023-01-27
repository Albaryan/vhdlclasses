library ieee;
use ieee.std_logic_1164.all;

entity parameter_barrel_tb is
end parameter_barrel_tb;

architecture tb_behav of parameter_barrel_tb is
    signal test_shft: std_logic_vector(2 downto 0); 
    signal test_s_in: std_logic_vector(7 downto 0);
    signal test_out: std_logic_vector(7 downto 0);
begin
    uut: entity work.parameter_barrel(behav)
        port map(
            shft=> test_shft,
            s_in=> test_s_in,
            s_out=>test_out
        );
process 
begin

    test_shft<= "001";
    test_s_in<= "00000001";
    wait for 200 ns;
    wait;

end process;
end tb_behav;
