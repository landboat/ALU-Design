----------------------------------------------------------------------------------
-- Company:        ENGG 2410
-- Engineer:       Owen Douglas
-- 
-- Create Date:    14:46:53 10/11/2019 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Implementation of a 1-bit FA, to be used as a module in the ALU.
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

entity FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Ci : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Co : out  STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

begin
	S  <= A xor B xor Ci;
	Co <= (A and B) or (Ci and (A xor B) );


end Behavioral;

