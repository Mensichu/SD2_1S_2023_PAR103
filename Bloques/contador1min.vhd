library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador1min is
port(clock,resetn,Ld,En: in std_logic;
	Ent: in std_logic_vector(5 downto 0);
	Q: out std_logic_vector(5 downto 0));
	
end contador1min;
	
architecture desarrollo of contador1min is
signal temp: std_logic_vector(5 downto 0);
signal band: std_logic:='0';
begin
	process(En)
	begin
	if resetn='0' then temp<="000000";
	elsif(clock'event and clock='1') then
		if (Ld='1' and En='1') then temp<=Ent;
			elsif En='1' and band='0' then
				band<='1';
				if temp="111111" then temp<="000000";
					else temp<=temp+1;
					end if;
			elsif En='0' then
				band<='0';
		end if;
	end if;
	
	end process;
	Q<=temp;
end desarrollo;