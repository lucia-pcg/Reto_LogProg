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
-- Description: Implementation of a generic frequency divider
--              with no clock skew
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClkDiv is
  generic (
    Fout : natural := 5);
  port (
    Clkin  : in  STD_LOGIC;
    Rst    : in  STD_LOGIC;
    Clkout : out STD_LOGIC
  );
end ClkDiv;

architecture Behavioral of ClkDiv is

 
  constant Fin : natural := 50000000;
  
  constant MaxCount : natural := Fin / Fout;
  
  signal count : natural range 0 to MaxCount := 0;

begin

  process(Clkin, Rst)
  begin
    if Rst = '1' then
      count <= 0;
      Clkout <= '0';
      
    elsif rising_edge(Clkin) then
      
      if count = MaxCount - 1 then
        count <= 0;       
        Clkout <= '1';    
      else
        count <= count + 1; 
        Clkout <= '0';      
      end if;
      
    end if;
  end process;

end Behavioral;






