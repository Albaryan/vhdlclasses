library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsmmealy is
    port(
        clk,reset,level:in std_logic;
        tick: out std_logic
    );
    end fsmmealy;

architecture behav of fsmmealy is
    type state_type is (zero,one);
    signal r_reg,r_next: state_type;

begin
    process(clk,reset)
    begin
        if (reset='1') then
            r_reg<= zero;
        elsif (rising_edge(clk)) then
            r_reg<= r_next;
        end if;
    end process;

    process(r_reg,level)
    begin
        r_next<=r_reg;
        tick<='0';
        if r_reg=zero then
            if level='1' then
                r_next<=one;
                tick<='1';
            end if;
        elsif r_reg=one then
            if level='0' then
                r_next<=zero;
            end if;
        end if;
    end process;
end behav;