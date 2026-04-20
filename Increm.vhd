----------------------------------------------------------------------------------
-- Company: 
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    15:23:32 01/28/2009 
-- Design Name: 
-- Module Name:    Increm - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Increm is
  port(
    InA   : in  STD_LOGIC_VECTOR(7 downto 0);
	 InB   : in  STD_LOGIC_VECTOR(7 downto 0);
	 Sel   : in  STD_LOGIC;
	 M     : out STD_LOGIC_VECTOR(7 downto 0));	
end Increm;

architecture Behavioral of Increm is

begin

end Behavioral;

