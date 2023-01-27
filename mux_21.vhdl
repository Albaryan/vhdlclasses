library ieee;
use ieee.std_logic_1164.all;

entity mux_21 is
    port(
        sel,i0,i1: in std_logic;
        o0: out std_logic
    );
end mux_21;

architecture gate_behav of mux_21 is
    signal s0,s1: std_logic;

    begin
        s0<= (not sel) and i0;
        s1<= sel and i1;

        o0<= s0 or s1;
    end gate_behav;

architecture con_behav of mux_21 is
    begin
        o0<= i1 when (sel='1') else
            i0;
    end con_behav;

architecture proc_behav of mux_21 is

begin
    process(sel) begin
        if (sel='1') then
            o0<=i1;
        else
            o0<=i0;
        end if;
    end process;

end proc_behav ; -- proc_behav

