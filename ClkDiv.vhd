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
    Fout : natural);
  port (
    Clkin  : in  STD_LOGIC;
    Rst    : in  STD_LOGIC;
    Clkout : out STD_LOGIC);
end ClkDiv;

architecture Behavioral of ClkDiv is

begin
  
end Behavioral;









