
--Código del comparador de 4 números con 3,5,7,9. Doménica Jael Llanos Vélez
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Validacion is
    Port ( in1 : in  STD_LOGIC_VECTOR(3 downto 0);
           in2 : in  STD_LOGIC_VECTOR(3 downto 0);
           in3 : in  STD_LOGIC_VECTOR(3 downto 0);
           in4 : in  STD_LOGIC_VECTOR(3 downto 0);
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
           S3 : out  STD_LOGIC;
           S4 : out  STD_LOGIC);
end Validacion;

architecture Behavioral of Validacion is
begin
    process(in1, in2, in3, in4)
    begin
        if in1 = "0011" then S1 <= '1' ;else S1<='0'; end if;--3
        if in2 = "0101" then S2 <= '1' ;else S2<='0'; end if;--5
        if in3 = "0111" then S3 <= '1' ;else S3<='0'; end if;--7
        if in4 = "1001" then S4 <= '1' ;else S4<='0'; end if;--9
    end process;
end Behavioral;
