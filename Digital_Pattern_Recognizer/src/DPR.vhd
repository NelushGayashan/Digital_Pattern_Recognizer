library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DPR is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : out  STD_LOGIC);
end DPR;

architecture structure of DPR is
    signal Aout, Bout : std_logic;

    component ONE_BIT_MAGNITUDE_COMPARATOR
        port ( A, B : in std_logic;
               C, D, E : out std_logic);
    end component;

    component Non_Overlapping_Moore_111
        port ( clk : in STD_LOGIC;
               din : in STD_LOGIC;
               rst : in STD_LOGIC;
               dout : out STD_LOGIC);
    end component;

    component end_p
        port ( A : in  STD_LOGIC;
               dout : in  STD_LOGIC;
               S : out  STD_LOGIC);
    end component;

begin
    u1: ONE_BIT_MAGNITUDE_COMPARATOR port map (A => A, B => B, E => Aout);
    u2: Non_Overlapping_Moore_111 port map (din => Aout, clk => clk, rst => rst, dout => Bout);
    u3: end_p port map ( A => A, dout => Bout, S => S);
end structure;
