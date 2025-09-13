----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:36 01/11/2017 
-- Design Name: 
-- Module Name:    freq_div - Behavioral 
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

entity freq_div is
generic(nfclk:natural:=200_000_000);
port(
		clk:in std_logic;
		clk_final:buffer std_logic
	 );
end freq_div;

architecture Behavioral of freq_div is

begin
process(clk)
variable temp:integer range 0 to nfclk/2:=0;
begin
	if(clk'event and clk='1')then
		temp:=temp+1;
		if(temp>=nfclk/2)then
			clk_final<=not clk_final;
			temp:=0;
		end if;
	end if;
end process;

end Behavioral;

