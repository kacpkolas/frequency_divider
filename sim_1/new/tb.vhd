----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2024 18:51:21
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

component top is
    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           led_o : out STD_LOGIC);
end component top;

signal clk_i: std_logic:='0';
signal rst_i: std_logic:='0';
signal led_o: std_logic;

begin
dut: top port map(
clk_i => clk_i,
rst_i => rst_i,
led_o => led_o
);
    
    clk_i <= not clk_i after 50us;
        
stim: process
    begin
       wait for 100us;
       rst_i <= '1';
       wait for 100us;
       rst_i <= '0';
       wait for 300us;
       rst_i<='1';
       wait for 300us;
       rst_i <= '0';
       wait;
    end process;
        
        



end Behavioral;
