library ieee;
use ieee.std_logic_1164.all;

entity gt is
    port (
        x,y: in std_logic;
        gt1: out std_logic
    );
end gt;

architecture behav of gt is
    begin
        gt1<= x and (not y);
    end behav;
