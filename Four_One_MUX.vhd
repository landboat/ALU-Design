----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:14 11/15/2019 
-- Design Name: 
-- Module Name:    Four_One_MUX - Dataflow 
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

entity Four_One_MUX is
    Port ( B : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Four_One_MUX;

architecture behaviour of Four_One_MUX is

begin
	
	up: process (B, s1, s0)
		begin
			if s1 = '0' and s0 = '0' then 
				y <= '0';
			elsif s1 = '0' and s0 = '1' then
				y <= B;
			elsif s1 = '1' and s0 = '0' then
				y <= not B;
			elsif s1 = '1' and s0 = '1' then
				y <= '1';
			end if;
		end process;				

end behaviour;

