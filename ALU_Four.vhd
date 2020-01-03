----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:03 11/20/2019 
-- Design Name: 
-- Module Name:    ALU_Four - Structural 
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

entity ALU_Four is
	port( A, B : in std_logic_vector(3 downto 0);
			C_in, S0, S1, S2 : in std_logic;
			C_out : out std_logic;
			D : out std_logic_vector(6 downto 0);
			digit0, digit1, digit2 : out std_logic);
			
end ALU_Four;

architecture Structural of ALU_Four is

	component ALU_Single is
		port (A, B, C_in, S0, S1, S2 : in std_logic;
				C_out, G : out std_logic);
	end component;
	
	component Seven_Seg_2 is
		Port ( X : in std_logic_vector(3 downto 0);
             D : out std_logic_vector(6 downto 0));
	end component;
	
	signal C1, C2, C3 : std_logic;
	signal G : std_logic_vector(3 downto 0);
	

begin

	alu1: ALU_Single port map(A(0), B(0), C_in, S0, S1, S2, C1, G(0));
	alu2: ALU_Single port map(A(1), B(1), C1, S0, S1, S2, C2, G(1));
	alu3: ALU_Single port map(A(2), B(2), C2, S0, S1, S2, C3, G(2));
	alu4: ALU_Single port map(A(3), B(3), C3, S0, S1, S2, C_out, G(3));
	
	seven_seg : Seven_Seg_2 port map (G, D);
	
	digit0 <= '1';
	digit1 <= '1';
	digit2 <= '1';

end Structural;

