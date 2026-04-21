----------------------------------------------------------------------------------
-- Company: ITESM - Campus Qro.
-- Engineer: H.H.H. Embedded Systems Design Team
-- 
-- Create Date:    16:29:16 01/24/2012 
-- Design Name: 
-- Module Name:    Program Counter 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementation of the Program Counter
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ProgCounter is
  port (
    PCIn  : in  STD_LOGIC_VECTOR (7 downto 0);
	 Clk   : in  STD_LOGIC;
	 Cen   : in  STD_LOGIC;
	 Rst   : in  STD_LOGIC;
    PCOut : out STD_LOGIC_VECTOR (7 downto 0));
end ProgCounter;

architecture Behavioral of ProgCounter is

begin

    process(Clk, Rst)
    begin
        if Rst = '1' then
            -- Al resetear, el PC vuelve a la dirección inicial que es 0
            PCOut <= (others => '0');
        elsif rising_edge(Clk) then
            -- Solo se actualiza si el Clock Enable (Cen) está activo
				-- Libera el numero nuevo, que vuelve a entrar para convertirce en el numero actual
            if Cen = '1' then
                PCOut <= PCIn;
            end if;
        end if;
    end process;

end Behavioral;
