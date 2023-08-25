library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mainAdderModule is
	port(
			A, B : in std_logic_vector(3 downto 0);
			K : in std_logic;
			T, U : out std_logic_vector(6 downto 0)
			);
end mainAdderModule;

architecture behaivour of mainAdderModule is
	component fourBitAdder is
		port(
				A, B : in std_logic_vector(3 downto 0);
				K : in std_logic;
				S : out std_logic_vector(3 downto 0);
				Cout: out std_logic
				);
	end component;
	
	component sumToDisplayModule is
		port(
				S : in std_logic_vector(4 downto 0);
				T : out std_logic_vector(6 downto 0);
				U : out std_logic_vector(6 downto 0)
				);
	end component;
		
	signal S : std_logic_vector(3 downto 0);
	signal Cout : std_logic;
	signal tempS : std_logic_vector(4 downto 0);

	begin
		
		fBA : fourBitAdder port map(A, B, K, S, Cout);
		tempS <= Cout & S;
		sDM : sumToDisplayModule port map(tempS, T, U);
		
	end;
