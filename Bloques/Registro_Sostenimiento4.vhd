--Código de un registro de sostenimiento para cuatro datos, permite compactar los 4 registros anteriormente usados en uno. Doménica Jael Llanos Vélez
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro_Sostenimiento4 is
    Port ( clk, resetn : in  STD_LOGIC;
           En : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR(3 downto 0);
           O1 : out  STD_LOGIC_VECTOR(3 downto 0);
           O2 : out  STD_LOGIC_VECTOR(3 downto 0);
           O3 : out  STD_LOGIC_VECTOR(3 downto 0);
           O4 : out  STD_LOGIC_VECTOR(3 downto 0);
			  listo: out std_logic);
end Registro_Sostenimiento4;

architecture Behavioral of Registro_Sostenimiento4 is
    signal reg_1 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal reg_2 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal reg_3 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal reg_4 : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	 signal temp_var : integer := 0;
	 signal Band : std_logic:='0';
	 signal BandListo : std_logic:='0';
begin
	process(clk,resetn)
	begin
		if resetn='0' then 
			reg_1<="0000";
			reg_2<="0000";
			reg_3<="0000";
			reg_4<="0000";
			BandListo<='0';
			Band<='0';
			temp_var<=0;
		elsif(clk' event and clk='0') then
			if Band='0' and En = '1' then
				Band<='1';
				BandListo<='0';
				if temp_var=0 then
					reg_1<= data_in;
				elsif temp_var=1 then
					reg_2<= data_in;
				elsif temp_var=2 then
					reg_3<= data_in;
				elsif temp_var=3 then
					reg_4<= data_in;
					BandListo<='1';
				end if;
				
				if temp_var <= 2 then
					temp_var <= temp_var + 1;
				else
					temp_var <=0;
					
				end if;
			elsif En='0' then
				Band<='0';
			end if;
		end if;
		end process;
	 	 	 
    O1 <= reg_1;
    O2 <= reg_2;
    O3 <= reg_3;
    O4 <= reg_4;
	 Listo <= BandListo;
end Behavioral;
