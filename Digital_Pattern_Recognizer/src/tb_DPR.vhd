LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_DPR IS
END tb_DPR;

ARCHITECTURE structural OF tb_DPR IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DPR
    PORT(
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            rst : in  STD_LOGIC;
            clk : in  STD_LOGIC;
            S : out  STD_LOGIC);
    END COMPONENT;

    -- Inputs and Outputs
    signal clk : std_logic := '0';
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal rst : std_logic := '0';
    signal S : std_logic := '0';

    -- Clock period definitions
    constant clk_period : time := 25 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: DPR PORT MAP (
        clk => clk,
        A => A,
        B => B,
        rst => rst,
        S => S
    );

    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period;
        clk <= '1';
        wait for clk_period;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        rst <= '1';
        wait for 0 ns;
        rst <= '0';

        A <= '0';
        B <= '0';
        wait for 25 ns;
        A <= '0';
        B <= '0';
        wait for 25 ns;
        A <= '0';
        B <= '0';
        wait for 25 ns;
        A <= '0';
        B <= '1';
        wait for 25 ns;
        A <= '1';
        B <= '0';
        wait for 25 ns;
        A <= '0';
        B <= '1';
        wait for 25 ns;
        A <= '1';
        B <= '0';
        wait for 25 ns;
        A <= '1';
        B <= '1';
        wait for 25 ns;
        A <= '1';
        B <= '1';
        wait for 25 ns;
        A <= '1';
        B <= '1';
        wait for 25 ns;

        wait;
    end process;

END structural;
