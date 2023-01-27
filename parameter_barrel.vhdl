library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parameter_barrel is
    generic( N: integer := 3);
    
    port(
        shft: in std_logic_vector(N-1 downto 0) := (others=> '0');
        s_in: in std_logic_vector((2**N)-1 downto 0);
        s_out: out std_logic_vector((2**N)-1 downto 0) := (others=> '0')
    );

    end parameter_barrel;

architecture behav of parameter_barrel is
    signal shft0: integer :=to_integer(signed(shft));
begin
    process(shft0)
    begin
        if (shft0=0) then
            s_out <= s_in;
        elsif (shft0=1) then
            s_out <= s_in(0) & s_in (2**N-1 downto 1);
        else
            s_out <= s_in(shft0-1 downto 0) & s_in((2**N)-1 downto shft0);
        end if;
    end process;
end behav;
