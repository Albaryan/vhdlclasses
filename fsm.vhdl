library ieee;
use ieee.std_logic_1164.all;

entity fsm is
    port(
        y0,y1:out std_logic;
        a,b,clk,reset: in std_logic
    );
    end fsm;

architecture behav of fsm is
    type eg_state_type is (s0,s1,s2);

    signal state_reg, state_next: eg_state_type;

begin
    process(clk, reset)
    begin
        if (reset='1') then
            state_reg<=s0;
        elsif (rising_edge(clk)) then
            state_reg <= state_next;
        end if;
    end process;

    process(state_reg,a,b)
    begin
        state_next <= state_reg;
        y0 <= '0';
        y1 <= '0';
        case state_reg is
            when s0=>
            y1<= '1';
            if a='1' then
                if b='1' then
                    y0<='1';
                    state_next<=s2;
                else
                    state_next <= s1;
                end if;
            end if;

            when s1=>
            y1<='1';
            if a='1' then
                state_next<=s0;
            end if;

            when s2=>
                state_next<= s0;
        end case;
    end process;
end behav;




