----------------------------------------------------------------------------------
-- Company:
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    12:33:24 01/30/2009 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: C06: Program Counter Adder
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

entity FullAdder is
  port(
    InA   : in  STD_LOGIC_VECTOR (7 downto 0);
	 InB   : in  STD_LOGIC_VECTOR (7 downto 0);
	 S     : out STD_LOGIC_VECTOR (7 downto 0));
end FullAdder;

architecture Behavioral of FullAdder is

begin

end Behavioral;

