library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_wave is
    port(
        M,N : in unsigned(3 downto 0);
        sqr: out std_logic;
        clk: in std_logic;
        reset: in std_logic
    );
    end square_wave;

architecture behav of square_wave is
    signal T: unsigned(4 downto 0) := (M+N);
    signal r_reg: unsigned(4 downto 0);
    signal r_next: unsigned(4 downto 0);
begin
    process(clk,reset)
    begin
        if (reset='1') then
            r_reg <= (others=>'0');
        elsif (rising_edge(clk)) then
            r_reg<=r_next;
        end if;
    end process;
        
        r_next <= r_reg+1;

        process(T,r_reg,M)
        begin
            if (r_reg<M) then
                sqr<='1';
            elsif (r_reg<T) then
                sqr<='1';
            else
                r_reg<=(others=>'0');
            end if;
        end process;
end architecture behav;