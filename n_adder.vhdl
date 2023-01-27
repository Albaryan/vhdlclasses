library ieee;
use ieee.std_logic_1164.all;

entity n_adder is
    generic (
        N: integer:=4
    );
    port(
        a:in std_logic_vector(N-1 downto 0);
        b: in std_logic_vector(N-1 downto 0);
        c: in std_logic;
        s: out std_logic_vector(N-1 downto 0);
        c_o: out std_logic
    );
end n_adder;

architecture behav of n_adder is
    begin
        FULL_ADDER_GEN: for k in 0 to N-1 generate
            full_adder_k: entity work.full_adder(behav)
            port map(
                a=>a(k),
                b=>b(k),
                c1=>c,
                s=>s(k),
                c2=>c_o
            );
        end generate;
    end behav;