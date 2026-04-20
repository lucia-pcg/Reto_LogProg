----------------------------------------------------------------------------------
-- Company: 
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:37:50 01/28/2009 
-- Design Name: 
-- Module Name:    Reg8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: C11, C12: 8 bit register used for 7 segment display and LEDs
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

entity Reg8 is
  port (
    Inrs   : in  STD_LOGIC_VECTOR (7 downto 0);
	 En     : in  STD_LOGIC;
	 Clk    : in  STD_LOGIC;
	 Cen    : in  STD_LOGIC;
	 Rst    : in  STD_LOGIC;
	 OutD   : out STD_LOGIC_VECTOR (7 downto 0));
end Reg8;

architecture Behavioral of Reg8 is

begin

end Behavioral;









