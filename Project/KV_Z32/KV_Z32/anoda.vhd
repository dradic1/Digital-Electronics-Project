----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:12 01/11/2017 
-- Design Name: 
-- Module Name:    anoda - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity anoda is
port(
		clk, reset:in std_logic;
		a:out std_logic_vector(0 to 3)
	 );		
end anoda;

architecture Behavioral of anoda is
signal anod:std_logic_vector(0 to 3);

begin
	a<=anod;
	process(clk)
		variable cnt:integer;
	begin
		if(clk'event and clk='1')then
			if(reset='1')then
				anod<="1111";
				cnt:=0;
			elsif(cnt=4)then
				cnt:=0;
			end if;
		end if;
	end process;

end Behavioral;

