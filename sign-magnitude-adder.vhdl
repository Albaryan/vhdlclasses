library ieee;
use ieee.std_logic_1164.all;

entity sign_magnitude is
    port(
        a,b: in std_logic_vector(3 downto 0);
        ans: out std_logic_vector(3 downto 0)
    );
end sign_magnitude;

architecture behav of sign_magnitude is
        signal max,min,mag_sum : unsigned(2 downto 0);
        signal mag: std_logic;
   
    process(a,b)
    begin
        if a(2 downto 0)>b(2 downto 0) then
            max <= a(2 downto 0);
            min <= b(2 downto 0);
            mag <= a(3);
        else 
            max <= b(2 downto 0);
            min <= a(2 downto 0);
            mag <= b(3);
        end if;
    end process;

    mag_sum <= max + min when (a(3) = b(3)) else max-min;

    sum <= std_logic_vector(mag & mag_sum);
        end behav;

    