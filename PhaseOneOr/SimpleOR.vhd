----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:03 11/12/2012 
-- Design Name: 
-- Module Name:    SimpleOR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SimpleOR is
    Port ( A_UP : in  STD_LOGIC;
           A_DOWN : in  STD_LOGIC;
           B_UP : in  STD_LOGIC;
           B_DOWN : in  STD_LOGIC;
           CH_OUT : out  STD_LOGIC);
end SimpleOR;

architecture Behavioral of SimpleOR is

begin


end Behavioral;

