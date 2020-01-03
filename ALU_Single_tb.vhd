--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:10:05 11/20/2019
-- Design Name:   
-- Module Name:   /home/ise/ISE/ALU/ALU_Single_tb.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Single
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_Single_tb IS
END ALU_Single_tb;
 
ARCHITECTURE behavior OF ALU_Single_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Single
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C_in : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         C_out : OUT  std_logic;
         G : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_tb : std_logic := '0';
   signal B_tb : std_logic := '0';
   signal C_in_tb : std_logic := '0';
   signal S0_tb : std_logic := '0';
   signal S1_tb : std_logic := '0';
   signal S2_tb : std_logic := '0';

 	--Outputs
   signal C_out_tb : std_logic;
   signal G_tb : std_logic;
 
BEGIN
	  
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Single PORT MAP (
          A => A_tb,
          B => B_tb,
          C_in => C_in_tb,
          S0 => S0_tb,
          S1 => S1_tb,
          S2 => S2_tb,
          C_out => C_out_tb,
          G => G_tb
        );
		  
tb : PROCESS
				constant period : time := 20 ns;
	begin
	
		-- Tests transfer operation with A= 1, B = 0
		S1_tb <= '0';
		S0_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= '1';
		B_tb <= '0';
		wait for period;
		
		-- Tests add operation with A= 1, B = 0
		S1_tb <= '0';
		S0_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= '1';
		B_tb <= '0';
		wait for period;
		
		-- Tests add operation with A/B = 1
		S1_tb <= '0';
		S0_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= '1';
		B_tb <= '1';
		wait for period;
		
		-- Tests decrement operation with A= 1, B = 0
		S1_tb <= '1';
		S0_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= '1';
		B_tb <= '0';
		wait for period;
		
		-- Tests increment operation with A= 1, B = 0
		S1_tb <= '0';
		S0_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= '1';
		B_tb <= '0';
		wait for period;
		
		-- Tests add+1 operation with A = 0, B = 1
		S1_tb <= '0';
		S0_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= '0';
		B_tb <= '1';
		wait for period;
		
		-- Tests subtract operation with A/B = 1
		S1_tb <= '1';
		S0_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= '1';
		B_tb <= '1';
		wait for period;
		
		-- Tests transfer operation with A/B = 1
		S1_tb <= '1';
		S0_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= '1';
		B_tb <= '1';
		wait for period;
		
		--Logic Testing
		-- Tests anding of A/B = 1
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '0';
		S2_tb <= '1';
		wait for period; 
		
		-- Tests oring of A = 1, B = 0
		a_tb <= '1';
		b_tb <= '0';
		s0_tb <= '1';
		s1_tb <= '0';
		S2_tb <= '1';
		wait for period; 
		
		-- Tests xoring of A = 0, B = 1
		a_tb <= '0';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '1';
		S2_tb <= '1';
		wait for period; 
		
		-- Tests inverting for A = 0
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '1';
		s1_tb <= '1';
		S2_tb <= '1';
		wait for period; 
		
      wait;
   end process;

END;
