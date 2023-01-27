library ieee;
use ieee.std_logic_1164.all;

entity bin_decoder is
    port(
        a: in std_logic_vector(1 downto 0);
        q: out std_logic_vector(3 downto 0)
    );
end bin_decoder;

architecture behav of bin_decoder is
    begin
        q<= "1000" when (a="00") else
            "0100" when (a="01") else
            "0010" when (a="10") else
            "0001";
    end behav;







