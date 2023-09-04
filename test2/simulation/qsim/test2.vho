-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "08/03/2023 11:54:26"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	Ld : IN std_logic;
	En : IN std_logic;
	Ent : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END contador;

ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_Ld : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_Ent : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Ld~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \Ent[0]~input_o\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \band~0_combout\ : std_logic;
SIGNAL \band~q\ : std_logic;
SIGNAL \temp[0]~1_combout\ : std_logic;
SIGNAL \Ent[1]~input_o\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \Ent[2]~input_o\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \Ent[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL temp : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_temp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_band~q\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ld~input_o\ : std_logic;
SIGNAL \ALT_INV_En~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_resetn~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Ent[3]~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_Ld <= Ld;
ww_En <= En;
ww_Ent <= Ent;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_temp(0) <= NOT temp(0);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(3) <= NOT temp(3);
\ALT_INV_band~q\ <= NOT \band~q\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Ld~input_o\ <= NOT \Ld~input_o\;
\ALT_INV_En~input_o\ <= NOT \En~input_o\;
\ALT_INV_Ent[0]~input_o\ <= NOT \Ent[0]~input_o\;
\ALT_INV_resetn~input_o\ <= NOT \resetn~input_o\;
\ALT_INV_Ent[1]~input_o\ <= NOT \Ent[1]~input_o\;
\ALT_INV_Ent[2]~input_o\ <= NOT \Ent[2]~input_o\;
\ALT_INV_Ent[3]~input_o\ <= NOT \Ent[3]~input_o\;

\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\Ld~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ld,
	o => \Ld~input_o\);

\En~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

\Ent[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent(0),
	o => \Ent[0]~input_o\);

\temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (!\Ld~input_o\ & (!temp(0))) # (\Ld~input_o\ & ((!\En~input_o\ & (!temp(0))) # (\En~input_o\ & ((\Ent[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101011101010001010101110101000101010111010100010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	datab => \ALT_INV_Ld~input_o\,
	datac => \ALT_INV_En~input_o\,
	datad => \ALT_INV_Ent[0]~input_o\,
	combout => \temp~0_combout\);

\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

\band~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \band~0_combout\ = (!\resetn~input_o\ & (((\band~q\)))) # (\resetn~input_o\ & (\En~input_o\ & ((!\Ld~input_o\) # (\band~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110011000000101111001100000010111100110000001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ld~input_o\,
	datab => \ALT_INV_En~input_o\,
	datac => \ALT_INV_resetn~input_o\,
	datad => \ALT_INV_band~q\,
	combout => \band~0_combout\);

band : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \band~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \band~q\);

\temp[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp[0]~1_combout\ = (\En~input_o\ & ((!\band~q\) # (\Ld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ld~input_o\,
	datab => \ALT_INV_En~input_o\,
	datac => \ALT_INV_band~q\,
	combout => \temp[0]~1_combout\);

\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \temp~0_combout\,
	clrn => \resetn~input_o\,
	ena => \temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

\Ent[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent(1),
	o => \Ent[1]~input_o\);

\temp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = ( \Ent[1]~input_o\ & ( (!\Ld~input_o\ & (!temp(0) $ ((!temp(1))))) # (\Ld~input_o\ & ((!temp(0) $ (!temp(1))) # (\En~input_o\))) ) ) # ( !\Ent[1]~input_o\ & ( (!\Ld~input_o\ & (!temp(0) $ ((!temp(1))))) # (\Ld~input_o\ & (!\En~input_o\ 
-- & (!temp(0) $ (!temp(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100000011001100110111101100110011000000110011001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	datab => ALT_INV_temp(1),
	datac => \ALT_INV_Ld~input_o\,
	datad => \ALT_INV_En~input_o\,
	datae => \ALT_INV_Ent[1]~input_o\,
	combout => \temp~2_combout\);

\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \temp~2_combout\,
	clrn => \resetn~input_o\,
	ena => \temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

\Ent[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent(2),
	o => \Ent[2]~input_o\);

\temp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = ( \En~input_o\ & ( \Ent[2]~input_o\ & ( (!temp(2) $ (((!temp(0)) # (!temp(1))))) # (\Ld~input_o\) ) ) ) # ( !\En~input_o\ & ( \Ent[2]~input_o\ & ( !temp(2) $ (((!temp(0)) # (!temp(1)))) ) ) ) # ( \En~input_o\ & ( !\Ent[2]~input_o\ & ( 
-- (!\Ld~input_o\ & (!temp(2) $ (((!temp(0)) # (!temp(1)))))) ) ) ) # ( !\En~input_o\ & ( !\Ent[2]~input_o\ & ( !temp(2) $ (((!temp(0)) # (!temp(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100000000000011110000111100001111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	datab => ALT_INV_temp(1),
	datac => ALT_INV_temp(2),
	datad => \ALT_INV_Ld~input_o\,
	datae => \ALT_INV_En~input_o\,
	dataf => \ALT_INV_Ent[2]~input_o\,
	combout => \temp~3_combout\);

\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \temp~3_combout\,
	clrn => \resetn~input_o\,
	ena => \temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

\Ent[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent(3),
	o => \Ent[3]~input_o\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = !temp(3) $ (((!temp(0)) # ((!temp(1)) # (!temp(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(0),
	datab => ALT_INV_temp(1),
	datac => ALT_INV_temp(2),
	datad => ALT_INV_temp(3),
	combout => \Add0~0_combout\);

\temp~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (!\Ld~input_o\ & (((\Add0~0_combout\)))) # (\Ld~input_o\ & ((!\En~input_o\ & ((\Add0~0_combout\))) # (\En~input_o\ & (\Ent[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Ld~input_o\,
	datab => \ALT_INV_En~input_o\,
	datac => \ALT_INV_Ent[3]~input_o\,
	datad => \ALT_INV_Add0~0_combout\,
	combout => \temp~4_combout\);

\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \temp~4_combout\,
	clrn => \resetn~input_o\,
	ena => \temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


