----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:51:16 11/29/2012 
-- Design Name: 
-- Module Name:    SenderControl - Behavioral 
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

entity SenderControl is
    Port ( go : in  STD_LOGIC;
           Fs_d : in  STD_LOGIC;
           Ch1 : in  STD_LOGIC;
           Ch2 : in  STD_LOGIC;
           Up : in  STD_LOGIC;
           Down : in  STD_LOGIC;
           X0_d : in  STD_LOGIC;
           0_d : in  STD_LOGIC;
           1_d : in  STD_LOGIC;
           Fe_d : in  STD_LOGIC;
           Fs : out  STD_LOGIC;
           Fs_sen : out  STD_LOGIC;
           Zero : out  STD_LOGIC;
           Zero_sen : out  STD_LOGIC;
           One : out  STD_LOGIC;
           One_sen : out  STD_LOGIC;
           X0 : out  STD_LOGIC;
           X0_sen : out  STD_LOGIC;
           Fe : out  STD_LOGIC;
           Fe_sen : out  STD_LOGIC);
end SenderControl;

architecture Behavioral of SenderControl is

begin


end Behavioral;

