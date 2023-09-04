library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity clock_div_50_mhz is
port (
	clk50mhz: 	in STD_LOGIC;
	clk_1hz:		out STD_LOGIC
);
end clock_div_50_mhz;

architecture rtl of clock_div_50_mhz is
	constant max_count: INTEGER := 25000000;
	signal count: INTEGER range 0 to max_count;
	signal clk_state: STD_LOGIC := '0';
	
begin
	gen_clock: process(clk50mhz, clk_state, count)
	begin
		if clk50mhz'event and clk50mhz='1' then
			if count < max_count then 
				count <= count+1;
			else
				clk_state <= not clk_state;
				count <= 0;
			end if;
		end if;
	end process;
	
	persecond: process (clk_state)
	begin
		clk_1hz <= clk_state;
	end process;
	
end rtl;