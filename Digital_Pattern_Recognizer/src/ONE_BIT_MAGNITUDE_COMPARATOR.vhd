library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ONE_BIT_MAGNITUDE_COMPARATOR is
    Port ( A : in  STD_LOGIC; 
           B : in  STD_LOGIC;
           C, D, E : out  STD_LOGIC);
end ONE_BIT_MAGNITUDE_COMPARATOR;

architecture Behavioral of ONE_BIT_MAGNITUDE_COMPARATOR is
begin
process (A, B)
begin
    C <= '0';
    D <= '0';
    E <= '0';

    if (A < B) then
        D <= '1';
    elsif (A > B) then
        C <= '1';
    else
        E <= '1';
    end if;
end process;
end Behavioral;
