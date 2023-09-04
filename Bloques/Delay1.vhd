library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Delay1 is
    port (
        clk,resetn: in std_logic;
		  entrada: in std_logic;
		  salida: out std_logic
    );
end Delay1;

architecture Behavioral of Delay1 is
    signal contador: natural := 0;
    signal activo: boolean := false;

begin
    process(clk)
    begin
		  if resetn='0' then
				contador <= 0;  
            activo <= false; 
				salida<='0';
        elsif falling_edge(clk) then
            if entrada='1' then
                contador <= 0;  -- Reiniciar el contador si la entrada está activa
                activo <= true; -- Activar la bandera "activo"
            end if;

            if activo = true then
					 if contador < 25000000 then
                    contador <= contador + 1; -- Incrementar el contador
						  salida<='1';
                else
                    activo <= false;          -- Desactivar la bandera "activo" después de n pulsos
						  salida<='0';
                end if;
            else
                contador <= 0;  -- Reiniciar el contador si la entrada está inactiva
					 salida<='0';
            end if;
				
        end if;
    end process;
end Behavioral;