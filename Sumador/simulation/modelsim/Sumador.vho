-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/24/2023 22:22:02"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mainAdderModule IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	K : IN std_logic;
	T : BUFFER std_logic_vector(6 DOWNTO 0);
	U : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mainAdderModule;

-- Design Ports Information
-- T[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mainAdderModule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_K : std_logic;
SIGNAL ww_T : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_U : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \K~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \fBA|fA1|Cout~combout\ : std_logic;
SIGNAL \fBA|fA2|Cout~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~22\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~23\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~18\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~19\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~14\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~15\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~10\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~11\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~6\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~7\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~5_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\ : std_logic;
SIGNAL \fBA|fA3|Cout~0_combout\ : std_logic;
SIGNAL \fBA|fA3|Cout~1_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\ : std_logic;
SIGNAL \fBA|fA3|S~combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\ : std_logic;
SIGNAL \fBA|fA2|S~0_combout\ : std_logic;
SIGNAL \fBA|fA0|Cout~0_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~26\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~22\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~18\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~14\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~10\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~6_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~26\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~22\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~18\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~14\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~10\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~6_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[177]~0_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[177]~1_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[176]~2_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[176]~4_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[175]~6_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~17_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|StageOut[174]~7_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~21_sumout\ : std_logic;
SIGNAL \fBA|fA1|S~0_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_25~25_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~30_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~26_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~22_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~18_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~14_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~10_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~6_cout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr5~combout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr4~0_combout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr3~combout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr2~0_combout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr1~combout\ : std_logic;
SIGNAL \sDM|nDCMTens|WideOr0~combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~6\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~7\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~22\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~23\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~18\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~19\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~10\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~11\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~14\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~15\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_22~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~6\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~10\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~30\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~26\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~14\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~18\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~22\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_23~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~10\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~6\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~14\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~126\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~122\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~58\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~98\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~102\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~22\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~18\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~38\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~34\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~30\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~26\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~54\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~50\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~46\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~42\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~74\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~70\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~66\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~62\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~90\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~86\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~82\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~78\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~118\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~114\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~110\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~106\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~94\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~14\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~10\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~2\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~18\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~130\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~126\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~122\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~26\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~22\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~46\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~42\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~38\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~34\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~30\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~66\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~62\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~58\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~54\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~50\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~86\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~82\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~78\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~74\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~70\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~106\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~102\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~98\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~94\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~90\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~118\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~114\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~110\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~0_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~41_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~37_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~33_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~8_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~2_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~1_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~77_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~85_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~81_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~73_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~10_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~12_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~57_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~49_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~65_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~9_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~97_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~101_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~89_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~11_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~125_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~121_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~13_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~14_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~6_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~5_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~4_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~3_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~7_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|Equal0~15_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideOr5~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideOr4~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideOr3~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideNor0~0_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideOr1~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|WideOr0~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \sDM|nDCMTens|code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \fBA|Tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~53_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~49_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~45_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~41_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~37_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~33_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~117_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~113_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~109_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~105_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~101_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~97_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~93_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~89_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~85_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~81_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~77_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~73_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~69_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~65_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~61_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~57_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~53_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~49_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~45_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~41_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~37_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~33_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~13_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[929]~6_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~5_combout\ : std_logic;
SIGNAL \fBA|fA3|ALT_INV_S~combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~4_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\ : std_logic;
SIGNAL \fBA|fA0|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \fBA|fA1|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \fBA|ALT_INV_Tmp\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[928]~0_combout\ : std_logic;
SIGNAL \fBA|fA2|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \fBA|fA1|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \sDM|nDCMTens|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~129_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~125_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~121_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~125_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~121_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~117_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~113_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~109_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~105_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~101_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~97_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~93_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~89_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~85_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~81_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~77_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~73_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~69_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~65_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~61_sumout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~57_sumout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_K~input_o\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[174]~7_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[175]~6_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[168]~5_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~4_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[169]~3_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~2_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~1_combout\ : std_logic;
SIGNAL \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~0_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~18_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~17_combout\ : std_logic;
SIGNAL \fBA|fA2|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[996]~16_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~15_combout\ : std_logic;
SIGNAL \fBA|fA3|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \fBA|fA3|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[997]~14_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[931]~13_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[1000]~12_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[933]~11_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[998]~10_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~9_combout\ : std_logic;
SIGNAL \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~8_combout\ : std_logic;
SIGNAL \sDM|nDCMUnits|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_K <= K;
T <= ww_T;
U <= ww_U;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~53_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~49_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~49_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~45_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~41_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~41_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~37_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~37_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~33_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~33_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~29_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~29_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~117_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~113_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~109_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~105_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~101_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~97_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~93_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~89_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~85_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~81_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~77_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~73_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~69_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~65_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~61_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~57_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~53_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~49_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~45_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~41_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~37_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~33_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~29_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~25_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~21_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~17_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~5_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~13_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~9_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~5_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~5_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~5_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\;
\sDM|nDCMUnits|ALT_INV_Equal0~1_combout\ <= NOT \sDM|nDCMUnits|Equal0~1_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~0_combout\ <= NOT \sDM|nDCMUnits|Equal0~0_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[929]~6_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~5_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\;
\fBA|fA3|ALT_INV_S~combout\ <= NOT \fBA|fA3|S~combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~4_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\;
\fBA|fA0|ALT_INV_Cout~0_combout\ <= NOT \fBA|fA0|Cout~0_combout\;
\fBA|fA1|ALT_INV_S~0_combout\ <= NOT \fBA|fA1|S~0_combout\;
\fBA|ALT_INV_Tmp\(1) <= NOT \fBA|Tmp\(1);
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[928]~0_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\;
\fBA|fA2|ALT_INV_S~0_combout\ <= NOT \fBA|fA2|S~0_combout\;
\fBA|fA1|ALT_INV_Cout~combout\ <= NOT \fBA|fA1|Cout~combout\;
\sDM|nDCMTens|ALT_INV_WideOr2~0_combout\ <= NOT \sDM|nDCMTens|WideOr2~0_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~25_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~21_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~17_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~13_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_25~9_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_23~9_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\ <= NOT \sDM|Div0|auto_generated|divider|divider|op_22~5_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~129_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~125_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~125_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~121_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~121_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~125_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~121_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~117_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~113_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~109_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~105_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~101_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~101_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~97_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~97_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~93_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~89_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~89_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~85_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~85_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~81_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~81_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~77_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~77_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~73_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~73_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~69_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~65_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~65_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~61_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~57_sumout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|op_26~57_sumout\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_K~input_o\ <= NOT \K~input_o\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[174]~7_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[174]~7_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[175]~6_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[175]~6_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[168]~5_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~4_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[176]~4_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[169]~3_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~2_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[176]~2_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~1_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[177]~1_combout\;
\sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~0_combout\ <= NOT \sDM|Div0|auto_generated|divider|divider|StageOut[177]~0_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~18_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~17_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\;
\fBA|fA2|ALT_INV_Cout~combout\ <= NOT \fBA|fA2|Cout~combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~15_combout\ <= NOT \sDM|nDCMUnits|Equal0~15_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~14_combout\ <= NOT \sDM|nDCMUnits|Equal0~14_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~13_combout\ <= NOT \sDM|nDCMUnits|Equal0~13_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~12_combout\ <= NOT \sDM|nDCMUnits|Equal0~12_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[996]~16_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~15_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\;
\fBA|fA3|ALT_INV_Cout~1_combout\ <= NOT \fBA|fA3|Cout~1_combout\;
\fBA|fA3|ALT_INV_Cout~0_combout\ <= NOT \fBA|fA3|Cout~0_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[997]~14_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[931]~13_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~11_combout\ <= NOT \sDM|nDCMUnits|Equal0~11_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~10_combout\ <= NOT \sDM|nDCMUnits|Equal0~10_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~9_combout\ <= NOT \sDM|nDCMUnits|Equal0~9_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~8_combout\ <= NOT \sDM|nDCMUnits|Equal0~8_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~7_combout\ <= NOT \sDM|nDCMUnits|Equal0~7_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~6_combout\ <= NOT \sDM|nDCMUnits|Equal0~6_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~5_combout\ <= NOT \sDM|nDCMUnits|Equal0~5_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[1000]~12_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[933]~11_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~4_combout\ <= NOT \sDM|nDCMUnits|Equal0~4_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~3_combout\ <= NOT \sDM|nDCMUnits|Equal0~3_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[998]~10_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~9_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\;
\sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~8_combout\ <= NOT \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\;
\sDM|nDCMUnits|ALT_INV_Equal0~2_combout\ <= NOT \sDM|nDCMUnits|Equal0~2_combout\;

-- Location: IOOBUF_X89_Y6_N39
\T[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_T(0));

-- Location: IOOBUF_X89_Y6_N56
\T[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_T(1));

-- Location: IOOBUF_X89_Y16_N39
\T[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|code\(2),
	devoe => ww_devoe,
	o => ww_T(2));

-- Location: IOOBUF_X89_Y16_N56
\T[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_T(3));

-- Location: IOOBUF_X89_Y15_N39
\T[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_T(4));

-- Location: IOOBUF_X89_Y15_N56
\T[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_T(5));

-- Location: IOOBUF_X89_Y8_N56
\T[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMTens|WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_T(6));

-- Location: IOOBUF_X89_Y8_N39
\U[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_U(0));

-- Location: IOOBUF_X89_Y11_N79
\U[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_U(1));

-- Location: IOOBUF_X89_Y11_N96
\U[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|code\(2),
	devoe => ww_devoe,
	o => ww_U(2));

-- Location: IOOBUF_X89_Y4_N79
\U[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_U(3));

-- Location: IOOBUF_X89_Y13_N56
\U[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideNor0~0_combout\,
	devoe => ww_devoe,
	o => ww_U(4));

-- Location: IOOBUF_X89_Y13_N39
\U[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_U(5));

-- Location: IOOBUF_X89_Y4_N96
\U[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sDM|nDCMUnits|WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_U(6));

-- Location: IOIBUF_X4_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\K~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K,
	o => \K~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X71_Y4_N51
\fBA|fA1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA1|Cout~combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\K~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))))) # (\B[0]~input_o\ & ((!\K~input_o\ $ (!\B[1]~input_o\)) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\K~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))))) # (\B[0]~input_o\ & (\A[1]~input_o\ & (!\K~input_o\ $ (!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111110001000000011111000110100011111110011010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_K~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \fBA|fA1|Cout~combout\);

-- Location: MLABCELL_X78_Y7_N0
\fBA|fA2|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA2|Cout~combout\ = ( \K~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & \fBA|fA1|Cout~combout\)) # (\A[2]~input_o\ & ((!\B[2]~input_o\) # (\fBA|fA1|Cout~combout\))) ) ) # ( !\K~input_o\ & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & 
-- \fBA|fA1|Cout~combout\)) # (\A[2]~input_o\ & ((\fBA|fA1|Cout~combout\) # (\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \fBA|fA1|ALT_INV_Cout~combout\,
	dataf => \ALT_INV_K~input_o\,
	combout => \fBA|fA2|Cout~combout\);

-- Location: IOIBUF_X4_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: MLABCELL_X72_Y4_N0
\sDM|Div0|auto_generated|divider|divider|op_22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\ = SUM(( !\fBA|fA2|Cout~combout\ $ (!\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\K~input_o\))) ) + ( !VCC ) + ( !VCC ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~22\ = CARRY(( !\fBA|fA2|Cout~combout\ $ (!\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\K~input_o\))) ) + ( !VCC ) + ( !VCC ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~23\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA2|ALT_INV_Cout~combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_K~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_22~22\,
	shareout => \sDM|Div0|auto_generated|divider|divider|op_22~23\);

-- Location: MLABCELL_X72_Y4_N3
\sDM|Div0|auto_generated|divider|divider|op_22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\ = SUM(( (!\fBA|fA2|Cout~combout\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\K~input_o\)))) # (\fBA|fA2|Cout~combout\ & ((!\B[3]~input_o\ $ (!\K~input_o\)) # (\A[3]~input_o\))) ) + ( 
-- \sDM|Div0|auto_generated|divider|divider|op_22~23\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~22\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~18\ = CARRY(( (!\fBA|fA2|Cout~combout\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\K~input_o\)))) # (\fBA|fA2|Cout~combout\ & ((!\B[3]~input_o\ $ (!\K~input_o\)) # (\A[3]~input_o\))) ) + ( 
-- \sDM|Div0|auto_generated|divider|divider|op_22~23\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~22\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001011101001101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA2|ALT_INV_Cout~combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_K~input_o\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_22~22\,
	sharein => \sDM|Div0|auto_generated|divider|divider|op_22~23\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_22~18\,
	shareout => \sDM|Div0|auto_generated|divider|divider|op_22~19\);

-- Location: MLABCELL_X72_Y4_N6
\sDM|Div0|auto_generated|divider|divider|op_22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\ = SUM(( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~19\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~18\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~14\ = CARRY(( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~19\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~18\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_22~18\,
	sharein => \sDM|Div0|auto_generated|divider|divider|op_22~19\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_22~14\,
	shareout => \sDM|Div0|auto_generated|divider|divider|op_22~15\);

-- Location: MLABCELL_X72_Y4_N9
\sDM|Div0|auto_generated|divider|divider|op_22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\ = SUM(( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~15\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~14\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~10\ = CARRY(( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~15\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~14\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_22~14\,
	sharein => \sDM|Div0|auto_generated|divider|divider|op_22~15\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_22~10\,
	shareout => \sDM|Div0|auto_generated|divider|divider|op_22~11\);

-- Location: MLABCELL_X72_Y4_N12
\sDM|Div0|auto_generated|divider|divider|op_22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~5_sumout\ = SUM(( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~11\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~10\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~6\ = CARRY(( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~11\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~10\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_22~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_22~10\,
	sharein => \sDM|Div0|auto_generated|divider|divider|op_22~11\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~5_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_22~6\,
	shareout => \sDM|Div0|auto_generated|divider|divider|op_22~7\);

-- Location: MLABCELL_X72_Y4_N15
\sDM|Div0|auto_generated|divider|divider|op_22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ = SUM(( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~7\ ) + ( \sDM|Div0|auto_generated|divider|divider|op_22~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_22~6\,
	sharein => \sDM|Div0|auto_generated|divider|divider|op_22~7\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\);

-- Location: MLABCELL_X72_Y4_N21
\fBA|fA3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA3|Cout~0_combout\ = ( \B[3]~input_o\ & ( (\A[3]~input_o\ & !\K~input_o\) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & \K~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_K~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \fBA|fA3|Cout~0_combout\);

-- Location: MLABCELL_X78_Y7_N6
\fBA|fA3|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA3|Cout~1_combout\ = ( \fBA|fA1|Cout~combout\ & ( \B[3]~input_o\ & ( (!\A[3]~input_o\ & (!\K~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\ & (\K~input_o\ & ((!\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( 
-- !\fBA|fA1|Cout~combout\ & ( \B[3]~input_o\ & ( (\A[2]~input_o\ & ((!\A[3]~input_o\ & (\B[2]~input_o\ & !\K~input_o\)) # (\A[3]~input_o\ & (!\B[2]~input_o\ & \K~input_o\)))) ) ) ) # ( \fBA|fA1|Cout~combout\ & ( !\B[3]~input_o\ & ( (!\A[3]~input_o\ & 
-- (\K~input_o\ & ((!\B[2]~input_o\) # (\A[2]~input_o\)))) # (\A[3]~input_o\ & (!\K~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\)))) ) ) ) # ( !\fBA|fA1|Cout~combout\ & ( !\B[3]~input_o\ & ( (\A[2]~input_o\ & ((!\A[3]~input_o\ & (!\B[2]~input_o\ & 
-- \K~input_o\)) # (\A[3]~input_o\ & (\B[2]~input_o\ & !\K~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100000000101011010001000000010000100000010101001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_K~input_o\,
	datae => \fBA|fA1|ALT_INV_Cout~combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \fBA|fA3|Cout~1_combout\);

-- Location: MLABCELL_X78_Y7_N30
\fBA|fA3|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA3|S~combout\ = ( \fBA|fA1|Cout~combout\ & ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (\B[2]~input_o\)) # (\A[2]~input_o\ & ((!\K~input_o\))))) ) ) ) # ( !\fBA|fA1|Cout~combout\ & ( \B[3]~input_o\ & ( !\A[3]~input_o\ $ 
-- (((!\A[2]~input_o\ & ((\K~input_o\))) # (\A[2]~input_o\ & (\B[2]~input_o\)))) ) ) ) # ( \fBA|fA1|Cout~combout\ & ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & (!\B[2]~input_o\)) # (\A[2]~input_o\ & ((\K~input_o\))))) ) ) ) # ( 
-- !\fBA|fA1|Cout~combout\ & ( !\B[3]~input_o\ & ( !\A[3]~input_o\ $ (((!\A[2]~input_o\ & ((!\K~input_o\))) # (\A[2]~input_o\ & (!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010011010011010100101100110101001011001011001010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_K~input_o\,
	datae => \fBA|fA1|ALT_INV_Cout~combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \fBA|fA3|S~combout\);

-- Location: MLABCELL_X72_Y4_N57
\sDM|Div0|auto_generated|divider|divider|StageOut[168]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\ = ( \fBA|fA3|S~combout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\) # (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) # ( !\fBA|fA3|S~combout\ & ( 
-- (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	dataf => \fBA|fA3|ALT_INV_S~combout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\);

-- Location: MLABCELL_X78_Y7_N3
\fBA|fA2|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA2|S~0_combout\ = ( \K~input_o\ & ( !\B[2]~input_o\ $ (\A[2]~input_o\) ) ) # ( !\K~input_o\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_K~input_o\,
	combout => \fBA|fA2|S~0_combout\);

-- Location: MLABCELL_X78_Y7_N51
\fBA|fA0|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA0|Cout~0_combout\ = ( \K~input_o\ & ( (!\B[0]~input_o\) # (\A[0]~input_o\) ) ) # ( !\K~input_o\ & ( (\A[0]~input_o\ & \B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_K~input_o\,
	combout => \fBA|fA0|Cout~0_combout\);

-- Location: MLABCELL_X78_Y7_N39
\fBA|Tmp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|Tmp\(1) = ( \B[1]~input_o\ & ( !\K~input_o\ ) ) # ( !\B[1]~input_o\ & ( \K~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_K~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \fBA|Tmp\(1));

-- Location: MLABCELL_X72_Y4_N30
\sDM|Div0|auto_generated|divider|divider|op_23~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\);

-- Location: MLABCELL_X72_Y4_N33
\sDM|Div0|auto_generated|divider|divider|op_23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\ = SUM(( VCC ) + ( !\fBA|fA2|S~0_combout\ $ (((!\A[1]~input_o\ & ((!\fBA|fA0|Cout~0_combout\) # (!\fBA|Tmp\(1)))) # (\A[1]~input_o\ & (!\fBA|fA0|Cout~0_combout\ & !\fBA|Tmp\(1))))) ) + ( 
-- \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_23~26\ = CARRY(( VCC ) + ( !\fBA|fA2|S~0_combout\ $ (((!\A[1]~input_o\ & ((!\fBA|fA0|Cout~0_combout\) # (!\fBA|Tmp\(1)))) # (\A[1]~input_o\ & (!\fBA|fA0|Cout~0_combout\ & !\fBA|Tmp\(1))))) ) + ( 
-- \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010011001010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA2|ALT_INV_S~0_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \fBA|fA0|ALT_INV_Cout~0_combout\,
	dataf => \fBA|ALT_INV_Tmp\(1),
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~30_cout\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~26\);

-- Location: MLABCELL_X72_Y4_N36
\sDM|Div0|auto_generated|divider|divider|op_23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\ = SUM(( \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\ ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~26\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_23~22\ = CARRY(( \sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\ ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[168]~5_combout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~26\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~22\);

-- Location: MLABCELL_X72_Y4_N39
\sDM|Div0|auto_generated|divider|divider|op_23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\ = SUM(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\)) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (((\fBA|fA3|Cout~1_combout\) # (\fBA|fA3|Cout~0_combout\)))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~22\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_23~18\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\)) # (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\fBA|fA3|Cout~1_combout\) # (\fBA|fA3|Cout~0_combout\)))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \fBA|fA3|ALT_INV_Cout~0_combout\,
	dataf => \fBA|fA3|ALT_INV_Cout~1_combout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~22\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~18\);

-- Location: MLABCELL_X72_Y4_N42
\sDM|Div0|auto_generated|divider|divider|op_23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\ = SUM(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~18\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_23~14\ = CARRY(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~18\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~14\);

-- Location: MLABCELL_X72_Y4_N45
\sDM|Div0|auto_generated|divider|divider|op_23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~9_sumout\ = SUM(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~14\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_23~10\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~14\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~9_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~10\);

-- Location: MLABCELL_X72_Y4_N48
\sDM|Div0|auto_generated|divider|divider|op_23~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~6_cout\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~5_sumout\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~10\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_23~6_cout\);

-- Location: MLABCELL_X72_Y4_N51
\sDM|Div0|auto_generated|divider|divider|op_23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_23~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_23~6_cout\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\);

-- Location: MLABCELL_X72_Y4_N54
\sDM|Div0|auto_generated|divider|divider|StageOut[169]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\ = ( \fBA|fA3|Cout~1_combout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\) # (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) # ( !\fBA|fA3|Cout~1_combout\ & 
-- ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~17_sumout\)) # (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\fBA|fA3|Cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	datad => \fBA|fA3|ALT_INV_Cout~0_combout\,
	dataf => \fBA|fA3|ALT_INV_Cout~1_combout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\);

-- Location: LABCELL_X71_Y4_N0
\sDM|Div0|auto_generated|divider|divider|op_25~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\);

-- Location: LABCELL_X71_Y4_N3
\sDM|Div0|auto_generated|divider|divider|op_25~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~25_sumout\ = SUM(( VCC ) + ( !\A[1]~input_o\ $ (!\fBA|fA0|Cout~0_combout\ $ (!\K~input_o\ $ (!\B[1]~input_o\))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_25~26\ = CARRY(( VCC ) + ( !\A[1]~input_o\ $ (!\fBA|fA0|Cout~0_combout\ $ (!\K~input_o\ $ (!\B[1]~input_o\))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100110100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \fBA|fA0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_K~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~30_cout\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~25_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~26\);

-- Location: LABCELL_X71_Y4_N6
\sDM|Div0|auto_generated|divider|divider|op_25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~21_sumout\ = SUM(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\)))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\fBA|fA1|Cout~combout\ $ ((!\fBA|fA2|S~0_combout\)))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~26\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_25~22\ = CARRY(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\)))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\fBA|fA1|Cout~combout\ $ ((!\fBA|fA2|S~0_combout\)))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011010010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA1|ALT_INV_Cout~combout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \fBA|fA2|ALT_INV_S~0_combout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~26\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~21_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~22\);

-- Location: LABCELL_X71_Y4_N9
\sDM|Div0|auto_generated|divider|divider|op_25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~17_sumout\ = SUM(( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\)) ) + ( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~22\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_25~18\ = CARRY(( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\)) ) + ( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[168]~5_combout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~22\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~17_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~18\);

-- Location: LABCELL_X71_Y4_N12
\sDM|Div0|auto_generated|divider|divider|op_25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~13_sumout\ = SUM(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\)) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~18\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_25~14\ = CARRY(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ 
-- & (\sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\)) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[169]~3_combout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~18\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~13_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~14\);

-- Location: LABCELL_X71_Y4_N15
\sDM|Div0|auto_generated|divider|divider|op_25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~9_sumout\ = SUM(( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\)))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\))) ) + ( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~14\ ))
-- \sDM|Div0|auto_generated|divider|divider|op_25~10\ = CARRY(( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\)))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\))) ) + ( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~14\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~9_sumout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~10\);

-- Location: LABCELL_X71_Y4_N18
\sDM|Div0|auto_generated|divider|divider|op_25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~6_cout\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_23~9_sumout\)))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_22~9_sumout\))) ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~10\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_25~6_cout\);

-- Location: LABCELL_X71_Y4_N21
\sDM|Div0|auto_generated|divider|divider|op_25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_25~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_25~6_cout\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\);

-- Location: LABCELL_X71_Y4_N48
\sDM|Div0|auto_generated|divider|divider|StageOut[177]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[177]~0_combout\ = ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[177]~0_combout\);

-- Location: MLABCELL_X72_Y4_N24
\sDM|Div0|auto_generated|divider|divider|StageOut[177]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[177]~1_combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_22~13_sumout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & !\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[177]~1_combout\);

-- Location: MLABCELL_X72_Y4_N18
\sDM|Div0|auto_generated|divider|divider|StageOut[176]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[176]~2_combout\ = ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[176]~2_combout\);

-- Location: LABCELL_X71_Y4_N57
\sDM|Div0|auto_generated|divider|divider|StageOut[176]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[176]~4_combout\ = (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|StageOut[169]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[169]~3_combout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[176]~4_combout\);

-- Location: MLABCELL_X72_Y4_N27
\sDM|Div0|auto_generated|divider|divider|StageOut[175]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[175]~6_combout\ = (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_23~21_sumout\))) # (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\sDM|Div0|auto_generated|divider|divider|StageOut[168]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[168]~5_combout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[175]~6_combout\);

-- Location: LABCELL_X71_Y4_N54
\sDM|Div0|auto_generated|divider|divider|StageOut[174]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|StageOut[174]~7_combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\) # (!\fBA|fA1|Cout~combout\ $ (!\fBA|fA2|S~0_combout\)) ) ) # ( 
-- !\sDM|Div0|auto_generated|divider|divider|op_23~25_sumout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\fBA|fA1|Cout~combout\ $ (!\fBA|fA2|S~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011001111111111001100111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \fBA|fA1|ALT_INV_Cout~combout\,
	datad => \fBA|fA2|ALT_INV_S~0_combout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	combout => \sDM|Div0|auto_generated|divider|divider|StageOut[174]~7_combout\);

-- Location: MLABCELL_X78_Y7_N15
\fBA|fA1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fBA|fA1|S~0_combout\ = ( \fBA|Tmp\(1) & ( !\A[1]~input_o\ ) ) # ( !\fBA|Tmp\(1) & ( \A[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \fBA|ALT_INV_Tmp\(1),
	combout => \fBA|fA1|S~0_combout\);

-- Location: LABCELL_X71_Y4_N24
\sDM|Div0|auto_generated|divider|divider|op_26~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~30_cout\);

-- Location: LABCELL_X71_Y4_N27
\sDM|Div0|auto_generated|divider|divider|op_26~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~26_cout\ = CARRY(( VCC ) + ( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~30_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~26_cout\);

-- Location: LABCELL_X71_Y4_N30
\sDM|Div0|auto_generated|divider|divider|op_26~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~22_cout\ = CARRY(( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_25~25_sumout\)))) # (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (!\fBA|fA0|Cout~0_combout\ $ ((!\fBA|fA1|S~0_combout\)))) ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \fBA|fA0|ALT_INV_Cout~0_combout\,
	datac => \fBA|fA1|ALT_INV_S~0_combout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~26_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~22_cout\);

-- Location: LABCELL_X71_Y4_N33
\sDM|Div0|auto_generated|divider|divider|op_26~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~18_cout\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_25~21_sumout\))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|StageOut[174]~7_combout\)) ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[174]~7_combout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~22_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~18_cout\);

-- Location: LABCELL_X71_Y4_N36
\sDM|Div0|auto_generated|divider|divider|op_26~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~14_cout\ = CARRY(( GND ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_25~17_sumout\))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|StageOut[175]~6_combout\)) ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[175]~6_combout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~18_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~14_cout\);

-- Location: LABCELL_X71_Y4_N39
\sDM|Div0|auto_generated|divider|divider|op_26~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~10_cout\ = CARRY(( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Div0|auto_generated|divider|divider|op_25~13_sumout\)) # (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\sDM|Div0|auto_generated|divider|divider|StageOut[176]~4_combout\) # (\sDM|Div0|auto_generated|divider|divider|StageOut[176]~2_combout\)))) ) + ( VCC ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~2_combout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[176]~4_combout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~14_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~10_cout\);

-- Location: LABCELL_X71_Y4_N42
\sDM|Div0|auto_generated|divider|divider|op_26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~6_cout\ = CARRY(( VCC ) + ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|op_25~9_sumout\)))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Div0|auto_generated|divider|divider|StageOut[177]~1_combout\)) # (\sDM|Div0|auto_generated|divider|divider|StageOut[177]~0_combout\))) ) + ( 
-- \sDM|Div0|auto_generated|divider|divider|op_26~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~0_combout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_StageOut[177]~1_combout\,
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~10_cout\,
	cout => \sDM|Div0|auto_generated|divider|divider|op_26~6_cout\);

-- Location: LABCELL_X71_Y4_N45
\sDM|Div0|auto_generated|divider|divider|op_26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Div0|auto_generated|divider|divider|op_26~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Div0|auto_generated|divider|divider|op_26~6_cout\,
	sumout => \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\);

-- Location: LABCELL_X79_Y7_N0
\sDM|nDCMTens|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr5~combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- !\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ $ 
-- (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) ) # ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) ) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110011001111001100001100111100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datae => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr5~combout\);

-- Location: LABCELL_X79_Y7_N9
\sDM|nDCMTens|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr4~0_combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) ) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) ) ) ) # ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # 
-- (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) ) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111001111110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datae => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr4~0_combout\);

-- Location: LABCELL_X79_Y7_N42
\sDM|nDCMTens|code[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|code\(2) = ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\))) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|code\(2));

-- Location: LABCELL_X79_Y7_N45
\sDM|nDCMTens|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr3~combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & ((!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\))) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & (!\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\)) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( 
-- (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # (!\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ $ (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100101111111111010010111110000000010101111000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr3~combout\);

-- Location: LABCELL_X79_Y7_N48
\sDM|nDCMTens|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr2~0_combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ((\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # 
-- (\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\))) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr2~0_combout\);

-- Location: LABCELL_X79_Y7_N51
\sDM|nDCMTens|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr1~combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) # ((!\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & 
-- \sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\)) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) # ((!\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & 
-- !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr1~combout\);

-- Location: LABCELL_X79_Y7_N54
\sDM|nDCMTens|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMTens|WideOr0~combout\ = ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ $ 
-- (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) ) # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( \sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\ $ 
-- (\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) ) # ( \sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) ) ) 
-- # ( !\sDM|Div0|auto_generated|divider|divider|op_26~1_sumout\ & ( !\sDM|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (!\sDM|Div0|auto_generated|divider|divider|op_25~1_sumout\) # (!\sDM|Div0|auto_generated|divider|divider|op_22~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111110000000011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datae => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	dataf => \sDM|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|nDCMTens|WideOr0~combout\);

-- Location: LABCELL_X77_Y7_N0
\sDM|Mod0|auto_generated|divider|divider|op_22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~5_sumout\ = SUM(( !\B[3]~input_o\ $ (!\fBA|fA2|Cout~combout\ $ (!\K~input_o\ $ (!\A[3]~input_o\))) ) + ( !VCC ) + ( !VCC ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~6\ = CARRY(( !\B[3]~input_o\ $ (!\fBA|fA2|Cout~combout\ $ (!\K~input_o\ $ (!\A[3]~input_o\))) ) + ( !VCC ) + ( !VCC ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \fBA|fA2|ALT_INV_Cout~combout\,
	datac => \ALT_INV_K~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~5_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_22~6\,
	shareout => \sDM|Mod0|auto_generated|divider|divider|op_22~7\);

-- Location: LABCELL_X77_Y7_N3
\sDM|Mod0|auto_generated|divider|divider|op_22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\ = SUM(( (!\fBA|fA2|Cout~combout\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\K~input_o\)))) # (\fBA|fA2|Cout~combout\ & ((!\B[3]~input_o\ $ (!\K~input_o\)) # (\A[3]~input_o\))) ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_22~7\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~6\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~22\ = CARRY(( (!\fBA|fA2|Cout~combout\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\K~input_o\)))) # (\fBA|fA2|Cout~combout\ & ((!\B[3]~input_o\ $ (!\K~input_o\)) # (\A[3]~input_o\))) ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_22~7\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~6\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001011100101011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \fBA|fA2|ALT_INV_Cout~combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_K~input_o\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_22~6\,
	sharein => \sDM|Mod0|auto_generated|divider|divider|op_22~7\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_22~22\,
	shareout => \sDM|Mod0|auto_generated|divider|divider|op_22~23\);

-- Location: LABCELL_X77_Y7_N6
\sDM|Mod0|auto_generated|divider|divider|op_22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\ = SUM(( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~23\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~22\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~18\ = CARRY(( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~23\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~22\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_22~22\,
	sharein => \sDM|Mod0|auto_generated|divider|divider|op_22~23\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_22~18\,
	shareout => \sDM|Mod0|auto_generated|divider|divider|op_22~19\);

-- Location: LABCELL_X77_Y7_N9
\sDM|Mod0|auto_generated|divider|divider|op_22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\ = SUM(( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~19\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~18\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~10\ = CARRY(( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~19\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~18\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_22~18\,
	sharein => \sDM|Mod0|auto_generated|divider|divider|op_22~19\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_22~10\,
	shareout => \sDM|Mod0|auto_generated|divider|divider|op_22~11\);

-- Location: LABCELL_X77_Y7_N12
\sDM|Mod0|auto_generated|divider|divider|op_22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\ = SUM(( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~11\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~10\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~14\ = CARRY(( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~11\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~10\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_22~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_22~10\,
	sharein => \sDM|Mod0|auto_generated|divider|divider|op_22~11\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_22~14\,
	shareout => \sDM|Mod0|auto_generated|divider|divider|op_22~15\);

-- Location: LABCELL_X77_Y7_N15
\sDM|Mod0|auto_generated|divider|divider|op_22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ = SUM(( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~15\ ) + ( \sDM|Mod0|auto_generated|divider|divider|op_22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_22~14\,
	sharein => \sDM|Mod0|auto_generated|divider|divider|op_22~15\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\);

-- Location: LABCELL_X77_Y7_N21
\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_22~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~5_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\);

-- Location: LABCELL_X77_Y7_N30
\sDM|Mod0|auto_generated|divider|divider|op_23~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\);

-- Location: LABCELL_X77_Y7_N33
\sDM|Mod0|auto_generated|divider|divider|op_23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~5_sumout\ = SUM(( VCC ) + ( !\fBA|fA2|S~0_combout\ $ (((!\fBA|fA0|Cout~0_combout\ & ((!\A[1]~input_o\) # (!\fBA|Tmp\(1)))) # (\fBA|fA0|Cout~0_combout\ & (!\A[1]~input_o\ & !\fBA|Tmp\(1))))) ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~6\ = CARRY(( VCC ) + ( !\fBA|fA2|S~0_combout\ $ (((!\fBA|fA0|Cout~0_combout\ & ((!\A[1]~input_o\) # (!\fBA|Tmp\(1)))) # (\fBA|fA0|Cout~0_combout\ & (!\A[1]~input_o\ & !\fBA|Tmp\(1))))) ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010011001010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA2|ALT_INV_S~0_combout\,
	datab => \fBA|fA0|ALT_INV_Cout~0_combout\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \fBA|ALT_INV_Tmp\(1),
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~34_cout\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~5_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~6\);

-- Location: LABCELL_X77_Y7_N36
\sDM|Mod0|auto_generated|divider|divider|op_23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\ = SUM(( ((\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \fBA|fA3|S~combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\) ) + ( GND ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_23~6\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~10\ = CARRY(( ((\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \fBA|fA3|S~combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\) ) + ( GND ) + ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_23~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~4_combout\,
	datad => \fBA|fA3|ALT_INV_S~combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~6\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~10\);

-- Location: LABCELL_X77_Y7_N39
\sDM|Mod0|auto_generated|divider|divider|op_23~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\fBA|fA3|Cout~0_combout\)) # (\fBA|fA3|Cout~1_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~10\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~30\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\fBA|fA3|Cout~0_combout\)) # (\fBA|fA3|Cout~1_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fBA|fA3|ALT_INV_Cout~1_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \fBA|fA3|ALT_INV_Cout~0_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~10\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~30\);

-- Location: LABCELL_X77_Y7_N42
\sDM|Mod0|auto_generated|divider|divider|op_23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\ = SUM(( GND ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~30\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~26\ = CARRY(( GND ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~30\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~26\);

-- Location: LABCELL_X77_Y7_N45
\sDM|Mod0|auto_generated|divider|divider|op_23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~26\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~14\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~26\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~14\);

-- Location: LABCELL_X77_Y7_N48
\sDM|Mod0|auto_generated|divider|divider|op_23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~14\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~18\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~14\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~18\);

-- Location: LABCELL_X77_Y7_N51
\sDM|Mod0|auto_generated|divider|divider|op_23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~18\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_23~22\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~18\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_23~22\);

-- Location: LABCELL_X77_Y7_N54
\sDM|Mod0|auto_generated|divider|divider|op_23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_23~22\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\);

-- Location: LABCELL_X77_Y7_N24
\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ = ( \fBA|fA3|Cout~1_combout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\) ) ) ) # ( !\fBA|fA3|Cout~1_combout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((\fBA|fA3|Cout~0_combout\))) ) ) ) # ( \fBA|fA3|Cout~1_combout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\)) ) ) ) # 
-- ( !\fBA|fA3|Cout~1_combout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\,
	datac => \fBA|fA3|ALT_INV_Cout~0_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datae => \fBA|fA3|ALT_INV_Cout~1_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\);

-- Location: LABCELL_X73_Y7_N0
\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\ = ( \fBA|fA3|S~combout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \fBA|fA3|ALT_INV_S~combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\);

-- Location: MLABCELL_X78_Y7_N36
\sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\fBA|fA1|Cout~combout\ $ (!\fBA|fA2|S~0_combout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_23~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~5_sumout\,
	datac => \fBA|fA1|ALT_INV_Cout~combout\,
	datad => \fBA|fA2|ALT_INV_S~0_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\);

-- Location: LABCELL_X75_Y7_N12
\sDM|Mod0|auto_generated|divider|divider|op_25~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\);

-- Location: LABCELL_X75_Y7_N15
\sDM|Mod0|auto_generated|divider|divider|op_25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\ = SUM(( !\A[1]~input_o\ $ (!\K~input_o\ $ (!\fBA|fA0|Cout~0_combout\ $ (!\B[1]~input_o\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~10\ = CARRY(( !\A[1]~input_o\ $ (!\K~input_o\ $ (!\fBA|fA0|Cout~0_combout\ $ (!\B[1]~input_o\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_K~input_o\,
	datac => \fBA|fA0|ALT_INV_Cout~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~130_cout\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~10\);

-- Location: LABCELL_X75_Y7_N18
\sDM|Mod0|auto_generated|divider|divider|op_25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\ = SUM(( \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\ ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~10\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~6\ = CARRY(( \sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\ ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[928]~0_combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~10\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~6\);

-- Location: LABCELL_X75_Y7_N21
\sDM|Mod0|auto_generated|divider|divider|op_25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~6\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~14\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~4_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~5_combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~6\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~14\);

-- Location: LABCELL_X75_Y7_N24
\sDM|Mod0|auto_generated|divider|divider|op_25~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\ = SUM(( \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~14\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~126\ = CARRY(( \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~15_combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~14\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~126\);

-- Location: LABCELL_X75_Y7_N27
\sDM|Mod0|auto_generated|divider|divider|op_25~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\)))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\)))) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~126\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~122\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\)))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\)))) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~126\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~122\);

-- Location: LABCELL_X75_Y7_N30
\sDM|Mod0|auto_generated|divider|divider|op_25~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\)))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~122\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~58\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\)))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~122\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~58\);

-- Location: LABCELL_X75_Y7_N33
\sDM|Mod0|auto_generated|divider|divider|op_25~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\)))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\)))) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~58\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~98\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\)))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\)))) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~58\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~98\);

-- Location: LABCELL_X75_Y7_N36
\sDM|Mod0|auto_generated|divider|divider|op_25~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~98\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~102\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~98\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~102\);

-- Location: LABCELL_X75_Y7_N39
\sDM|Mod0|auto_generated|divider|divider|op_25~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~102\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~22\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~102\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~22\);

-- Location: LABCELL_X75_Y7_N42
\sDM|Mod0|auto_generated|divider|divider|op_25~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~22\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~18\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~22\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~18\);

-- Location: LABCELL_X75_Y7_N45
\sDM|Mod0|auto_generated|divider|divider|op_25~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~18\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~38\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~18\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~38\);

-- Location: LABCELL_X75_Y7_N48
\sDM|Mod0|auto_generated|divider|divider|op_25~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~38\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~34\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~38\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~34\);

-- Location: LABCELL_X75_Y7_N51
\sDM|Mod0|auto_generated|divider|divider|op_25~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~34\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~30\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~34\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~30\);

-- Location: LABCELL_X75_Y7_N54
\sDM|Mod0|auto_generated|divider|divider|op_25~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~30\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~26\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~30\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~26\);

-- Location: LABCELL_X75_Y7_N57
\sDM|Mod0|auto_generated|divider|divider|op_25~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~26\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~54\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~26\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~54\);

-- Location: LABCELL_X75_Y6_N0
\sDM|Mod0|auto_generated|divider|divider|op_25~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~54\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~50\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~54\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~50\);

-- Location: LABCELL_X75_Y6_N3
\sDM|Mod0|auto_generated|divider|divider|op_25~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~50\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~46\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~50\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~46\);

-- Location: LABCELL_X75_Y6_N6
\sDM|Mod0|auto_generated|divider|divider|op_25~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~46\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~42\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~46\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~42\);

-- Location: LABCELL_X75_Y6_N9
\sDM|Mod0|auto_generated|divider|divider|op_25~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~42\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~74\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~42\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~74\);

-- Location: LABCELL_X75_Y6_N12
\sDM|Mod0|auto_generated|divider|divider|op_25~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~74\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~70\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~74\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~70\);

-- Location: LABCELL_X75_Y6_N15
\sDM|Mod0|auto_generated|divider|divider|op_25~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~70\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~66\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~70\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~66\);

-- Location: LABCELL_X75_Y6_N18
\sDM|Mod0|auto_generated|divider|divider|op_25~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~66\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~62\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~66\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~62\);

-- Location: LABCELL_X75_Y6_N21
\sDM|Mod0|auto_generated|divider|divider|op_25~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~62\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~90\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~62\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~90\);

-- Location: LABCELL_X75_Y6_N24
\sDM|Mod0|auto_generated|divider|divider|op_25~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~90\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~86\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~90\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~86\);

-- Location: LABCELL_X75_Y6_N27
\sDM|Mod0|auto_generated|divider|divider|op_25~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~86\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~82\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~86\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~82\);

-- Location: LABCELL_X75_Y6_N30
\sDM|Mod0|auto_generated|divider|divider|op_25~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~82\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~78\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~82\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~78\);

-- Location: LABCELL_X75_Y6_N33
\sDM|Mod0|auto_generated|divider|divider|op_25~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~78\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~118\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~78\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~118\);

-- Location: LABCELL_X75_Y6_N36
\sDM|Mod0|auto_generated|divider|divider|op_25~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~118\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~114\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~118\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~114\);

-- Location: LABCELL_X75_Y6_N39
\sDM|Mod0|auto_generated|divider|divider|op_25~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~114\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~110\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~114\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~110\);

-- Location: LABCELL_X75_Y6_N42
\sDM|Mod0|auto_generated|divider|divider|op_25~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~110\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~106\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~110\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~106\);

-- Location: LABCELL_X75_Y6_N45
\sDM|Mod0|auto_generated|divider|divider|op_25~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~106\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_25~94\ = CARRY(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~106\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_25~94\);

-- Location: LABCELL_X75_Y6_N48
\sDM|Mod0|auto_generated|divider|divider|op_25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_25~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_25~94\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\);

-- Location: LABCELL_X75_Y7_N6
\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\)) 
-- # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\))) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_22~13_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ 
-- & \sDM|Mod0|auto_generated|divider|divider|op_23~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\);

-- Location: LABCELL_X73_Y7_N24
\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_23~13_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\);

-- Location: LABCELL_X73_Y7_N33
\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_22~9_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\);

-- Location: LABCELL_X75_Y7_N3
\sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- ((\sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\)) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_22~17_sumout\ & 
-- ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_23~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\);

-- Location: LABCELL_X73_Y7_N57
\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_23~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\);

-- Location: LABCELL_X77_Y7_N18
\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\ = ( \fBA|fA3|Cout~0_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\))) ) ) # ( !\fBA|fA3|Cout~0_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & ((!\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_22~21_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_22~1_sumout\ & ((\fBA|fA3|Cout~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	datad => \fBA|fA3|ALT_INV_Cout~1_combout\,
	dataf => \fBA|fA3|ALT_INV_Cout~0_combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\);

-- Location: LABCELL_X75_Y7_N0
\sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~4_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- ((\sDM|Mod0|auto_generated|divider|divider|op_23~9_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[896]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~5_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[896]~4_combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\);

-- Location: LABCELL_X74_Y7_N6
\sDM|Mod0|auto_generated|divider|divider|op_26~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\);

-- Location: LABCELL_X74_Y7_N9
\sDM|Mod0|auto_generated|divider|divider|op_26~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\ = SUM(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~14\ = CARRY(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~134_cout\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~14\);

-- Location: LABCELL_X74_Y7_N12
\sDM|Mod0|auto_generated|divider|divider|op_26~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (!\fBA|fA0|Cout~0_combout\ $ ((!\fBA|fA1|S~0_combout\)))) ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~14\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~10\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (!\fBA|fA0|Cout~0_combout\ $ ((!\fBA|fA1|S~0_combout\)))) ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \fBA|fA0|ALT_INV_Cout~0_combout\,
	datac => \fBA|fA1|ALT_INV_S~0_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~14\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~10\);

-- Location: LABCELL_X74_Y7_N15
\sDM|Mod0|auto_generated|divider|divider|op_26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~10\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~2\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[928]~0_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~5_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~10\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~2\);

-- Location: LABCELL_X74_Y7_N18
\sDM|Mod0|auto_generated|divider|divider|op_26~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\)) ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~2\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~18\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\)) ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[929]~6_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~2\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~18\);

-- Location: LABCELL_X74_Y7_N21
\sDM|Mod0|auto_generated|divider|divider|op_26~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~18\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~130\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~18_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~17_combout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~17_combout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~125_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~18_combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~18\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~130\);

-- Location: LABCELL_X74_Y7_N24
\sDM|Mod0|auto_generated|divider|divider|op_26~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~125_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~130\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~126\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~130\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[931]~13_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~121_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~130\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~125_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~126\);

-- Location: LABCELL_X74_Y7_N27
\sDM|Mod0|auto_generated|divider|divider|op_26~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~121_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\)))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~126\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~122\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\)))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~57_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~8_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~9_combout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~126\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~121_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~122\);

-- Location: LABCELL_X74_Y7_N30
\sDM|Mod0|auto_generated|divider|divider|op_26~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~122\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~26\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ 
-- & (\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[933]~11_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~97_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~122\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~26\);

-- Location: LABCELL_X74_Y7_N33
\sDM|Mod0|auto_generated|divider|divider|op_26~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~26\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~22\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\)))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\))) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~101_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~26\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~22\);

-- Location: LABCELL_X74_Y7_N36
\sDM|Mod0|auto_generated|divider|divider|op_26~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~22\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~46\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~22\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~46\);

-- Location: LABCELL_X74_Y7_N39
\sDM|Mod0|auto_generated|divider|divider|op_26~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~41_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~46\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~42\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~46\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~41_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~42\);

-- Location: LABCELL_X74_Y7_N42
\sDM|Mod0|auto_generated|divider|divider|op_26~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~37_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~42\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~38\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~37_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~42\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~37_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~38\);

-- Location: LABCELL_X74_Y7_N45
\sDM|Mod0|auto_generated|divider|divider|op_26~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~33_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~38\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~34\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~33_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~38\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~33_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~34\);

-- Location: LABCELL_X74_Y7_N48
\sDM|Mod0|auto_generated|divider|divider|op_26~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~29_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~34\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~30\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~29_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~34\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~29_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~30\);

-- Location: LABCELL_X74_Y7_N51
\sDM|Mod0|auto_generated|divider|divider|op_26~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~65_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~30\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~66\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~30\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~65_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~66\);

-- Location: LABCELL_X74_Y7_N54
\sDM|Mod0|auto_generated|divider|divider|op_26~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~66\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~62\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~53_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~66\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~62\);

-- Location: LABCELL_X74_Y7_N57
\sDM|Mod0|auto_generated|divider|divider|op_26~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~57_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~62\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~58\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~49_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~62\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~57_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~58\);

-- Location: LABCELL_X74_Y6_N0
\sDM|Mod0|auto_generated|divider|divider|op_26~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~58\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~54\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~45_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~58\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~54\);

-- Location: LABCELL_X74_Y6_N3
\sDM|Mod0|auto_generated|divider|divider|op_26~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~49_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~54\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~50\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~41_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~54\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~49_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~50\);

-- Location: LABCELL_X74_Y6_N6
\sDM|Mod0|auto_generated|divider|divider|op_26~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~85_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~50\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~86\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~73_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~50\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~85_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~86\);

-- Location: LABCELL_X74_Y6_N9
\sDM|Mod0|auto_generated|divider|divider|op_26~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~81_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~86\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~82\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~69_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~86\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~81_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~82\);

-- Location: LABCELL_X74_Y6_N12
\sDM|Mod0|auto_generated|divider|divider|op_26~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~77_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~82\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~78\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~65_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~82\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~77_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~78\);

-- Location: LABCELL_X74_Y6_N15
\sDM|Mod0|auto_generated|divider|divider|op_26~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~73_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~78\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~74\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~61_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~78\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~73_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~74\);

-- Location: LABCELL_X74_Y6_N18
\sDM|Mod0|auto_generated|divider|divider|op_26~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~74\ ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~70\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~89_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~74\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~70\);

-- Location: LABCELL_X74_Y6_N21
\sDM|Mod0|auto_generated|divider|divider|op_26~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~70\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~106\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~85_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~70\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~106\);

-- Location: LABCELL_X74_Y6_N24
\sDM|Mod0|auto_generated|divider|divider|op_26~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~101_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~106\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~102\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~81_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~106\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~101_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~102\);

-- Location: LABCELL_X74_Y6_N27
\sDM|Mod0|auto_generated|divider|divider|op_26~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~97_sumout\ = SUM(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~102\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~98\ = CARRY(( VCC ) + ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\) ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~77_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~102\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~97_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~98\);

-- Location: LABCELL_X74_Y6_N30
\sDM|Mod0|auto_generated|divider|divider|op_26~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~98\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~94\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~117_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~98\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~94\);

-- Location: LABCELL_X74_Y6_N33
\sDM|Mod0|auto_generated|divider|divider|op_26~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~89_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~94\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~90\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~113_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~94\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~89_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~90\);

-- Location: LABCELL_X74_Y6_N36
\sDM|Mod0|auto_generated|divider|divider|op_26~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~90\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~118\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~109_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~90\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~118\);

-- Location: LABCELL_X74_Y6_N39
\sDM|Mod0|auto_generated|divider|divider|op_26~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~118\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~114\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~105_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~118\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~114\);

-- Location: LABCELL_X74_Y6_N42
\sDM|Mod0|auto_generated|divider|divider|op_26~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\ = SUM(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~114\ 
-- ))
-- \sDM|Mod0|auto_generated|divider|divider|op_26~110\ = CARRY(( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\) ) + ( VCC ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~93_sumout\,
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~114\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\,
	cout => \sDM|Mod0|auto_generated|divider|divider|op_26~110\);

-- Location: LABCELL_X74_Y6_N45
\sDM|Mod0|auto_generated|divider|divider|op_26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \sDM|Mod0|auto_generated|divider|divider|op_26~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \sDM|Mod0|auto_generated|divider|divider|op_26~110\,
	sumout => \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\);

-- Location: MLABCELL_X78_Y7_N48
\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\) # (!\A[0]~input_o\ $ (!\B[0]~input_o\)) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~13_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011110110111101101111011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~13_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\);

-- Location: LABCELL_X74_Y7_N0
\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\) # ((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\)))) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~1_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_25~5_sumout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|StageOut[928]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~5_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[928]~0_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~1_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\);

-- Location: LABCELL_X73_Y7_N6
\sDM|nDCMUnits|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~0_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ & ( ((!\sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ & 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\) ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ & ( 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & !\sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\)) ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ & ( ((!\sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ & !\sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\) ) ) ) # 
-- ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~21_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_26~25_sumout\ & 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_26~21_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((!\sDM|Mod0|auto_generated|divider|divider|op_25~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110000000101100111011001110000000100000001011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~25_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~21_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~17_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~21_sumout\,
	combout => \sDM|nDCMUnits|Equal0~0_combout\);

-- Location: LABCELL_X73_Y7_N42
\sDM|nDCMUnits|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~8_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~45_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( (((\sDM|Mod0|auto_generated|divider|divider|op_26~29_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_26~33_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~37_sumout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_26~41_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~41_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~37_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~33_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~29_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~45_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	combout => \sDM|nDCMUnits|Equal0~8_combout\);

-- Location: LABCELL_X73_Y7_N18
\sDM|nDCMUnits|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~2_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~53_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~45_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~41_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~49_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~41_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~45_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~53_sumout\,
	combout => \sDM|nDCMUnits|Equal0~2_combout\);

-- Location: LABCELL_X73_Y7_N12
\sDM|nDCMUnits|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~1_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~37_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~25_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~29_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~33_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~29_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~25_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~37_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	combout => \sDM|nDCMUnits|Equal0~1_combout\);

-- Location: MLABCELL_X72_Y6_N30
\sDM|nDCMUnits|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~10_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\ ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~69_sumout\ & ( (((\sDM|Mod0|auto_generated|divider|divider|op_26~73_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_26~81_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~85_sumout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_26~77_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~77_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~85_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~81_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~73_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~69_sumout\,
	combout => \sDM|nDCMUnits|Equal0~10_combout\);

-- Location: LABCELL_X79_Y7_N39
\sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[930]~15_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- \sDM|Mod0|auto_generated|divider|divider|op_25~125_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~125_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[930]~15_combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\);

-- Location: LABCELL_X79_Y7_N33
\sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_25~121_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[931]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[931]~13_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~121_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\);

-- Location: LABCELL_X79_Y7_N12
\sDM|nDCMUnits|Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~12_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\ & 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\ & !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\)) ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & !\sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\) ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~113_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[997]~14_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_26~117_sumout\ & (!\sDM|Mod0|auto_generated|divider|divider|op_26~109_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & 
-- (((!\sDM|Mod0|auto_generated|divider|divider|StageOut[996]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110000000000011110000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~117_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~109_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[996]~16_combout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~113_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[997]~14_combout\,
	combout => \sDM|nDCMUnits|Equal0~12_combout\);

-- Location: LABCELL_X68_Y7_N30
\sDM|nDCMUnits|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~9_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~53_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~61_sumout\ & 
-- ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_26~65_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_26~49_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~57_sumout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~57_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~49_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~65_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~53_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~61_sumout\,
	combout => \sDM|nDCMUnits|Equal0~9_combout\);

-- Location: LABCELL_X73_Y6_N3
\sDM|nDCMUnits|Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~11_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ & 
-- ( !\sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~105_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~93_sumout\ 
-- & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_26~89_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_26~101_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_26~97_sumout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~97_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~101_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~89_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~105_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~93_sumout\,
	combout => \sDM|nDCMUnits|Equal0~11_combout\);

-- Location: LABCELL_X79_Y7_N30
\sDM|nDCMUnits|Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~13_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~129_sumout\ & ( 
-- (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_26~121_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_26~125_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~125_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~121_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~129_sumout\,
	combout => \sDM|nDCMUnits|Equal0~13_combout\);

-- Location: LABCELL_X79_Y7_N36
\sDM|nDCMUnits|Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~14_combout\ = ( !\sDM|nDCMUnits|Equal0~13_combout\ & ( (!\sDM|nDCMUnits|Equal0~10_combout\ & (\sDM|nDCMUnits|Equal0~12_combout\ & (!\sDM|nDCMUnits|Equal0~9_combout\ & !\sDM|nDCMUnits|Equal0~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|nDCMUnits|ALT_INV_Equal0~10_combout\,
	datab => \sDM|nDCMUnits|ALT_INV_Equal0~12_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~9_combout\,
	datad => \sDM|nDCMUnits|ALT_INV_Equal0~11_combout\,
	dataf => \sDM|nDCMUnits|ALT_INV_Equal0~13_combout\,
	combout => \sDM|nDCMUnits|Equal0~14_combout\);

-- Location: LABCELL_X73_Y7_N27
\sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & 
-- ((\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\))) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~8_combout\ & ( 
-- (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~57_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[932]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~9_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~57_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[932]~8_combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10_combout\);

-- Location: LABCELL_X74_Y6_N54
\sDM|nDCMUnits|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~6_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~117_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~105_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~109_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~113_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~109_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~105_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~117_sumout\,
	combout => \sDM|nDCMUnits|Equal0~6_combout\);

-- Location: LABCELL_X75_Y7_N9
\sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\ = (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|op_25~101_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (((!\sDM|Mod0|auto_generated|divider|divider|op_23~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|op_23~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010100000101110001010000010111000101000001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~101_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\);

-- Location: LABCELL_X73_Y7_N36
\sDM|nDCMUnits|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~5_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & 
-- (((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\))) ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\))) ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\))) ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_25~93_sumout\ & ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~97_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & \sDM|Mod0|auto_generated|divider|divider|StageOut[933]~11_combout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[1000]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011001100010011001100110001001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[1000]~12_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[933]~11_combout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~93_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~97_sumout\,
	combout => \sDM|nDCMUnits|Equal0~5_combout\);

-- Location: LABCELL_X74_Y6_N48
\sDM|nDCMUnits|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~4_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~77_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~85_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~89_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~81_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~81_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~89_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~85_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~77_sumout\,
	combout => \sDM|nDCMUnits|Equal0~4_combout\);

-- Location: LABCELL_X75_Y6_N54
\sDM|nDCMUnits|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~3_combout\ = ( !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\ & ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ ) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ( !\sDM|Mod0|auto_generated|divider|divider|op_25~73_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & (((\sDM|Mod0|auto_generated|divider|divider|op_25~69_sumout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~65_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~61_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~65_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~69_sumout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~73_sumout\,
	combout => \sDM|nDCMUnits|Equal0~3_combout\);

-- Location: LABCELL_X73_Y7_N30
\sDM|nDCMUnits|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~7_combout\ = ( !\sDM|nDCMUnits|Equal0~3_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|StageOut[998]~10_combout\ & (!\sDM|nDCMUnits|Equal0~6_combout\ & (!\sDM|nDCMUnits|Equal0~5_combout\ & 
-- !\sDM|nDCMUnits|Equal0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[998]~10_combout\,
	datab => \sDM|nDCMUnits|ALT_INV_Equal0~6_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~5_combout\,
	datad => \sDM|nDCMUnits|ALT_INV_Equal0~4_combout\,
	dataf => \sDM|nDCMUnits|ALT_INV_Equal0~3_combout\,
	combout => \sDM|nDCMUnits|Equal0~7_combout\);

-- Location: LABCELL_X73_Y7_N48
\sDM|nDCMUnits|Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|Equal0~15_combout\ = ( \sDM|nDCMUnits|Equal0~14_combout\ & ( \sDM|nDCMUnits|Equal0~7_combout\ & ( (\sDM|nDCMUnits|Equal0~0_combout\ & (!\sDM|nDCMUnits|Equal0~8_combout\ & (!\sDM|nDCMUnits|Equal0~2_combout\ & 
-- !\sDM|nDCMUnits|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|nDCMUnits|ALT_INV_Equal0~0_combout\,
	datab => \sDM|nDCMUnits|ALT_INV_Equal0~8_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~2_combout\,
	datad => \sDM|nDCMUnits|ALT_INV_Equal0~1_combout\,
	datae => \sDM|nDCMUnits|ALT_INV_Equal0~14_combout\,
	dataf => \sDM|nDCMUnits|ALT_INV_Equal0~7_combout\,
	combout => \sDM|nDCMUnits|Equal0~15_combout\);

-- Location: LABCELL_X74_Y7_N3
\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\) # ((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- ((\sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\))) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\))) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|op_26~17_sumout\ & ( (\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ((!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\sDM|Mod0|auto_generated|divider|divider|op_25~13_sumout\))) # 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[929]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[929]~6_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~13_sumout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~17_sumout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\);

-- Location: MLABCELL_X78_Y7_N24
\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( \fBA|fA0|Cout~0_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((!\fBA|fA1|S~0_combout\))) ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( \fBA|fA0|Cout~0_combout\ & ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\ ) ) ) # ( \sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( !\fBA|fA0|Cout~0_combout\ & ( (!\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & 
-- (\sDM|Mod0|auto_generated|divider|divider|op_25~9_sumout\)) # (\sDM|Mod0|auto_generated|divider|divider|op_25~1_sumout\ & ((\fBA|fA1|S~0_combout\))) ) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|op_26~5_sumout\ & ( !\fBA|fA0|Cout~0_combout\ & ( 
-- \sDM|Mod0|auto_generated|divider|divider|op_26~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001000100111011100001111000011110111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~1_sumout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_25~9_sumout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~9_sumout\,
	datad => \fBA|fA1|ALT_INV_S~0_combout\,
	datae => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_op_26~5_sumout\,
	dataf => \fBA|fA0|ALT_INV_Cout~0_combout\,
	combout => \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\);

-- Location: MLABCELL_X78_Y7_N42
\sDM|nDCMUnits|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideOr5~combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\) ) ) # ( 
-- !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # (!\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ $ (((!\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011011110011111101101111001111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideOr5~combout\);

-- Location: MLABCELL_X78_Y7_N45
\sDM|nDCMUnits|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideOr4~combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # (((!\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ & 
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) 
-- # ((\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110011111100011111001111110010111111111111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideOr4~combout\);

-- Location: MLABCELL_X78_Y7_N18
\sDM|nDCMUnits|code[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|code\(2) = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # (((!\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ & 
-- !\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) 
-- # ((\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & \sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100001111001111111000111111111111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|code\(2));

-- Location: MLABCELL_X78_Y7_N54
\sDM|nDCMUnits|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideOr3~combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( ((!\sDM|nDCMUnits|Equal0~15_combout\) # ((\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ & 
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\))) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) 
-- # (!\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ $ (((!\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101100011111111110110001111111111000111111111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	datad => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideOr3~combout\);

-- Location: MLABCELL_X78_Y7_N21
\sDM|nDCMUnits|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideNor0~0_combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( ((!\sDM|nDCMUnits|Equal0~15_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( ((!\sDM|nDCMUnits|Equal0~15_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\)) 
-- # (\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideNor0~0_combout\);

-- Location: MLABCELL_X78_Y7_N12
\sDM|nDCMUnits|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideOr1~combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # ((!\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\) # 
-- ((\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\))) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( 
-- (!\sDM|nDCMUnits|Equal0~15_combout\) # ((!\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & (\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ & !\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) # 
-- (\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ & ((\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010111011101011101011101111101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideOr1~combout\);

-- Location: MLABCELL_X78_Y7_N57
\sDM|nDCMUnits|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sDM|nDCMUnits|WideOr0~combout\ = ( \sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) # (((\sDM|Mod0|auto_generated|divider|divider|StageOut[992]~3_combout\ & 
-- \sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\)) # (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) ) ) # ( !\sDM|Mod0|auto_generated|divider|divider|StageOut[993]~2_combout\ & ( (!\sDM|nDCMUnits|Equal0~15_combout\) 
-- # (!\sDM|Mod0|auto_generated|divider|divider|StageOut[994]~1_combout\ $ (\sDM|Mod0|auto_generated|divider|divider|StageOut[995]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110011111111001111001111110001111111111111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[992]~3_combout\,
	datab => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[994]~1_combout\,
	datac => \sDM|nDCMUnits|ALT_INV_Equal0~15_combout\,
	datad => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[995]~7_combout\,
	dataf => \sDM|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[993]~2_combout\,
	combout => \sDM|nDCMUnits|WideOr0~combout\);

-- Location: LABCELL_X61_Y18_N0
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


