--------------------------------------------------------------------------------
-- Company:       ENGG 2410
-- Engineer:      Owen Douglas
--
-- Create Date:   16:36:04 11/15/2019
-- Design Name:   
-- Module Name:   /home/ise/bit_binary_logic_VHDL/binary_logic_tb.vhd
-- Project Name:  bit_binary_logic_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   VHDL Test Bench Created by ISE for module: logic_unit

-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY binary_logic_tb IS
END binary_logic_tb;
 
ARCHITECTURE behavior OF binary_logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_unit
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_tb : std_logic := '0';
   signal b_tb : std_logic := '0';
   signal s0_tb : std_logic := '0';
   signal s1_tb : std_logic := '0';
	signal y_tb : std_logic := '0';

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_unit PORT MAP (
          a => a_tb,
          b => b_tb,
          s0 => s0_tb,
          s1 => s1_tb,
          y => y_tb
        );

	tb : PROCESS
		constant period: time := 20 ns;
		
	begin
	
		-- Testing AND with a/b = 0
		a_tb <= '0';
		b_tb <= '0';
		s0_tb <= '0';
		s1_tb <= '0';	
		wait for period; 		 		
		
		-- Testing AND with a = 0, b = 1
		a_tb <= '0';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '0';	
		wait for period; 		
		
		-- Testing AND with a = 1, b = 0
		a_tb <= '1';
		b_tb <= '0';
		s0_tb <= '0';
		s1_tb <= '0';	
		wait for period; 	

		-- Testing AND with a/b = 1
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '0';	
		wait for period; 			
	
		-- Testing OR with a/b = 0
		a_tb <= '0';
		b_tb <= '0';
		s0_tb <= '1';
		s1_tb <= '0';
		wait for period; 

		-- Testing OR with a = 0, b = 1
		a_tb <= '0';
		b_tb <= '1';
		s0_tb <= '1';
		s1_tb <= '0';	
		wait for period; 
		
		-- Testing OR with a = 1, b = 0
		a_tb <= '1';
		b_tb <= '0';
		s0_tb <= '1';
		s1_tb <= '0';
		wait for period; 
		
		-- Testing OR with a/b = 1
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '1';
		s1_tb <= '0';	
		wait for period; 

		-- Testing XOR with a/b = 0
		a_tb <= '0';
		b_tb <= '0';
		s0_tb <= '0';
		s1_tb <= '1';	
		wait for period; 
		
		-- Testing XOR with a = 0, b = 1
		a_tb <= '0';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '1';	
		wait for period; 
		
		-- Testing XOR with a = 1, b = 0
		a_tb <= '1';
		b_tb <= '0';
		s0_tb <= '0';
		s1_tb <= '1';
		wait for period; 
		
		-- Testing XOR with a/b = 1
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '0';
		s1_tb <= '1';
		wait for period; 
		
		-- Testing NOT with a = 0, b = 1
		a_tb <= '0';
		b_tb <= '1';
		s0_tb <= '1';
		s1_tb <= '1';	
		wait for period; 
		
		-- Testing NOT with a/b = 1
		a_tb <= '1';
		b_tb <= '1';
		s0_tb <= '1';
		s1_tb <= '1';
		wait for period; 
		
	wait;
	end process;	
END;
