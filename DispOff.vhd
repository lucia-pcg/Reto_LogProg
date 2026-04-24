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
-- Description: Turn unused Displays off
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DispOff is
  port (
    Turnoff: out STD_LOGIC_VECTOR (31 downto 0)
  );
end DispOff;

architecture Behavioral of DispOff is

begin
  -- Al usar (others => '1'), le decimos al compilador que llene
  -- los 32 bits del vector con 1 para que los 4 displays extra estén apagados.
  Turnoff <= (others => '1');

end Behavioral;

