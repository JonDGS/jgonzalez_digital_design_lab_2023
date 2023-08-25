library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fourBitAdder is
	port(
			A, B : in std_logic_vector(3 downto 0);
			K : in std_logic;
			S : out std_logic_vector(3 downto 0);
			Cout : out std_logic
			);
end fourBitAdder;

architecture struct of fourBitAdder is
	component fullAdderModule is
		port(
				A, B, Cin : in std_logic;
				S, Cout : out std_logic
				);
	end component;
	--signal A, B, Cin : std_logic;
	--signal S, Cout : std_logic;
	signal C0, C1, C2, C3 : std_logic;
	signal Tmp : std_logic_vector(3 downto 0);
	
begin
	Tmp(0) <= B(0) xor K;
	Tmp(1) <= B(1) xor K;
	Tmp(2) <= B(2) xor K;
	Tmp(3) <= B(3) xor K;
	
	fA0 : fullAdderModule port map(A(0), Tmp(0), K, S(0), C0);
	fA1 : fullAdderModule port map(A(1), Tmp(1), C0, S(1), C1);
	fA2 : fullAdderModule port map(A(2), Tmp(2), C1, S(2), C2);
	fA3 : fullAdderModule port map(A(3), Tmp(3), C2, S(3), C3);
	
	Cout <= C3;
end struct;
	
			