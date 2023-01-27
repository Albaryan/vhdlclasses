library ieee;
use ieee.std_logic_1164.all;

entity sev_seg is
    port(
        hex: in std_logic_vector(3 downto 0);
        dp: in std_logic;
        sseg: out std_logic_vector(7 downto 0)
    );
end sev_seg;

architecture behav of sev_seg is
begin
    with hex select
        sseg(6 downto 0) <= "1000000" when "0000",
                            "1111001" when "0001",
                            "0100100" when "0010",
                            "0100100" when "0011",
                            "0100100" when "0100",
                            "0100100" when "0101",
                            "0100100" when "0110",
                            "0100100" when "0111",
                            "0100100" when "1000",
                            "0100100" when "1001",
                            "0100100" when "1010",
                            "0100100" when "1011",
                            "0100100" when "1100",
                            "0100100" when "1101",
                            "0100100" when "1110",
                            "0100100" when "1111",
                            

end behav ; -- behav