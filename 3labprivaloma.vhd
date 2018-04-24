library ieee;
use ieee.std_logic_1164.all;
 
entity lab3privaloma is
  port (
	i_bit0    : in  std_logic;
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
    o_bit0 : out std_logic;
	o_bit1 : out std_logic;
	o_bit2 : out std_logic);
end lab3privaloma;
 
architecture rtl of lab3privaloma is
begin
  o_bit0 <= (i_bit0 and i_bit1) and (i_bit2 and i_bit3);
  o_bit1 <= '1' when ((i_bit0 and i_bit1) and (i_bit2 and i_bit3)) = '1' else '0';
  with (i_bit0 and i_bit1) and (i_bit2 and i_bit3) select
  o_bit2 <= '1' when '1',
			'0' when '0',
			'0' when others;
end rtl;