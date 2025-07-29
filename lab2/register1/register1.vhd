library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register1 is
	
port(
		d : in std_logic; -- input.
		ld : in std_logic; -- load/enable.
		clr : in std_logic; -- async. clear.
		clk : in std_logic; -- clock.
		Q : out std_logic -- output.
	);	 
end register1;

architecture Behaviour of register1 is
begin
	process (ld, clr, clk)
	begin
		if clr = '1' then
			Q <= '0';
		elsif ((clk'event and clk = '1') and (ld = '1')) then
			Q <= d;
		end if;
	end process;
end Behaviour;