----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Lucía Casas
-- 
-- Create Date:    16:20:00 04/20/2026
-- Design Name: 	 BrEq
-- Module Name:    BrEq - Behavioral 
-- Project Name: 	 Reto Microprocesador
-- Description: C08: Beq Instruction Multiplexor
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BrEq is
    port (
        InA : in  STD_LOGIC; -- Conectado a PCInc
        InB : in  STD_LOGIC; -- Conectado a ALUZero
        Sel : in  STD_LOGIC; -- Conectado a Beq (Selección de instrucción)
        M   : out STD_LOGIC  -- Salida BrEqM (Controla si se suma el inmediato al PC)
    );
end BrEq;

architecture Behavioral of BrEq is
begin
    -- Si Sel (Beq) es '1', la decisión depende de si son iguales (InB)
    -- Si Sel es '0', sigue el flujo de incremento normal (InA)
    M <= InB when (Sel = '1') else InA;
end Behavioral;
