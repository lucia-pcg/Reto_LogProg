----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:29:16 01/24/2012 
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Bin to Seven Segment Decoder
----------------------------------------------------------------------------------
library IEEE;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Dec7Seg is
  --C13 and C14: Hex to 7 seg decoder
  port (
    InR    : in  STD_LOGIC_VECTOR (3 downto 0);
	 Seg    : out STD_LOGIC_VECTOR (7 downto 0));
end Dec7Seg;

architecture Behavioral of Dec7Seg is

begin

end Behavioral;

