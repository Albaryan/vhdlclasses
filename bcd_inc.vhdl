library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_inc is
    port (
    a: in std_logic_vector(11 downto 0);
    b: out std_logic_vector(11 downto 0)
    );
end bcd_inc;

architecture behav of bcd_inc is
    begin
    process(a)
    begin
        if (a(3 downto 0)<"1001") then
            b(3 downto 0) <= std_logic_vector(unsigned(a(3 downto 0)) + 1);
        else
            b(3 downto 0) <= "0000";

            if (a(7 downto 4)<"1001") then
                b(7 downto 4) <= std_logic_vector(unsigned(a(7 downto 4)) + 1);
            else
                b(7 downto 4) <= "0000";

                if (a(11 downto 8)<"1001") then
                    b(11 downto 8)<= std_logic_vector(unsigned(a(11 downto 8)) + 1);
                else
                    b(11 downto 8)<= "0000";
                end if;
            end if;
        end if;
    end process;
                end behav;


