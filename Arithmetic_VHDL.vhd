----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:48 11/15/2019 
-- Design Name: 
-- Module Name:    Arithmetic_VHDL - Structural 
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

entity Arithmetic_VHDL is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           C_out : out STD_LOGIC;
           G : out STD_LOGIC);
end Arithmetic_VHDL;

architecture Structural of Arithmetic_VHDL is

	component FullAdder is
		port (A, B, Ci : in std_logic;
				S, Co : out std_logic);
	end component;
	
	component Four_One_MUX is
		port (B, s1, s0 : in std_logic;
				y : out std_logic);
	end component;
	
	signal Y : std_logic;
	
begin

	mux: Four_One_MUX port map (B, S1, S0, Y);
	fa: FullAdder port map (A, Y, C_in, G, C_out);
	

	

end Structural;

