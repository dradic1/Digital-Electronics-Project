----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:44 01/11/2017 
-- Design Name: 
-- Module Name:    Z_32 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Z_32 is
port(
		clk, t1, t2: in std_logic;
		led: out std_logic_vector(6 downto 0)
	 );

end Z_32;

architecture Behavioral of Z_32 is
signal temp:std_logic_vector(3 downto 0);

begin
process(t1, t2)
begin
		if(t1='1' and t2='0')then
			temp<=temp+1;
		elsif(t1='0' and t2='1')then
			temp<=temp-1;	
	   end if;
end process;
with temp select
led<="0000001" when "0000",
	  "1001111" when "0001",
	  "0010010" when "0010",
	  "0000110" when "0011",
	  "1001100" when "0100",
	  "0100100" when "0101",
	  "0100000" when "0110",
	  "0001111" when "0111",
	  "0000000" when "1000",
	  "0000100" when others;
end Behavioral;

