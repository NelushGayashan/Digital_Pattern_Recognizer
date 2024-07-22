library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity end_p is
    Port ( A : in  STD_LOGIC;
           dout : in  STD_LOGIC;
           S : out  STD_LOGIC);
end end_p;

architecture Behavioral of end_p is
    signal D : STD_LOGIC;
begin
process (A, dout)
begin
    if (dout = '1') then
        S <= A;
        D <= A;
    else
        S <= D;
    end if;
end process;
end Behavioral;
