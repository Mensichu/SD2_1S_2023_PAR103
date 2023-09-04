library ieee;
use ieee.std_logic_1164.all;

entity RegistroSostenimiento4Bits is
    port (
        clk,resetn: in std_logic;
        en: in std_logic;
        data_in: in std_logic_vector(3 downto 0);
        data_out1: out std_logic_vector(3 downto 0);
		  data_out2: out std_logic_vector(3 downto 0);
		  data_out3: out std_logic_vector(3 downto 0);
		  data_out4: out std_logic_vector(3 downto 0);
		  listo: out std_logic
    );
end RegistroSostenimiento4Bits;

architecture Behavioral of RegistroSostenimiento4Bits is
    signal reg_data1: std_logic_vector(3 downto 0) := (others => '0');
	 signal reg_data2: std_logic_vector(3 downto 0) := (others => '0');
	 signal reg_data3: std_logic_vector(3 downto 0) := (others => '0');
	 signal reg_data4: std_logic_vector(3 downto 0) := (others => '0');
	 signal n : integer := 0;
	 signal band : std_logic:='0';

begin
    process(clk)
    begin
        if resetn='0' then
			reg_data1<="0000";
			reg_data2<="0000";
			reg_data3<="0000";
			reg_data4<="0000";
			listo<='0';
			band<='0';
			n<=0;
		  elsif rising_edge(clk) then
				if band='0' then
					if en = '1' and n=0 then
						n<=n+1;
						reg_data1 <= data_in; -- Almacenar los datos de entrada en el registro
						listo<='0';
					elsif en = '1' and n=1 then
						n<=n+1;
						reg_data2 <= data_in; -- Almacenar los datos de entrada en el registro
						listo<='0';
					elsif en = '1' and n=2 then
						n<=n+1;
						reg_data3 <= data_in; -- Almacenar los datos de entrada en el registro
						listo<='0';
					elsif en = '1' and n=3 then
						n<=0;
						reg_data4 <= data_in; -- Almacenar los datos de entrada en el registro
						listo<='1';
						band<='1';
					end if;
				end if;
            
        end if;
    end process;

    data_out1 <= reg_data1; -- La salida toma el valor del registro
	 data_out2 <= reg_data2; -- La salida toma el valor del registro
	 data_out3 <= reg_data3; -- La salida toma el valor del registro
	 data_out4 <= reg_data4; -- La salida toma el valor del registro
end Behavioral;