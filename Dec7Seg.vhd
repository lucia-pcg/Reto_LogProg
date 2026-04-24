----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:29:16 04/23/2026 
-- Design Name: 
-- Module Name:    Dec7Seg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Bin to Seven Segment Decoder
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Dec7Seg is
  port (
    InR    : in  STD_LOGIC_VECTOR (3 downto 0);
    Seg    : out STD_LOGIC_VECTOR (7 downto 0) -- 8 bits: DP, g, f, e, d, c, b, a
  );
end Dec7Seg;

architecture Behavioral of Dec7Seg is
begin
    process(InR)
    begin
        case InR is 
            -- Formato: "DP g f e d c b a" (0 = encendido, 1 = apagado)
            when "0000" => Seg <= "11000000"; -- 0 (DP off, g off, otros on)
            when "0001" => Seg <= "11111001"; -- 1
            when "0010" => Seg <= "10100100"; -- 2
            when "0011" => Seg <= "10110000"; -- 3
            when "0100" => Seg <= "10011001"; -- 4
            when "0101" => Seg <= "10010010"; -- 5
            when "0110" => Seg <= "10000010"; -- 6
            when "0111" => Seg <= "11111000"; -- 7
            when "1000" => Seg <= "10000000"; -- 8
            when "1001" => Seg <= "10010000"; -- 9
            when "1010" => Seg <= "10001000"; -- A
            when "1011" => Seg <= "10000011"; -- b
            when "1100" => Seg <= "11000110"; -- C
            when "1101" => Seg <= "10100001"; -- d
            when "1110" => Seg <= "10000110"; -- E
            when "1111" => Seg <= "10001110"; -- F
            when others => Seg <= "11111111"; -- Todo apagado
        end case;    
    end process;
end Behavioral;
