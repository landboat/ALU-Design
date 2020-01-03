----------------------------------------------------------------------------------
-- Company: 	  ENGG 2410
-- Engineer: 	  Owen Douglas
-- 
-- Create Date:   21:14:31 11/20/2019
-- Design Name:   
-- Module Name:   /home/ise/ISE/ALU/ALU_Four_tb.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   VHDL Test Bench Created by ISE for module: ALU_Four

-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_Four_tb IS
END ALU_Four_tb;
 
ARCHITECTURE behavior OF ALU_Four_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Four
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         C_out : OUT  std_logic;
         D : OUT  std_logic_vector(6 downto 0);
         digit0 : OUT  std_logic;
         digit1 : OUT  std_logic;
         digit2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal B_tb : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in_tb : std_logic := '0';
   signal S0_tb : std_logic := '0';
   signal S1_tb : std_logic := '0';
   signal S2_tb : std_logic := '0';

 	--Outputs
   signal C_out_tb : std_logic;
   signal D_tb : std_logic_vector(6 downto 0);
   signal digit0_tb : std_logic;
   signal digit1_tb : std_logic;
   signal digit2_tb : std_logic;
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Four PORT MAP (
          A => A_tb,
          B => B_tb,
          C_in => C_in_tb,
          S0 => S0_tb,
          S1 => S1_tb,
          S2 => S2_tb,
          C_out => C_out_tb,
          D => D_tb,
          digit0 => digit0_tb,
          digit1 => digit1_tb,
          digit2 => digit2_tb
        );

tb : PROCESS
				constant period : time := 20 ns;
	
	begin
	
		-- Arithmetic testing
		
		-- Tests transfer operation with A= 1000, B = 0000
		S0_tb <= '0';
		S1_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= "1000";
		B_tb <= "0000";
		wait for period;
		
		-- Tests increment operation with A= 1110, B = 0000
		S0_tb <= '0';
		S1_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= "1110";
		B_tb <= "0000";
		wait for period;
		
		-- Tests add operation with A = 0010, B = 0001
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= "0010";
		B_tb <= "0001";
		wait for period;
		
		-- Tests add+1 operation with A = 0010, B = 0001
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= "0010";
		B_tb <= "0001";
		wait for period;
		
		-- Tests A + 1's complement of B with A = 0010, B = 0001
		S0_tb <= '0';
		S1_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= "0010";
		B_tb <= "0001";
		wait for period;
		
		-- Tests subtract operation with A = 0010, B = 0001
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= "0010";
		B_tb <= "0001";
		wait for period;
		
		-- Tests decrement operation with A = 0010, B = 0001
		S0_tb <= '1';
		S1_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '0';
		A_tb <= "0010";
		B_tb <= "0001";
		wait for period;
		
		-- Tests transfer operation with A/B = 1111
		S0_tb <= '1';
		S1_tb <= '1';
		S2_tb <= '0';
		C_in_tb <= '1';
		A_tb <= "1111";
		B_tb <= "1111";
		wait for period;
		
		-- Logic testing
		-- Tests anding of A = 0001 and B = 0001
		a_tb <= "0001";
		b_tb <= "0001";
		s0_tb <= '0';
		s1_tb <= '0';
		S2_tb <= '1';
		wait for period; 
		
		-- Tests oring of A = 0001 and b = 0000
		a_tb <= "0001";
		b_tb <= "0000";
		s0_tb <= '1';
		s1_tb <= '0';
		S2_tb <= '1';
		wait for period; 
		
		-- Tests xoring of A = 0001 and B = 0000
		a_tb <= "0000";
		b_tb <= "0001";
		s0_tb <= '0';
		s1_tb <= '1';
		S2_tb <= '1';
		wait for period; 
		
		-- Testing not of A = 0001
		a_tb <= "0001";
		b_tb <= "0001";
		s0_tb <= '1';
		s1_tb <= '1';
		S2_tb <= '1';
		wait for period; 

		wait;
   end process;

END;
