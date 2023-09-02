library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fourBitAdder_tb is
end fourBitAdder_tb;

architecture sim of fourBitAdder_tb is
  component fourBitAdder
    port (A, B : in std_logic_vector(3 downto 0);
          K : in std_logic;
			 S : out std_logic_vector(3 downto 0);
			 Cout : out std_logic
			 );
  end component;

  signal A : std_logic_vector(3 downto 0);
  signal B : std_logic_vector(3 downto 0);
  signal K : std_logic;
  signal S : std_logic_vector(3 downto 0);
  signal Cout : std_logic;
  
begin
  fBAT: fourBitAdder port map (
  A => A, B => B, K => K,
  S => S, Cout => Cout
  );

  stimulus: process
  begin
    A <= "1001";
	 B <= "1011";
	 K <= '0';
    wait for 50 ns;
  end process;

end sim;
