library ieee;
use ieee.std_logic_1164.all;

entity prio_encoder is
    port (
        r: in std_logic_vector(3 downto 0);
        pcode: out std_logic_vector(2 downto 0)
    );
end prio_encoder;

architecture behav of prio_encoder is
    begin
        pcode<= "100" when (r(3)="1") else
                "011" when (r(2)="1") else
                "010" when (r(1)="1") else
                "001" when (r(0)="1") else
                "000";
    end behav;

    