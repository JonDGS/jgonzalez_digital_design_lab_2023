library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Main module for the system
entity mainAdderModule is
	port(
			A, B : in std_logic_vector(3 downto 0);-- 4 bit number to operate
			K : in std_logic;-- flag for negative operation
			T, U : out std_logic_vector(6 downto 0)-- 4 bit number to operate
			);
end mainAdderModule;

architecture behaivour of mainAdderModule is
	component fourBitAdder is
		port(
				A, B : in std_logic_vector(3 downto 0);-- 4 bit number to operate
				K : in std_logic;-- flag for negative operation
				S : out std_logic_vector(3 downto 0);-- 4 bit number to operate
				Cout: out std_logic
				);
	end component;
	
	component sumToDisplayModule is
		port(
				S : in std_logic_vector(4 downto 0);-- 5 bit operation result
				T : out std_logic_vector(6 downto 0);-- 7 bit segment representation for tens
				U : out std_logic_vector(6 downto 0)-- 7 bit segment representation for units
				);
	end component;
		
	signal S : std_logic_vector(3 downto 0); -- signal for result
	signal Cout : std_logic;-- signal for carry out
	signal tempS : std_logic_vector(4 downto 0);-- signal for storing cout + s

	begin
		
		fBA : fourBitAdder port map(A, B, K, S, Cout);
		tempS <= Cout & S;
		sDM : sumToDisplayModule port map(tempS, T, U);
		
	end;
