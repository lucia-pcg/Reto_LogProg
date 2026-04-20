----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:32 01/27/2009 
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: C09, C10: 8-bit 4 to 1 multiplexors used by the JiJr
--              jumps and the data value for Registers
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

entity Mux4to1 is
  port(
    InA   : in  STD_LOGIC_VECTOR (7 downto 0);
	 InB   : in  STD_LOGIC_VECTOR (7 downto 0);
	 InC   : in  STD_LOGIC_VECTOR (7 downto 0);
	 InD   : in  STD_LOGIC_VECTOR (7 downto 0);
	 Sel   : in  STD_LOGIC_VECTOR (1 downto 0);
	 M     : out STD_LOGIC_VECTOR (7 downto 0));
end Mux4to1;

architecture Behavioral of Mux4to1 is

begin
		  
end Behavioral;
 