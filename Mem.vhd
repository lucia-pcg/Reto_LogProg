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
    m : natural := 21); -- Width of every ROM location
  port(
    Addr   : in  STD_LOGIC_VECTOR (7 downto 0);
    DataOp : out STD_LOGIC_VECTOR (3 downto 0); 
    Datars : out STD_LOGIC_VECTOR (2 downto 0); 
    Datart : out STD_LOGIC_VECTOR (2 downto 0); 
    Datard : out STD_LOGIC_VECTOR (2 downto 0); 
    Datai  : out STD_LOGIC_VECTOR (7 downto 0)); 
end entity;

architecture Behavioral of Mem is

 
  type rom_type is array (0 to (2**n)-1) of STD_LOGIC_VECTOR(m-1 downto 0);

  -- Declaramos la ROM con la info
  constant MY_ROM : rom_type := (
    0 => '1'&x"00000",
    1 => '1'&x"00101",
    2 => '1'&x"002E9",
    3 => '0'&x"00B00",
    4 => '1'&x"AC000",
    5 => '0'&x"44800",
    6 => '0'&x"4D900",
    7 => '1'&x"4D002",
    8 => '1'&x"60003",
    9 => '1'&x"60009",
    
    -- Rellenamos el resto de las localidades con ceros
    others => (others => '0') 
  );

  -- Señal para cargar la instrucción 
  signal instruction : STD_LOGIC_VECTOR(m-1 downto 0);

begin

  instruction <= MY_ROM(conv_integer(Addr));

 
  DataOp <= instruction(20 downto 17);
  Datars <= instruction(16 downto 14);
  Datart <= instruction(13 downto 11);
  Datard <= instruction(10 downto  8);
  Datai  <= instruction( 7 downto  0);

end Behavioral;
