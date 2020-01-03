----------------------------------------------------------------------------------
-- Company: 	  ENGG 2410
-- Engineer: 	  Owen Douglas
-- 
-- Create Date:    16:49:14 11/20/2019 
-- Design Name: 
-- Module Name:    ALU_Single - Stuctural 
-- Project Name:   ALU
-- Target Devices: 
-- Tool versions: 
-- Description:    1-Bit implementation of our ALU.
------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Single is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C_in : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           C_out : out  STD_LOGIC;
           G : out  STD_LOGIC);
end ALU_Single;

architecture Stuctural of ALU_Single is

	component Arithmetic_VHDL is
		port (A, B, C_in, S1, S0 : in std_logic;
				C_out, G : out std_logic);
	end component;
	
	component logic_unit is
		port (a, b, s0, s1 : in std_logic;
				y : out std_logic);
	end component;
		
	component Two_One_MUX is
		port (Ar, L, S : in std_logic;
				O : out std_logic);
	end component;
	
	signal Ar, L : std_logic;
	
begin

	arithmetic: Arithmetic_VHDL port map (A, B, C_in, S1, S0, C_out, Ar);
	logic: logic_unit port map (A, B, S0, S1, L);
	mux: Two_One_MUX port map (Ar, L, S2, G);

end Stuctural;

