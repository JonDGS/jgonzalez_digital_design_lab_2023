library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumToDisplayModule is 
	port( S : in std_logic_vector(4 downto 0);
			T : out std_logic_vector(6 downto 0);
			U : out std_logic_vector(6 downto 0)
			);
	end sumToDisplayModule;
	
architecture structural of sumToDisplayModule is
	component nDCModule is
		port(
				num : in integer;
				code : out std_logic_vector(6 downto 0)
			);
	end component;
	
		
	signal decN : integer;
	signal tensP : integer;
	signal unitsP : integer;

	begin
	
		decN <= TO_INTEGER(UNSIGNED(S));
		tensP <= decN / 10;
		unitsP <= decN mod 10;
		
		nDCMTens : nDCModule port map(tensP, T);
		nDCMUnits : nDCModule port map(unitsP, U);
		
		
	end;