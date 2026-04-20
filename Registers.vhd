----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:29:16 01/24/2012 
-- Design Name: 
-- Module Name:    Registers 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementation of the Registers
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Registers is
  port(
    SelA  : in  STD_LOGIC_VECTOR (2 downto 0);
	 SelB  : in  STD_LOGIC_VECTOR (2 downto 0);
	 SelWR : in  STD_LOGIC_VECTOR (2 downto 0);
	 Data  : in  STD_LOGIC_VECTOR (7 downto 0);
	 Clk   : in  STD_LOGIC;
	 Cen   : in  STD_LOGIC;
	 Rst   : in  STD_LOGIC;
	 WE    : in  STD_LOGIC;
	 OutA  : out STD_LOGIC_VECTOR (7 downto 0);
	 OutB  : out STD_LOGIC_VECTOR (7 downto 0));
end Registers;

architecture Behavioral of Registers is

begin
  
end Behavioral;

