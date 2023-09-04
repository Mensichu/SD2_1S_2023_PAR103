library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
    port (
        J, K, CLK, RESET : in std_logic;
        Q, Q_BAR : out std_logic
    );
end entity FlipFlopJK;

architecture Behavioral of FlipFlopJK is
    signal Q_temp : std_logic := '0';
begin
    process (CLK, RESET)
    begin
        if RESET = '0' then
            Q_temp <= '0';  -- Reset, pasa a 0
        elsif (CLK'event and CLK='1') then
            if J = '0' and K = '0' then
                -- Mantener el estado actual
                Q_temp <= Q_temp;
            elsif J = '0' and K = '1' then
                -- Forzar a 0
                Q_temp <= '0';
            elsif J = '1' and K = '0' then
                -- Forzar a 1
                Q_temp <= '1';
            elsif J = '1' and K = '1' then
                -- Cambiar con J-K Toggle
                Q_temp <= not Q_temp;
            end if;
        end if;
    end process;

    Q <= Q_temp;
    Q_BAR <= not Q_temp;
end architecture Behavioral;