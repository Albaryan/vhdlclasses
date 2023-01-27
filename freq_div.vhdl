library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freq_div is
    port(
        clk:in std_logic;
        clk_o: out std_logic
    );
    end freq_div;


architecture behav of freq_div is
    signal counter: integer:=0;
    signal clk_reg: std_logic:= '0';
begin
    process(clk,counter)
    begin
        if (counter =3) then
            clk_reg <= not clk_reg;
            counter <= 0;
        elsif (rising_edge(clk)) then
            counter <= counter+1;
        end if;

        clk_o <=clk_reg;
    end process;
end behav;


        

            
