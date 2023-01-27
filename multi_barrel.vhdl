library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi_barrel is
    generic(
        N: integer := 3
    );
    port(
        i0: in std_logic_vector((2**N)-1 downto 0);
        shft: in std_logic_vector(N-1 downto 0);
        lr: in std_logic;
        o0: out std_logic_Vector((2**N)-1 downto 0);
        shft0: out integer:=0
    );

end multi_barrel;

architecture behav of multi_barrel is

        signal shift: integer :=0;

    begin
    process(lr,shift)
    begin
        if (lr='1') then
            for i in 0 to (N)-1 loop
                
            end loop;
          end if;
    end process;
        end behav;

            