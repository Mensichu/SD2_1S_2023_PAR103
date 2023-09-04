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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/03/2023 11:54:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL En : STD_LOGIC;
SIGNAL Ent : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Ld : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
COMPONENT contador
	PORT (
	clock : IN STD_LOGIC;
	En : IN STD_LOGIC;
	Ent : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Ld : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	En => En,
	Ent => Ent,
	Ld => Ld,
	Q => Q,
	resetn => resetn
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Ld
t_prcs_Ld: PROCESS
BEGIN
	Ld <= '0';
WAIT;
END PROCESS t_prcs_Ld;

-- En
t_prcs_En: PROCESS
BEGIN
LOOP
	En <= '0';
	WAIT FOR 100000 ps;
	En <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_En;
-- Ent[3]
t_prcs_Ent_3: PROCESS
BEGIN
	Ent(3) <= '0';
WAIT;
END PROCESS t_prcs_Ent_3;
-- Ent[2]
t_prcs_Ent_2: PROCESS
BEGIN
	Ent(2) <= '0';
WAIT;
END PROCESS t_prcs_Ent_2;
-- Ent[1]
t_prcs_Ent_1: PROCESS
BEGIN
	Ent(1) <= '0';
WAIT;
END PROCESS t_prcs_Ent_1;
-- Ent[0]
t_prcs_Ent_0: PROCESS
BEGIN
	Ent(0) <= '0';
WAIT;
END PROCESS t_prcs_Ent_0;
END contador_arch;
