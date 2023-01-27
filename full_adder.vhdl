library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port(
        c1,a,b: in std_logic;
        s,c2: out std_logic
    );
end full_adder;

architecture behav of full_adder is
    signal s1,s2,s3: std_logic;

    begin
        half_adder_unit0: entity work.half_adder(behav)
        port map(
            a=>a,
            b=>b,
            s=>s1,
            c=>s2
        );

        half_adder_unit1: entity work.half_adder(behav)
        port map(
            a=>s1,
            b=> c1,
            s=>s,
            c=>s3
        );

        c2<= s2 or s3;
    end behav;

