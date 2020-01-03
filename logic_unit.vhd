----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:11 11/15/2019 
-- Design Name: 
-- Module Name:    logic_unit - Behavioral 
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

entity logic_unit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end logic_unit;

architecture Behavioral of logic_unit is


begin
	up: process(a,b,s0,s1)
	begin
		if (s0 = '0' and s1 = '0') then
			y <= a and b;
		elsif (s0 = '1' and s1 = '0') then
			y <=  a or b;
		elsif (s0 = '0' and s1 = '1') then
			y <= a xor b;
		else 
			y <= not a;
		end if;
	end process;
end Behavioral;

