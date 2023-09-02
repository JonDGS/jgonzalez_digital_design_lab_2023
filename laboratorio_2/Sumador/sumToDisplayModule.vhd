library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Module for showing sum on 2 7segments
entity sumToDisplayModule is 
	port( S : in std_logic_vector(4 downto 0);-- Binary number to display
			T : out std_logic_vector(6 downto 0);-- Tens place for number
			U : out std_logic_vector(6 downto 0)-- Units place for number
			);
	end sumToDisplayModule;
	
architecture structural of sumToDisplayModule is
	component nDCModule is
		port(
				num : in integer;-- number being converted
				code : out std_logic_vector(6 downto 0)-- 7segment binary representation of num
			);
	end component;
	
		
	signal decN : integer;-- signal for decimal representation of num
	signal tensP : integer;-- signal for tens place
	signal unitsP : integer;-- signal for units place

	begin
	
		decN <= TO_INTEGER(UNSIGNED(S));
		tensP <= decN / 10;
		unitsP <= decN mod 10;
		
		nDCMTens : nDCModule port map(tensP, T);
		nDCMUnits : nDCModule port map(unitsP, U);
		
		
	end;