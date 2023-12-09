-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/29/2023 21:08:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	RO_TRNG IS
    PORT (
	trn : OUT std_logic_vector(20 DOWNTO 0);
	reset : IN std_logic;
	sample : IN std_logic;
	clk : IN std_logic
	);
END RO_TRNG;

-- Design Ports Information
-- trn[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[10]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[11]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[12]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[13]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[15]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[16]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[17]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[18]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[19]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trn[20]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RO_TRNG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_trn : std_logic_vector(20 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_sample : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sample~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|int_osc_0|wire_sd1_clkout\ : std_logic;
SIGNAL \ring[20]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ring[18]~5_combout\ : std_logic;
SIGNAL \ring[14]~4_combout\ : std_logic;
SIGNAL \ring[9]~3_combout\ : std_logic;
SIGNAL \ring[6]~2_combout\ : std_logic;
SIGNAL \ring[5]~1_combout\ : std_logic;
SIGNAL \ring[1]~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ring2[20]~10_combout\ : std_logic;
SIGNAL \ring2[19]~9_combout\ : std_logic;
SIGNAL \ring2[16]~8_combout\ : std_logic;
SIGNAL \ring2[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ring2[10]~7_combout\ : std_logic;
SIGNAL \ring2[9]~feeder_combout\ : std_logic;
SIGNAL \ring2[8]~6_combout\ : std_logic;
SIGNAL \ring2[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ring2[7]~5_combout\ : std_logic;
SIGNAL \ring2[5]~4_combout\ : std_logic;
SIGNAL \ring2[4]~3_combout\ : std_logic;
SIGNAL \ring2[3]~2_combout\ : std_logic;
SIGNAL \ring2[1]~1_combout\ : std_logic;
SIGNAL \ring2[0]~0_combout\ : std_logic;
SIGNAL \trn~0_combout\ : std_logic;
SIGNAL \trn[0]$latch~combout\ : std_logic;
SIGNAL \ring2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~1_combout\ : std_logic;
SIGNAL \trn[1]$latch~combout\ : std_logic;
SIGNAL \trn~2_combout\ : std_logic;
SIGNAL \trn[2]$latch~combout\ : std_logic;
SIGNAL \ring2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~3_combout\ : std_logic;
SIGNAL \trn[3]$latch~combout\ : std_logic;
SIGNAL \trn~4_combout\ : std_logic;
SIGNAL \trn[4]$latch~combout\ : std_logic;
SIGNAL \trn~5_combout\ : std_logic;
SIGNAL \trn[5]$latch~combout\ : std_logic;
SIGNAL \ring2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~6_combout\ : std_logic;
SIGNAL \trn[6]$latch~combout\ : std_logic;
SIGNAL \ring2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~7_combout\ : std_logic;
SIGNAL \trn[7]$latch~combout\ : std_logic;
SIGNAL \trn~8_combout\ : std_logic;
SIGNAL \trn[8]$latch~combout\ : std_logic;
SIGNAL \ring2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~9_combout\ : std_logic;
SIGNAL \trn[9]$latch~combout\ : std_logic;
SIGNAL \ring2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~10_combout\ : std_logic;
SIGNAL \trn[10]$latch~combout\ : std_logic;
SIGNAL \trn~11_combout\ : std_logic;
SIGNAL \trn[11]$latch~combout\ : std_logic;
SIGNAL \trn~12_combout\ : std_logic;
SIGNAL \trn[12]$latch~combout\ : std_logic;
SIGNAL \trn~13_combout\ : std_logic;
SIGNAL \trn[13]$latch~combout\ : std_logic;
SIGNAL \ring2[14]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~14_combout\ : std_logic;
SIGNAL \trn[14]$latch~combout\ : std_logic;
SIGNAL \trn~15_combout\ : std_logic;
SIGNAL \trn[15]$latch~combout\ : std_logic;
SIGNAL \trn~16_combout\ : std_logic;
SIGNAL \trn[16]$latch~combout\ : std_logic;
SIGNAL \ring2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~17_combout\ : std_logic;
SIGNAL \trn[17]$latch~combout\ : std_logic;
SIGNAL \trn~18_combout\ : std_logic;
SIGNAL \trn[18]$latch~combout\ : std_logic;
SIGNAL \ring2[19]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~19_combout\ : std_logic;
SIGNAL \trn[19]$latch~combout\ : std_logic;
SIGNAL \ring[20]~DUPLICATE_q\ : std_logic;
SIGNAL \trn~20_combout\ : std_logic;
SIGNAL \trn[20]$latch~combout\ : std_logic;
SIGNAL ring : std_logic_vector(20 DOWNTO 0);
SIGNAL ring2 : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_ring[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ring2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sample~input_o\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_trn[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_trn~20_combout\ : std_logic;
SIGNAL ALT_INV_ring2 : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_trn~19_combout\ : std_logic;
SIGNAL ALT_INV_ring : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_trn~18_combout\ : std_logic;
SIGNAL \ALT_INV_trn~17_combout\ : std_logic;
SIGNAL \ALT_INV_trn~16_combout\ : std_logic;
SIGNAL \ALT_INV_trn~15_combout\ : std_logic;
SIGNAL \ALT_INV_trn~14_combout\ : std_logic;
SIGNAL \ALT_INV_trn~13_combout\ : std_logic;
SIGNAL \ALT_INV_trn~12_combout\ : std_logic;
SIGNAL \ALT_INV_trn~11_combout\ : std_logic;
SIGNAL \ALT_INV_trn~10_combout\ : std_logic;
SIGNAL \ALT_INV_trn~9_combout\ : std_logic;
SIGNAL \ALT_INV_trn~8_combout\ : std_logic;
SIGNAL \ALT_INV_trn~7_combout\ : std_logic;
SIGNAL \ALT_INV_trn~6_combout\ : std_logic;
SIGNAL \ALT_INV_trn~5_combout\ : std_logic;
SIGNAL \ALT_INV_trn~4_combout\ : std_logic;
SIGNAL \ALT_INV_trn~3_combout\ : std_logic;
SIGNAL \ALT_INV_trn~2_combout\ : std_logic;
SIGNAL \ALT_INV_trn~1_combout\ : std_logic;
SIGNAL \ALT_INV_trn~0_combout\ : std_logic;

BEGIN

trn <= ww_trn;
ww_reset <= reset;
ww_sample <= sample;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ring[20]~DUPLICATE_q\ <= NOT \ring[20]~DUPLICATE_q\;
\ALT_INV_ring2[19]~DUPLICATE_q\ <= NOT \ring2[19]~DUPLICATE_q\;
\ALT_INV_ring2[17]~DUPLICATE_q\ <= NOT \ring2[17]~DUPLICATE_q\;
\ALT_INV_ring2[14]~DUPLICATE_q\ <= NOT \ring2[14]~DUPLICATE_q\;
\ALT_INV_ring2[10]~DUPLICATE_q\ <= NOT \ring2[10]~DUPLICATE_q\;
\ALT_INV_ring2[9]~DUPLICATE_q\ <= NOT \ring2[9]~DUPLICATE_q\;
\ALT_INV_ring2[8]~DUPLICATE_q\ <= NOT \ring2[8]~DUPLICATE_q\;
\ALT_INV_ring2[7]~DUPLICATE_q\ <= NOT \ring2[7]~DUPLICATE_q\;
\ALT_INV_ring2[6]~DUPLICATE_q\ <= NOT \ring2[6]~DUPLICATE_q\;
\ALT_INV_ring2[3]~DUPLICATE_q\ <= NOT \ring2[3]~DUPLICATE_q\;
\ALT_INV_ring2[1]~DUPLICATE_q\ <= NOT \ring2[1]~DUPLICATE_q\;
\ALT_INV_sample~input_o\ <= NOT \sample~input_o\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_trn[20]$latch~combout\ <= NOT \trn[20]$latch~combout\;
\ALT_INV_trn[19]$latch~combout\ <= NOT \trn[19]$latch~combout\;
\ALT_INV_trn[18]$latch~combout\ <= NOT \trn[18]$latch~combout\;
\ALT_INV_trn[17]$latch~combout\ <= NOT \trn[17]$latch~combout\;
\ALT_INV_trn[16]$latch~combout\ <= NOT \trn[16]$latch~combout\;
\ALT_INV_trn[15]$latch~combout\ <= NOT \trn[15]$latch~combout\;
\ALT_INV_trn[14]$latch~combout\ <= NOT \trn[14]$latch~combout\;
\ALT_INV_trn[13]$latch~combout\ <= NOT \trn[13]$latch~combout\;
\ALT_INV_trn[12]$latch~combout\ <= NOT \trn[12]$latch~combout\;
\ALT_INV_trn[11]$latch~combout\ <= NOT \trn[11]$latch~combout\;
\ALT_INV_trn[10]$latch~combout\ <= NOT \trn[10]$latch~combout\;
\ALT_INV_trn[9]$latch~combout\ <= NOT \trn[9]$latch~combout\;
\ALT_INV_trn[8]$latch~combout\ <= NOT \trn[8]$latch~combout\;
\ALT_INV_trn[7]$latch~combout\ <= NOT \trn[7]$latch~combout\;
\ALT_INV_trn[6]$latch~combout\ <= NOT \trn[6]$latch~combout\;
\ALT_INV_trn[5]$latch~combout\ <= NOT \trn[5]$latch~combout\;
\ALT_INV_trn[4]$latch~combout\ <= NOT \trn[4]$latch~combout\;
\ALT_INV_trn[3]$latch~combout\ <= NOT \trn[3]$latch~combout\;
\ALT_INV_trn[2]$latch~combout\ <= NOT \trn[2]$latch~combout\;
\ALT_INV_trn[1]$latch~combout\ <= NOT \trn[1]$latch~combout\;
\ALT_INV_trn[0]$latch~combout\ <= NOT \trn[0]$latch~combout\;
\ALT_INV_trn~20_combout\ <= NOT \trn~20_combout\;
ALT_INV_ring2(20) <= NOT ring2(20);
\ALT_INV_trn~19_combout\ <= NOT \trn~19_combout\;
ALT_INV_ring(19) <= NOT ring(19);
\ALT_INV_trn~18_combout\ <= NOT \trn~18_combout\;
ALT_INV_ring2(18) <= NOT ring2(18);
ALT_INV_ring(18) <= NOT ring(18);
\ALT_INV_trn~17_combout\ <= NOT \trn~17_combout\;
ALT_INV_ring2(17) <= NOT ring2(17);
ALT_INV_ring(17) <= NOT ring(17);
\ALT_INV_trn~16_combout\ <= NOT \trn~16_combout\;
ALT_INV_ring2(16) <= NOT ring2(16);
ALT_INV_ring(16) <= NOT ring(16);
\ALT_INV_trn~15_combout\ <= NOT \trn~15_combout\;
ALT_INV_ring2(15) <= NOT ring2(15);
ALT_INV_ring(15) <= NOT ring(15);
\ALT_INV_trn~14_combout\ <= NOT \trn~14_combout\;
ALT_INV_ring(14) <= NOT ring(14);
\ALT_INV_trn~13_combout\ <= NOT \trn~13_combout\;
ALT_INV_ring2(13) <= NOT ring2(13);
ALT_INV_ring(13) <= NOT ring(13);
\ALT_INV_trn~12_combout\ <= NOT \trn~12_combout\;
ALT_INV_ring2(12) <= NOT ring2(12);
ALT_INV_ring(12) <= NOT ring(12);
\ALT_INV_trn~11_combout\ <= NOT \trn~11_combout\;
ALT_INV_ring2(11) <= NOT ring2(11);
ALT_INV_ring(11) <= NOT ring(11);
\ALT_INV_trn~10_combout\ <= NOT \trn~10_combout\;
ALT_INV_ring2(10) <= NOT ring2(10);
ALT_INV_ring(10) <= NOT ring(10);
\ALT_INV_trn~9_combout\ <= NOT \trn~9_combout\;
ALT_INV_ring2(9) <= NOT ring2(9);
ALT_INV_ring(9) <= NOT ring(9);
\ALT_INV_trn~8_combout\ <= NOT \trn~8_combout\;
ALT_INV_ring2(8) <= NOT ring2(8);
ALT_INV_ring(8) <= NOT ring(8);
\ALT_INV_trn~7_combout\ <= NOT \trn~7_combout\;
ALT_INV_ring(7) <= NOT ring(7);
\ALT_INV_trn~6_combout\ <= NOT \trn~6_combout\;
ALT_INV_ring2(6) <= NOT ring2(6);
ALT_INV_ring(6) <= NOT ring(6);
\ALT_INV_trn~5_combout\ <= NOT \trn~5_combout\;
ALT_INV_ring2(5) <= NOT ring2(5);
ALT_INV_ring(5) <= NOT ring(5);
\ALT_INV_trn~4_combout\ <= NOT \trn~4_combout\;
ALT_INV_ring2(4) <= NOT ring2(4);
ALT_INV_ring(4) <= NOT ring(4);
\ALT_INV_trn~3_combout\ <= NOT \trn~3_combout\;
ALT_INV_ring(3) <= NOT ring(3);
\ALT_INV_trn~2_combout\ <= NOT \trn~2_combout\;
ALT_INV_ring2(2) <= NOT ring2(2);
ALT_INV_ring(2) <= NOT ring(2);
\ALT_INV_trn~1_combout\ <= NOT \trn~1_combout\;
ALT_INV_ring2(1) <= NOT ring2(1);
ALT_INV_ring(1) <= NOT ring(1);
\ALT_INV_trn~0_combout\ <= NOT \trn~0_combout\;
ALT_INV_ring2(0) <= NOT ring2(0);
ALT_INV_ring(0) <= NOT ring(0);

-- Location: IOOBUF_X52_Y0_N2
\trn[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(0));

-- Location: IOOBUF_X52_Y0_N19
\trn[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(1));

-- Location: IOOBUF_X60_Y0_N2
\trn[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(2));

-- Location: IOOBUF_X80_Y0_N2
\trn[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(3));

-- Location: IOOBUF_X60_Y0_N19
\trn[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(4));

-- Location: IOOBUF_X80_Y0_N19
\trn[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(5));

-- Location: IOOBUF_X84_Y0_N2
\trn[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(6));

-- Location: IOOBUF_X89_Y6_N5
\trn[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(7));

-- Location: IOOBUF_X89_Y8_N5
\trn[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(8));

-- Location: IOOBUF_X89_Y6_N22
\trn[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(9));

-- Location: IOOBUF_X34_Y0_N93
\trn[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(10));

-- Location: IOOBUF_X34_Y0_N59
\trn[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(11));

-- Location: IOOBUF_X38_Y0_N36
\trn[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(12));

-- Location: IOOBUF_X32_Y0_N36
\trn[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(13));

-- Location: IOOBUF_X32_Y0_N53
\trn[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(14));

-- Location: IOOBUF_X34_Y0_N76
\trn[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(15));

-- Location: IOOBUF_X34_Y0_N42
\trn[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[16]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(16));

-- Location: IOOBUF_X36_Y0_N36
\trn[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[17]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(17));

-- Location: IOOBUF_X38_Y0_N2
\trn[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[18]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(18));

-- Location: IOOBUF_X36_Y0_N53
\trn[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[19]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(19));

-- Location: IOOBUF_X38_Y0_N53
\trn[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trn[20]$latch~combout\,
	devoe => ww_devoe,
	o => ww_trn(20));

-- Location: IOIBUF_X36_Y0_N18
\sample~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample,
	o => \sample~input_o\);

-- Location: LABCELL_X1_Y2_N24
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: OSCILLATOR_X0_Y3_N5
\u0|int_osc_0|sd1\ : cyclonev_oscillator
PORT MAP (
	oscena => \ALT_INV_~GND~combout\,
	clkout => \u0|int_osc_0|wire_sd1_clkout\);

-- Location: LABCELL_X36_Y1_N21
\ring[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[20]~6_combout\ = !ring(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(0),
	combout => \ring[20]~6_combout\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X36_Y1_N23
\ring[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[20]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(20));

-- Location: FF_X36_Y1_N14
\ring[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(20),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(19));

-- Location: LABCELL_X36_Y1_N39
\ring[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[18]~5_combout\ = !ring(19)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ring(19),
	combout => \ring[18]~5_combout\);

-- Location: FF_X36_Y1_N53
\ring[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => \ring[18]~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(18));

-- Location: FF_X36_Y1_N50
\ring[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(18),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(17));

-- Location: FF_X35_Y1_N37
\ring[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(17),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(16));

-- Location: FF_X35_Y1_N56
\ring[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(16),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(15));

-- Location: LABCELL_X35_Y1_N18
\ring[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[14]~4_combout\ = !ring(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(15),
	combout => \ring[14]~4_combout\);

-- Location: FF_X35_Y1_N2
\ring[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => \ring[14]~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(14));

-- Location: FF_X35_Y1_N40
\ring[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(14),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(13));

-- Location: FF_X35_Y1_N5
\ring[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(13),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(12));

-- Location: FF_X35_Y1_N35
\ring[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(12),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(11));

-- Location: FF_X34_Y1_N14
\ring[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(11),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(10));

-- Location: MLABCELL_X34_Y1_N48
\ring[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[9]~3_combout\ = ( !ring(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring(10),
	combout => \ring[9]~3_combout\);

-- Location: FF_X34_Y1_N49
\ring[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[9]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(9));

-- Location: FF_X35_Y1_N32
\ring[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(9),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(8));

-- Location: FF_X36_Y1_N17
\ring[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(8),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(7));

-- Location: LABCELL_X36_Y1_N54
\ring[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[6]~2_combout\ = ( !ring(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring(7),
	combout => \ring[6]~2_combout\);

-- Location: FF_X36_Y1_N56
\ring[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[6]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(6));

-- Location: LABCELL_X37_Y1_N3
\ring[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[5]~1_combout\ = ( !ring(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring(6),
	combout => \ring[5]~1_combout\);

-- Location: FF_X37_Y1_N5
\ring[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[5]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(5));

-- Location: FF_X37_Y1_N17
\ring[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(5),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(4));

-- Location: FF_X37_Y1_N37
\ring[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(4),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(3));

-- Location: FF_X37_Y1_N41
\ring[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(3),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(2));

-- Location: LABCELL_X37_Y1_N24
\ring[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring[1]~0_combout\ = ( !ring(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring(2),
	combout => \ring[1]~0_combout\);

-- Location: FF_X37_Y1_N26
\ring[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(1));

-- Location: FF_X37_Y1_N59
\ring[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	asdata => ring(1),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring(0));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y1_N33
\ring2[20]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[20]~10_combout\ = ( !ring2(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(0),
	combout => \ring2[20]~10_combout\);

-- Location: FF_X37_Y1_N34
\ring2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[20]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(20));

-- Location: LABCELL_X36_Y1_N33
\ring2[19]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[19]~9_combout\ = ( !ring2(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(20),
	combout => \ring2[19]~9_combout\);

-- Location: FF_X36_Y1_N35
\ring2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[19]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(19));

-- Location: FF_X36_Y1_N41
\ring2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(19),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(18));

-- Location: FF_X36_Y1_N47
\ring2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(18),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(17));

-- Location: LABCELL_X35_Y1_N21
\ring2[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[16]~8_combout\ = ( !ring2(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(17),
	combout => \ring2[16]~8_combout\);

-- Location: FF_X35_Y1_N23
\ring2[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[16]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[16]~DUPLICATE_q\);

-- Location: FF_X35_Y1_N20
\ring2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ring2[16]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(15));

-- Location: FF_X35_Y1_N10
\ring2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(15),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(14));

-- Location: FF_X35_Y1_N17
\ring2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(14),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(13));

-- Location: FF_X35_Y1_N44
\ring2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(13),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(12));

-- Location: FF_X35_Y1_N26
\ring2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(12),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(11));

-- Location: MLABCELL_X34_Y1_N30
\ring2[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[10]~7_combout\ = ( !ring2(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(11),
	combout => \ring2[10]~7_combout\);

-- Location: FF_X34_Y1_N32
\ring2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[10]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(10));

-- Location: MLABCELL_X34_Y1_N36
\ring2[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[9]~feeder_combout\ = ( ring2(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(10),
	combout => \ring2[9]~feeder_combout\);

-- Location: FF_X34_Y1_N37
\ring2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(9));

-- Location: LABCELL_X35_Y1_N51
\ring2[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[8]~6_combout\ = ( !ring2(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(9),
	combout => \ring2[8]~6_combout\);

-- Location: FF_X35_Y1_N52
\ring2[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[8]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[8]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N27
\ring2[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[7]~5_combout\ = ( !\ring2[8]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ring2[8]~DUPLICATE_q\,
	combout => \ring2[7]~5_combout\);

-- Location: FF_X36_Y1_N29
\ring2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[7]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(7));

-- Location: FF_X36_Y1_N8
\ring2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(6));

-- Location: LABCELL_X36_Y1_N3
\ring2[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[5]~4_combout\ = !ring2(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring2(6),
	combout => \ring2[5]~4_combout\);

-- Location: FF_X36_Y1_N4
\ring2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[5]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(5));

-- Location: LABCELL_X37_Y1_N42
\ring2[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[4]~3_combout\ = ( !ring2(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(5),
	combout => \ring2[4]~3_combout\);

-- Location: FF_X37_Y1_N43
\ring2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[4]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(4));

-- Location: LABCELL_X37_Y1_N48
\ring2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[3]~2_combout\ = ( !ring2(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(4),
	combout => \ring2[3]~2_combout\);

-- Location: FF_X37_Y1_N50
\ring2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(3));

-- Location: FF_X37_Y1_N8
\ring2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(3),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(2));

-- Location: LABCELL_X37_Y1_N18
\ring2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[1]~1_combout\ = ( !ring2(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(2),
	combout => \ring2[1]~1_combout\);

-- Location: FF_X37_Y1_N19
\ring2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(1));

-- Location: LABCELL_X37_Y1_N21
\ring2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ring2[0]~0_combout\ = ( !ring2(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_ring2(1),
	combout => \ring2[0]~0_combout\);

-- Location: FF_X37_Y1_N22
\ring2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(0));

-- Location: LABCELL_X37_Y1_N57
\trn~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~0_combout\ = ( ring2(0) & ( !ring(0) ) ) # ( !ring2(0) & ( ring(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(0),
	dataf => ALT_INV_ring2(0),
	combout => \trn~0_combout\);

-- Location: LABCELL_X37_Y1_N54
\trn[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[0]$latch~combout\ = ( \trn~0_combout\ & ( (!\sample~input_o\) # (\trn[0]$latch~combout\) ) ) # ( !\trn~0_combout\ & ( (\trn[0]$latch~combout\ & \sample~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_trn[0]$latch~combout\,
	datad => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~0_combout\,
	combout => \trn[0]$latch~combout\);

-- Location: FF_X37_Y1_N20
\ring2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N27
\trn~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~1_combout\ = ( \ring2[1]~DUPLICATE_q\ & ( !ring(1) ) ) # ( !\ring2[1]~DUPLICATE_q\ & ( ring(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(1),
	dataf => \ALT_INV_ring2[1]~DUPLICATE_q\,
	combout => \trn~1_combout\);

-- Location: LABCELL_X37_Y1_N12
\trn[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[1]$latch~combout\ = ( \trn~1_combout\ & ( (\trn[1]$latch~combout\ & \sample~input_o\) ) ) # ( !\trn~1_combout\ & ( (!\sample~input_o\) # (\trn[1]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trn[1]$latch~combout\,
	datad => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~1_combout\,
	combout => \trn[1]$latch~combout\);

-- Location: LABCELL_X37_Y1_N39
\trn~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~2_combout\ = ( ring2(2) & ( !ring(2) ) ) # ( !ring2(2) & ( ring(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(2),
	dataf => ALT_INV_ring2(2),
	combout => \trn~2_combout\);

-- Location: LABCELL_X37_Y1_N9
\trn[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[2]$latch~combout\ = ( \trn~2_combout\ & ( (\sample~input_o\ & \trn[2]$latch~combout\) ) ) # ( !\trn~2_combout\ & ( (!\sample~input_o\) # (\trn[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000110000001111001111110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample~input_o\,
	datac => \ALT_INV_trn[2]$latch~combout\,
	datae => \ALT_INV_trn~2_combout\,
	combout => \trn[2]$latch~combout\);

-- Location: FF_X37_Y1_N49
\ring2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[3]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[3]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N36
\trn~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~3_combout\ = ( \ring2[3]~DUPLICATE_q\ & ( !ring(3) ) ) # ( !\ring2[3]~DUPLICATE_q\ & ( ring(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(3),
	dataf => \ALT_INV_ring2[3]~DUPLICATE_q\,
	combout => \trn~3_combout\);

-- Location: LABCELL_X37_Y1_N51
\trn[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[3]$latch~combout\ = ( \trn[3]$latch~combout\ & ( (!\trn~3_combout\) # (\sample~input_o\) ) ) # ( !\trn[3]$latch~combout\ & ( (!\sample~input_o\ & !\trn~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn~3_combout\,
	dataf => \ALT_INV_trn[3]$latch~combout\,
	combout => \trn[3]$latch~combout\);

-- Location: LABCELL_X37_Y1_N15
\trn~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~4_combout\ = ( ring2(4) & ( !ring(4) ) ) # ( !ring2(4) & ( ring(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(4),
	dataf => ALT_INV_ring2(4),
	combout => \trn~4_combout\);

-- Location: LABCELL_X37_Y1_N45
\trn[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[4]$latch~combout\ = ( \trn~4_combout\ & ( (!\sample~input_o\) # (\trn[4]$latch~combout\) ) ) # ( !\trn~4_combout\ & ( (\sample~input_o\ & \trn[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn[4]$latch~combout\,
	dataf => \ALT_INV_trn~4_combout\,
	combout => \trn[4]$latch~combout\);

-- Location: LABCELL_X36_Y1_N57
\trn~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~5_combout\ = ( ring2(5) & ( !ring(5) ) ) # ( !ring2(5) & ( ring(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ring(5),
	dataf => ALT_INV_ring2(5),
	combout => \trn~5_combout\);

-- Location: LABCELL_X36_Y1_N51
\trn[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[5]$latch~combout\ = ( \trn~5_combout\ & ( (\trn[5]$latch~combout\ & \sample~input_o\) ) ) # ( !\trn~5_combout\ & ( (!\sample~input_o\) # (\trn[5]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_trn[5]$latch~combout\,
	datac => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~5_combout\,
	combout => \trn[5]$latch~combout\);

-- Location: FF_X36_Y1_N7
\ring2[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(7),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N24
\trn~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~6_combout\ = ( \ring2[6]~DUPLICATE_q\ & ( !ring(6) ) ) # ( !\ring2[6]~DUPLICATE_q\ & ( ring(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(6),
	dataf => \ALT_INV_ring2[6]~DUPLICATE_q\,
	combout => \trn~6_combout\);

-- Location: LABCELL_X36_Y1_N36
\trn[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[6]$latch~combout\ = (!\sample~input_o\ & (!\trn~6_combout\)) # (\sample~input_o\ & ((\trn[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110011110000001111001111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample~input_o\,
	datac => \ALT_INV_trn~6_combout\,
	datad => \ALT_INV_trn[6]$latch~combout\,
	combout => \trn[6]$latch~combout\);

-- Location: FF_X36_Y1_N28
\ring2[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[7]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N15
\trn~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~7_combout\ = ( \ring2[7]~DUPLICATE_q\ & ( !ring(7) ) ) # ( !\ring2[7]~DUPLICATE_q\ & ( ring(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(7),
	dataf => \ALT_INV_ring2[7]~DUPLICATE_q\,
	combout => \trn~7_combout\);

-- Location: LABCELL_X36_Y1_N0
\trn[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[7]$latch~combout\ = ( \trn~7_combout\ & ( (!\sample~input_o\) # (\trn[7]$latch~combout\) ) ) # ( !\trn~7_combout\ & ( (\sample~input_o\ & \trn[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn[7]$latch~combout\,
	dataf => \ALT_INV_trn~7_combout\,
	combout => \trn[7]$latch~combout\);

-- Location: FF_X35_Y1_N53
\ring2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[8]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(8));

-- Location: LABCELL_X35_Y1_N30
\trn~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~8_combout\ = !ring2(8) $ (!ring(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring2(8),
	datad => ALT_INV_ring(8),
	combout => \trn~8_combout\);

-- Location: LABCELL_X35_Y1_N42
\trn[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[8]$latch~combout\ = ( \trn~8_combout\ & ( (\sample~input_o\ & \trn[8]$latch~combout\) ) ) # ( !\trn~8_combout\ & ( (!\sample~input_o\) # (\trn[8]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn[8]$latch~combout\,
	dataf => \ALT_INV_trn~8_combout\,
	combout => \trn[8]$latch~combout\);

-- Location: FF_X34_Y1_N38
\ring2[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[9]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[9]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N27
\trn~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~9_combout\ = ( !ring(9) & ( \ring2[9]~DUPLICATE_q\ ) ) # ( ring(9) & ( !\ring2[9]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_ring(9),
	dataf => \ALT_INV_ring2[9]~DUPLICATE_q\,
	combout => \trn~9_combout\);

-- Location: MLABCELL_X34_Y1_N45
\trn[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[9]$latch~combout\ = ( \trn[9]$latch~combout\ & ( \trn~9_combout\ ) ) # ( !\trn[9]$latch~combout\ & ( \trn~9_combout\ & ( !\sample~input_o\ ) ) ) # ( \trn[9]$latch~combout\ & ( !\trn~9_combout\ & ( \sample~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sample~input_o\,
	datae => \ALT_INV_trn[9]$latch~combout\,
	dataf => \ALT_INV_trn~9_combout\,
	combout => \trn[9]$latch~combout\);

-- Location: FF_X34_Y1_N31
\ring2[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[10]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[10]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y1_N12
\trn~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~10_combout\ = ( !ring(10) & ( \ring2[10]~DUPLICATE_q\ ) ) # ( ring(10) & ( !\ring2[10]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_ring(10),
	dataf => \ALT_INV_ring2[10]~DUPLICATE_q\,
	combout => \trn~10_combout\);

-- Location: MLABCELL_X34_Y1_N21
\trn[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[10]$latch~combout\ = ( \trn[10]$latch~combout\ & ( \trn~10_combout\ & ( \sample~input_o\ ) ) ) # ( \trn[10]$latch~combout\ & ( !\trn~10_combout\ ) ) # ( !\trn[10]$latch~combout\ & ( !\trn~10_combout\ & ( !\sample~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sample~input_o\,
	datae => \ALT_INV_trn[10]$latch~combout\,
	dataf => \ALT_INV_trn~10_combout\,
	combout => \trn[10]$latch~combout\);

-- Location: LABCELL_X35_Y1_N3
\trn~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~11_combout\ = ( ring2(11) & ( !ring(11) ) ) # ( !ring2(11) & ( ring(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_ring(11),
	dataf => ALT_INV_ring2(11),
	combout => \trn~11_combout\);

-- Location: LABCELL_X35_Y1_N27
\trn[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[11]$latch~combout\ = ( \trn~11_combout\ & ( (!\sample~input_o\) # (\trn[11]$latch~combout\) ) ) # ( !\trn~11_combout\ & ( (\trn[11]$latch~combout\ & \sample~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_trn[11]$latch~combout\,
	datad => \ALT_INV_sample~input_o\,
	datae => \ALT_INV_trn~11_combout\,
	combout => \trn[11]$latch~combout\);

-- Location: LABCELL_X35_Y1_N57
\trn~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~12_combout\ = ( ring2(12) & ( !ring(12) ) ) # ( !ring2(12) & ( ring(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(12),
	dataf => ALT_INV_ring2(12),
	combout => \trn~12_combout\);

-- Location: LABCELL_X35_Y1_N45
\trn[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[12]$latch~combout\ = (!\sample~input_o\ & ((\trn~12_combout\))) # (\sample~input_o\ & (\trn[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample~input_o\,
	datac => \ALT_INV_trn[12]$latch~combout\,
	datad => \ALT_INV_trn~12_combout\,
	combout => \trn[12]$latch~combout\);

-- Location: LABCELL_X35_Y1_N39
\trn~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~13_combout\ = !ring2(13) $ (!ring(13))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring2(13),
	datad => ALT_INV_ring(13),
	combout => \trn~13_combout\);

-- Location: LABCELL_X35_Y1_N54
\trn[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[13]$latch~combout\ = ( \trn~13_combout\ & ( (!\sample~input_o\) # (\trn[13]$latch~combout\) ) ) # ( !\trn~13_combout\ & ( (\trn[13]$latch~combout\ & \sample~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trn[13]$latch~combout\,
	datac => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~13_combout\,
	combout => \trn[13]$latch~combout\);

-- Location: FF_X35_Y1_N11
\ring2[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(15),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[14]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y1_N12
\trn~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~14_combout\ = ( !ring(14) & ( \ring2[14]~DUPLICATE_q\ ) ) # ( ring(14) & ( !\ring2[14]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_ring(14),
	dataf => \ALT_INV_ring2[14]~DUPLICATE_q\,
	combout => \trn~14_combout\);

-- Location: LABCELL_X35_Y1_N48
\trn[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[14]$latch~combout\ = ( \trn~14_combout\ & ( (!\sample~input_o\) # (\trn[14]$latch~combout\) ) ) # ( !\trn~14_combout\ & ( (\trn[14]$latch~combout\ & \sample~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_trn[14]$latch~combout\,
	datad => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~14_combout\,
	combout => \trn[14]$latch~combout\);

-- Location: LABCELL_X35_Y1_N0
\trn~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~15_combout\ = ( ring2(15) & ( !ring(15) ) ) # ( !ring2(15) & ( ring(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(15),
	dataf => ALT_INV_ring2(15),
	combout => \trn~15_combout\);

-- Location: LABCELL_X35_Y1_N33
\trn[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[15]$latch~combout\ = ( \trn[15]$latch~combout\ & ( (!\trn~15_combout\) # (\sample~input_o\) ) ) # ( !\trn[15]$latch~combout\ & ( (!\sample~input_o\ & !\trn~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn~15_combout\,
	dataf => \ALT_INV_trn[15]$latch~combout\,
	combout => \trn[15]$latch~combout\);

-- Location: FF_X35_Y1_N22
\ring2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[16]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ring2(16));

-- Location: LABCELL_X35_Y1_N36
\trn~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~16_combout\ = ( ring2(16) & ( !ring(16) ) ) # ( !ring2(16) & ( ring(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_ring(16),
	dataf => ALT_INV_ring2(16),
	combout => \trn~16_combout\);

-- Location: LABCELL_X35_Y1_N6
\trn[16]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[16]$latch~combout\ = ( \trn~16_combout\ & ( (\trn[16]$latch~combout\ & \sample~input_o\) ) ) # ( !\trn~16_combout\ & ( (!\sample~input_o\) # (\trn[16]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011000000000011001111111111001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trn[16]$latch~combout\,
	datad => \ALT_INV_sample~input_o\,
	datae => \ALT_INV_trn~16_combout\,
	combout => \trn[16]$latch~combout\);

-- Location: FF_X36_Y1_N46
\ring2[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => ring2(18),
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[17]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N18
\trn~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~17_combout\ = ( \ring2[17]~DUPLICATE_q\ & ( !ring(17) ) ) # ( !\ring2[17]~DUPLICATE_q\ & ( ring(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(17),
	dataf => \ALT_INV_ring2[17]~DUPLICATE_q\,
	combout => \trn~17_combout\);

-- Location: LABCELL_X36_Y1_N12
\trn[17]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[17]$latch~combout\ = ( \trn~17_combout\ & ( (!\sample~input_o\) # (\trn[17]$latch~combout\) ) ) # ( !\trn~17_combout\ & ( (\trn[17]$latch~combout\ & \sample~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trn[17]$latch~combout\,
	datac => \ALT_INV_sample~input_o\,
	dataf => \ALT_INV_trn~17_combout\,
	combout => \trn[17]$latch~combout\);

-- Location: LABCELL_X36_Y1_N30
\trn~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~18_combout\ = ( ring2(18) & ( !ring(18) ) ) # ( !ring2(18) & ( ring(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(18),
	dataf => ALT_INV_ring2(18),
	combout => \trn~18_combout\);

-- Location: LABCELL_X36_Y1_N42
\trn[18]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[18]$latch~combout\ = ( \trn[18]$latch~combout\ & ( (\trn~18_combout\) # (\sample~input_o\) ) ) # ( !\trn[18]$latch~combout\ & ( (!\sample~input_o\ & \trn~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn~18_combout\,
	datae => \ALT_INV_trn[18]$latch~combout\,
	combout => \trn[18]$latch~combout\);

-- Location: FF_X36_Y1_N34
\ring2[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ring2[19]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring2[19]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N48
\trn~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~19_combout\ = ( \ring2[19]~DUPLICATE_q\ & ( !ring(19) ) ) # ( !\ring2[19]~DUPLICATE_q\ & ( ring(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_ring(19),
	dataf => \ALT_INV_ring2[19]~DUPLICATE_q\,
	combout => \trn~19_combout\);

-- Location: LABCELL_X36_Y1_N9
\trn[19]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[19]$latch~combout\ = ( \trn~19_combout\ & ( \trn[19]$latch~combout\ & ( \sample~input_o\ ) ) ) # ( !\trn~19_combout\ & ( \trn[19]$latch~combout\ ) ) # ( !\trn~19_combout\ & ( !\trn[19]$latch~combout\ & ( !\sample~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sample~input_o\,
	datae => \ALT_INV_trn~19_combout\,
	dataf => \ALT_INV_trn[19]$latch~combout\,
	combout => \trn[19]$latch~combout\);

-- Location: FF_X36_Y1_N22
\ring[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|int_osc_0|wire_sd1_clkout\,
	d => \ring[20]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ring[20]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N0
\trn~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn~20_combout\ = ( ring2(20) & ( !\ring[20]~DUPLICATE_q\ ) ) # ( !ring2(20) & ( \ring[20]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ring[20]~DUPLICATE_q\,
	dataf => ALT_INV_ring2(20),
	combout => \trn~20_combout\);

-- Location: LABCELL_X37_Y1_N30
\trn[20]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \trn[20]$latch~combout\ = ( \trn[20]$latch~combout\ & ( (\trn~20_combout\) # (\sample~input_o\) ) ) # ( !\trn[20]$latch~combout\ & ( (!\sample~input_o\ & \trn~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sample~input_o\,
	datad => \ALT_INV_trn~20_combout\,
	dataf => \ALT_INV_trn[20]$latch~combout\,
	combout => \trn[20]$latch~combout\);

-- Location: LABCELL_X50_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


