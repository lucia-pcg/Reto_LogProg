----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:29:16 01/24/2012 
-- Design Name: 
-- Module Name:    ALU 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementation of the Arithmetic Logic Unit
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
  port (
    InA   : in  STD_LOGIC_VECTOR (7 downto 0);
	 InB   : in  STD_LOGIC_VECTOR (7 downto 0);
	 Sel   : in  STD_LOGIC_VECTOR (2 downto 0);
	 Zero  : out STD_LOGIC;
	 Oper  : out STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture Behavioral of ALU is

begin
	
end Behavioral;