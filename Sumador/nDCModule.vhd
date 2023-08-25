library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nDCModule is 
	port( num : in integer;
			code : out std_logic_vector(6 downto 0)
			);
	end nDCModule;
	
architecture bhv of nDCModule is

	begin
	
		process(num) is

			begin
				case num is
					when 0 =>
						code <= "1000000";
					when 1 =>
						code <= "1111001";
					when 2 =>
						code <= "0100100";
					when 3 =>
						code <= "0110000";
					when 4 =>
						code <= "0011001";
					when 5 =>
						code <= "0010010";
					when 6 =>
						code <= "0000010";
					when 7 =>
						code <= "1111000";
					when 8 =>
						code <= "0000000";
					when 9 =>
						code <= "0010000";
					when others =>
						code <= "1111111";
				end case;
			end process;
		end;