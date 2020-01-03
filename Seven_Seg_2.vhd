----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:12:20 11/01/2019 
-- Design Name: 
-- Module Name:    Seven_Seg_VHDL - Structual 
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

entity Seven_Seg_2 is
    Port ( X : in std_logic_vector(3 downto 0);
           D : out std_logic_vector(6 downto 0));
			
end Seven_Seg_2;

architecture Dataflow of Seven_Seg_2 is
	
begin
	
	D<= "0000001" when X = "0000" else
		 "1001111" when X = "0001" else
		 "0010010" when X = "0010" else
		 "0000110" when X = "0011" else
		 "1001100" when X = "0100" else
		 "0100100" when X = "0101" else
		 "0100000" when X = "0110" else
		 "0001111" when X = "0111" else
		 "0000000" when X = "1000" else
		 "0001100" when X = "1001" else
		 "0001000" when X = "1010" else
		 "1100000" when X = "1011" else
		 "0110001" when X = "1100" else
		 "1000010" when X = "1101" else
		 "0110000" when X = "1110" else
		 "0111000" when X = "1111" else
		 "XXXXXXX";

end Dataflow;

