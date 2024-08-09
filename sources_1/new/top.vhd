----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2024 18:28:06
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC);
end top;

architecture Behavioral of top is

signal divided_freq: std_logic;

begin
    process(clk_i, rst_i)
    variable N: INTEGER:=10;
    variable counter: INTEGER:=0;
    begin
    if rising_edge(clk_i) then  
    if rst_i='1' then
    divided_freq <= '0';
    counter:=0;
    elsif  counter=N/2-1 then
    counter:=0;
    divided_freq <= not divided_freq;
       --uzyj petli while w calym (while rst_i=0)
    else 
    counter:=counter+1;
    end if;
        
    
    end if;
    
    
    
    end process;
  
 led_o <= divided_freq;       
        


end Behavioral;


