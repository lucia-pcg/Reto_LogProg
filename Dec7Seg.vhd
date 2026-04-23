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
	process(InR)
	begin
		case InR is 
		
		when "0000" => Seg <= "10000000"; --0
		when "0001" => Seg <= "1111001";
		when "0010" => Seg <= "0100100";
		when "0011" => Seg <= "0110000";
		when "0100" => Seg <= "0011001";
		when "0101" => Seg <= "0010010";
		when "0110" => Seg <= "0000010";
		when "0111" => Seg <= "1111000";
		when "1000" => Seg <= "0000000";
		when "1001" => Seg <= "0010000";
		when "1010" => Seg <= "0001000";
		when "1011" => Seg <= "0000011";
		when "1100" => Seg <= "1000110";
		when "1101" => Seg <= "0100001";
		when "1110" => Seg <= "0000110";
		when "1111" => Seg <= "0001110";
		when others => Seg <= "1111111";

end Behavioral;

