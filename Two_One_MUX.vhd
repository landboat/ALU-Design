----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:51 11/20/2019 
-- Design Name: 
-- Module Name:    Two_One_MUX - Dataflow 
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

entity Two_One_MUX is
    Port ( Ar : in  STD_LOGIC;
           L : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Two_One_MUX;

architecture Dataflow of Two_One_MUX is

begin

up: process (Ar, L, S)
		begin
			if S = '0' then 
				O <= Ar;
			elsif S = '1' then
				O <= L;
			end if;
		end process;	

end Dataflow;

