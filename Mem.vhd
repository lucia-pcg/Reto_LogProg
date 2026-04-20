----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. TE2002B
-- 
-- Create Date:    16:29:16 04/09/2026 
-- Design Name: 
-- Module Name:    Mem 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementation of a ROM memory 256 x 21
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mem is
  generic (
    n : natural :=  8;  -- Number of ROM locations = 2^n
	 m : natural := 21);  -- Width of every ROM location
  port(
    Addr   : in  STD_LOGIC_VECTOR (7 downto 0);
	 DataOp : out STD_LOGIC_VECTOR (3 downto 0); 
	 Datars : out STD_LOGIC_VECTOR (2 downto 0); 
	 Datart : out STD_LOGIC_VECTOR (2 downto 0); 
	 Datard : out STD_LOGIC_VECTOR (2 downto 0); 
	 Datai  : out STD_LOGIC_VECTOR (7 downto 0)); 
end entity;

architecture Behavioral of Mem is

begin
  
end Behavioral;