-----------------------------------------------------------------------------------------
-- Block wr_memory: writes into a RAM memory in order to have a 32x32 square represented on a VGA screen
-- x_t: 9 MSB of left top column coordinate
-- y_t: 8 MSB of left top row coordinate
-- color_t: RGB components of the square to plot
-- DONE: is going to be active only 1 period of clock when the writing process is finished
-- Start: order to start writing the memory.
-- Author: Josep Altet. Date: 12-02-2019.
-- Electronic System Design for Communications - ESDC - ETSTB. UPC. Barcelona.
----------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity wr_memory is
  port( clk_25, start 	: in std_logic;
		x_t				: in std_logic_vector(9 downto 1);
		y_t				: in std_logic_vector(8 downto 1);
		color_t 			: in std_logic_vector(2 downto 0);
		we, done		: out std_logic;
		data 			: out std_logic_vector(2 downto 0);
		adr_memo		: out std_logic_vector(16 downto 0) );
end wr_memory;


architecture functional of wr_memory is
  -- State definition:
  type state_memo is (s0, s1, s2, s3, s4, s5, s6);
  -- Internal signals
  -- Output of the state register
  signal st_write : state_memo;
  -- Internal address memory bus
  signal address_t : std_logic_vector(16 downto 0);
  -- Output of two counters
  signal i, j : integer range 0 to 8; 

Begin
-- Control Unit for memo operation:
-- All signals updated inside if (clk_25'event and clk_25='1') are output of registers!!
-- With this VHDL description, Control Unit and Process Unit are described with one single Process.
-- Control Unit: state flow.
-- Process Unit: Blocks that process data (counters, registers).
-- Control signals: they are not specified in the VHDL description, but they will be in the final implemented design. 
-- Only output control signals are presented.
	process(clk_25)
	Begin
		if (clk_25'event and clk_25='1') then
		case st_write is
			when s0  => if start = '1' then st_write <= s1; end if;
			when s1 => st_write <= s2;
				j <= 0; i <= 0;
				-- adress = y(8:1) concatenated with x(9:1)
				address_t(16 downto 9) <= y_t(8 downto 1);
				address_t(8 downto 0) <= x_t(9 downto 1);
				data <= color_t;
			-- In s2 wr_memo should be active and data is stored in the cell address_t.
			when s2 => st_write <= s3; 
			    i <= i+1;  -- i loop: to write a square row.
			    
			when s3 => if (i<8) then st_write <= s2; address_t <= address_t + 1; 
						else st_write <= s4; end if;
			when s4 => st_write <= s5;
				i <= 0; j <= j+1;  -- Now we are writting the following square row
			when s5 => if (j<8) then st_write <= s2; 
						address_t(16 downto 9) <= address_t(16 downto 9) +1;
						address_t(8 downto 0) <= x_t(9 downto 1);
						else st_write <= s6; end if;
					--address_t(16 downto 9) <= y_t(8 downto 1);
					--address_t(8 downto 0) <= x_t(9 downto 1);
			when s6 => st_write <= s0;
		End Case;
		End If;
	End process;
	
-- Combinationals outputs of the control unit to operate with memory:
we <= '1' when st_write = s2 else '0';
done <= '1' when st_write = s6 else '0';
adr_memo <= address_t;

End functional;
	