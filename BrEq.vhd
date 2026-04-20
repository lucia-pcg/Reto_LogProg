----------------------------------------------------------------------------------
-- Company: 
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:31:07 01/27/2009 
-- Design Name: 
-- Module Name:    BrEq - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: C08: Beq Instruction Multiplexor
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BrEq is
  port(
    InA   : in  STD_LOGIC;
	 InB   : in  STD_LOGIC;
	 Sel   : in  STD_LOGIC;
	 M     : out STD_LOGIC);
end BrEq;

architecture Behavioral of BrEq is

begin
		  
end Behavioral;

