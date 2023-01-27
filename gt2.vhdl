library ieee;
use ieee.std_logic_1164.all;

entity gt2 is
    port(
        a,b: in std_logic_vector(1 downto 0);
        y: out std_logic
    );
end gt2;

architecture behav of gt2 is
    signal p0, p1, p2, p3: std_logic;
begin
    y <= p0 or p1 or p2;

    p0 <= a(1) and (not b(1));
    p1 <= a(0) and (not b(1)) and (not b(0));
    p2 <= a(0) and a(1) and (not b(0));
end behav; 
