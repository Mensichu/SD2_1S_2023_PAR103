library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparador10min is
port(A: in std_logic_vector(9 downto 0);
	B: in std_logic_vector(9 downto 0);
	A_Mayor_B,A_Menor_B,A_Igual_B: out std_logic);
	
end comparador10min;
	
architecture desarrollo of comparador10min is
signal temp: std_logic_vector(9 downto 0);
begin
	process(A,B)
	begin
	if A>B then A_Mayor_B<='1'; else A_Mayor_B<='0'; end if;
	if A<B then A_Menor_B<='1'; else A_Menor_B<='0'; end if;
	if A=B then A_Igual_B<='1'; else A_Igual_B<='0'; end if;
	end process;
end desarrollo;