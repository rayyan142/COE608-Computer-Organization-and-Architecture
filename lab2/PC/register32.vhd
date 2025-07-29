library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register32 is
	
port(
		d : in std_logic_vector(31 downto 0); -- input.
		ld : in std_logic; -- load/enable.
		clr : in std_logic; -- async. clear.
		clk : in std_logic; -- clock.
		Q : out std_logic_vector(31 downto 0) -- output.
	);	 
end register32;

architecture Behaviour of register32 is
begin
	process (ld, clr, clk)
	begin
		if clr = '1' then
			Q <= (others => '0');
		elsif ((clk'event and clk = '1') and (ld = '1')) then
			Q <= d;
		end if;
	end process;
end Behaviour;