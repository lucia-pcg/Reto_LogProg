----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: Lucía Casas
-- 
-- Create Date:    16:29:16 04/21/2026 
-- Design Name:  ALU.vhd
-- Module Name:  ALU - Behavioral
-- Project Name: Reto Microprocesador 
-- Description: Implementation of the Arithmetic Logic Unit
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    port (
        InA  : in  STD_LOGIC_VECTOR (7 downto 0); -- Operando rs
        InB  : in  STD_LOGIC_VECTOR (7 downto 0); -- Operando rt
        Sel  : in  STD_LOGIC_VECTOR (2 downto 0); -- Código de operación (ALUOp)
        Zero : out STD_LOGIC;                     -- Bandera de cero
        Oper : out STD_LOGIC_VECTOR (7 downto 0)  -- Resultado de la operación
    );
end ALU;

architecture Behavioral of ALU is
    signal Result : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(InA, InB, Sel)
    begin
        case Sel is
            when "000" => Result <= InA + InB;             -- ADD [1]
            when "001" => Result <= InA - InB;             -- SUB [2]
            when "010" => Result <= InA and InB;           -- AND [2]
            when "011" => Result <= InA or InB;            -- OR [2]
            when "100" => Result <= InA xor InB;           -- XOR [3]
            when "101" => Result <= not InA;               -- NOT [3]
            when "110" => Result <= InA(6 downto 0) & '0'; -- SHL (Shift Left) 
            when "111" => Result <= '0' & InA(7 downto 1); -- SHR (Shift Right)
            when others => Result <= (others => '0');
        end case;
    end process;

    Oper <= Result;
    -- Si el resultado es cero, Zero se pone en '1', de lo contrario en '0'
    Zero <= '1' when (Result = "00000000") else '0';
end Behavioral;
