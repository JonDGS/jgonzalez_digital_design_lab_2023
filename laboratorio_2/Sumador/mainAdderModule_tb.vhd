library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mainAdderModule_tb is
end mainAdderModule_tb;

architecture sim of mainAdderModule_tb is
  component mainAdderModule
    port (A, B : in std_logic_vector(3 downto 0);
          K : in std_logic;
			 T, U : out std_logic_vector(6 downto 0)
			 );
  end component;

  signal A : std_logic_vector(3 downto 0);
  signal B : std_logic_vector(3 downto 0);
  signal K : std_logic;
  signal T : std_logic_vector(6 downto 0);
  signal U : std_logic_vector(6 downto 0);
  
begin
  mAM: mainAdderModule port map (
  A => A, B => B, K => K,
  T => T, U => U
  );

  stimulus: process
  begin
    A <= "1001";
	 B <= "1011";
	 K <= '0';
    wait for 50 ns;
  end process;

end sim;
