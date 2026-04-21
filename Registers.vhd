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

-- Creamos nuestro grupo de 8 registros
    type RAM is array (0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
    signal Regs : RAM := (others => (others => '0'));
begin

    -- LECTURA Combinacional (Asíncrona)
    -- En cuanto cambias el número de SelA o SelB, el valor de OutA o OutB cambia
    OutA <= Regs(conv_integer(SelA));
    OutB <= Regs(conv_integer(SelB));

    -- ESCRITURA (Guardar información)
    process(Clk, Rst)
    begin
        if Rst = '1' then
            Regs <= (others => (others => '0'));
        elsif rising_edge(Clk) then
            if Cen = '1' and WE = '1' then
                -- Guardamos el dato en el registro elegido por SelWR
                Regs(conv_integer(SelWR)) <= Data;
            end if;
        end if;
    end process;


end Behavioral;
