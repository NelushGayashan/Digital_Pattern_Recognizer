library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Non_Overlapping_Moore_111 is
    Port ( clk : in STD_LOGIC;
           din : in STD_LOGIC;
           rst : in STD_LOGIC;
           dout : out STD_LOGIC);
end Non_Overlapping_Moore_111;

architecture Behavioral of Non_Overlapping_Moore_111 is
    type state is (st0, st1, st2, st3);
    signal present_state, next_state : state;
begin

synchronous_process: process (clk)
begin
    if rising_edge(clk) then
        if (rst = '1') then
            present_state <= st0;
        else
            present_state <= next_state;
        end if;
    end if;
end process;

output_decoder : process(present_state, din)
begin
    next_state <= st0;
    case (present_state) is
        when st0 =>
            if (din = '1') then
                next_state <= st1;
            else
                next_state <= st0;
            end if;
        when st1 =>
            if (din = '1') then
                next_state <= st2;
            else
                next_state <= st0;
            end if;
        when st2 =>
            if (din = '1') then
                next_state <= st3;
            else
                next_state <= st0;
            end if;
        when st3 =>
            if (din = '1') then
                next_state <= st0;
            else
                next_state <= st0;
            end if;
        when others =>
            next_state <= st0;
    end case;
end process;

next_state_decoder : process(present_state)
begin
    case (present_state) is
        when st0 => dout <= '0';
        when st1 => dout <= '0';
        when st2 => dout <= '0';
        when st3 => dout <= '1';
        when others => dout <= '0';
    end case;
end process;
end Behavioral;
