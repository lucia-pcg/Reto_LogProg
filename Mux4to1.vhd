----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Lucía Casas
-- 
-- Create Date:    16:15:00 04/20/2026
-- Design Name:	 Mux4to1.vhd
-- Module Name:    Mux4to1 - Behavioral
-- Project Name: 	 Reto Microprocesador
-- Description: C09, C10: 8-bit 4 to 1 multiplexors used by the JiJr
--              jumps and the data value for Registers
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4to1 is
    port (
        InA : in  STD_LOGIC_VECTOR (7 downto 0);
        InB : in  STD_LOGIC_VECTOR (7 downto 0);
        InC : in  STD_LOGIC_VECTOR (7 downto 0);
        InD : in  STD_LOGIC_VECTOR (7 downto 0);
        Sel : in  STD_LOGIC_VECTOR (1 downto 0); -- Señal de selección de 2 bits
        M   : out STD_LOGIC_VECTOR (7 downto 0)  -- Salida del dato seleccionado
    );
end Mux4to1;

architecture Behavioral of Mux4to1 is
begin
    process(InA, InB, InC, InD, Sel)
    begin
        case Sel is
            when "00" => M <= InA;
            when "01" => M <= InB;
            when "10" => M <= InC;
            when "11" => M <= InD;
            when others => M <= (others => '0');
        end case;
    end process;
end Behavioral;
