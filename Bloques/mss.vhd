library ieee;
use ieee.std_logic_1164.all;

entity mss is
	Port( clock, reset, start: in std_logic;
	sensor_puerta,senal_1min,senal_10min,Clave_listo,Clave_correcto: in std_logic;
	Delay1_status,Delay2_status: in std_logic;
	reset_clave,Puerta: out std_logic;
	LdIncorr,EnIncorr: out std_logic;
	Estado_IN,Estado_PA,Estado_ER,Estado_AL: out std_logic;
	Delay1_on,Delay2_on: out std_logic);
end mss;

Architecture solucion of mss is
type estado is(Ta,Tb,Tc,Td,Te,Tf,Tg,Th,Ti,Tj,Tk,Tl);
Signal y: estado;
Begin
	Process(clock, reset)
	Begin
		if reset='0' then y<=Ta;
		elsif (clock'event and clock='1') then
			case y is
				when Ta=> 	if start='1' then y<=Tb;
								else y<=Ta;
								end if;
				when Tb=> 	if start='1' then y<=Tb;
								else y<=Tc;
								end if;
				when Tc=> 	if sensor_puerta='1' then y<=Tg;
								elsif senal_1min='1' then y<=Th;
								elsif senal_10min='1' then y<=Ti;
								elsif Clave_listo='1' then y<=Td;
								else y<=Tc;
								end if;
				when Td=>	if Clave_correcto='1' then y<=Tf;
								else y<=Te;
								end if;
				when Te=>	y<=Tj; --conteo de clave erronea
				when Tf=>	y<=Tk; --Abre la puerta
				when Tg=>	if sensor_puerta='1' then y<=Tg;
								else y<=Tc;
								end if;
				when Th=>	if senal_1min='1' then y<=Th;
								else y<=Tc;
								end if;
				when Ti=>	if senal_10min='1' then y<=Ti;
								else y<=Tc;
								end if;
				when Tj=>	if Delay1_status='1' then y<=Tj;
								else y<=Tl;
								end if;
				when Tk=>	if Delay2_status='1' then y<=Tk;
								else y<=Tl;
								end if;
				when Tl=>	y<=Tc;
			end case;
		end if;
	end Process;
	Process(y)
	Begin
		LdIncorr<='0';EnIncorr<='0';reset_clave<='0';Puerta<='0';
		Estado_IN<='0';Estado_PA<='0';Estado_ER<='0';Estado_AL<='0';
		Delay1_on<='0';Delay2_on<='0';
		case y is
			when Ta=>LdIncorr<='1';EnIncorr<='1';
			when Tb=>LdIncorr<='1';EnIncorr<='1';
			when Tc=>reset_clave<='1';Estado_IN<='1';
			when Td=>reset_clave<='1';
			when Te=>EnIncorr<='1';Delay1_on<='1';reset_clave<='1';
			when Tf=>LdIncorr<='1';EnIncorr<='1';Puerta<='1';Delay2_on<='1';reset_clave<='1';--Habilitar LdIncorr para resetear numero de intentos erroneos, una vez acabado la alarma de 1 min
			when Tg=>LdIncorr<='1';EnIncorr<='1';Estado_PA<='1';
			when Th=>LdIncorr<='1';EnIncorr<='1';Estado_ER<='1';
			when Ti=>LdIncorr<='1';EnIncorr<='1';Estado_AL<='1';reset_clave<='1';
			when Tj=>reset_clave<='1';
			when Tk=>reset_clave<='1';
			when Tl=>null;
		end case;
	end Process;
end solucion;