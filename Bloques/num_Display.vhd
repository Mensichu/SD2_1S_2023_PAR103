library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity num_Display is
port(
	BCD: in std_logic_vector (3 downto 0);
	SEG: out std_logic_vector (6 downto 0));
end num_Display;

architecture behavioral of num_Display is
begin
process (BCD)
begin 
	if BCD="0000" then--0
		SEG<="1000000";
		
	elsif BCD="0001" then--1
		SEG<="1111001";
		
	elsif BCD="0010" then--2
		SEG<="0100100";
		
	elsif BCD="0011" then--3
		SEG<="0110000";
		
	elsif BCD="0100" then--4
		SEG<="0011001";
		
	elsif BCD="0101" then--5
		SEG<="0010010";
		
	elsif BCD="0110" then--6
		SEG<="0000010";
		
	elsif BCD="0111" then--7
		SEG<="1111000";
		
	elsif BCD="1000" then--8
		SEG<="0000000";
		
	elsif BCD="1001" then--9
		SEG<="0011000";
		
	else 
		SEG<="1111110";
	end if;
end process;
end behavioral;
		