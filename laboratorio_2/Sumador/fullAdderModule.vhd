library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fullAdderModule is 
	port( A, B, Cin : in std_logic;-- binaries for inputs and carry in
			S, Cout : out std_logic-- binaries for output and carry out
			);
	end fullAdderModule;
	
architecture bhv of fullAdderModule is
	begin
		S <= (A xor B) xor Cin;
		Cout <= ((A xor B) and Cin) or (A and B);
	end;
