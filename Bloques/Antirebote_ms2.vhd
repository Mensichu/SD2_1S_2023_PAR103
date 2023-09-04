library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Antirebote_ms2 is
    port (
        clk,resetn: in std_logic;
		  tecl_in: in std_logic_vector(3 downto 0);
		  salida: out std_logic;
		  presionando: out std_logic;
        tecl_out: out std_logic_vector(3 downto 0)
    );
end Antirebote_ms2;

architecture Behavioral of Antirebote_ms2 is
    signal contador: natural := 0;
    signal activo: boolean := false;

begin
    process(clk)
    begin
		  if resetn='0' then
				contador <= 0;  
            activo <= false; 
				salida<='0';
				presionando<='0';
				tecl_out<= "1111";
        elsif falling_edge(clk) then
            if tecl_in /= "1111" then
                contador <= 0;  -- Reiniciar el contador si la entrada está activa
                activo <= true; -- Activar la bandera "activo"
            end if;

            if activo = true then
					 if contador = 3 then
                    contador <= contador + 1; -- Incrementar el contador
                    tecl_out<= tecl_in;
						  salida<='1';
						  presionando<='0';
					 elsif contador < 3 then
                    contador <= contador + 1; -- Incrementar el contador
                    tecl_out<= tecl_in;
						  salida<='0';
						  presionando<='0';
					 elsif contador < 25000000 then
                    contador <= contador + 1; -- Incrementar el contador
                    tecl_out<= tecl_in;
						  salida<='0';
						  presionando<='1';
                else
                    activo <= false;          -- Desactivar la bandera "activo" después de 4 pulsos
                    tecl_out<= "1111";
						  salida<='0';
						  presionando<='0';
                end if;
            else
                contador <= 0;  -- Reiniciar el contador si la entrada está inactiva
                tecl_out<= "1111";
					 salida<='0';
					 presionando<='0';
            end if;
				
        end if;
    end process;
end Behavioral;