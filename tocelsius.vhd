library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tocelsius is
  port(
    binary : in unsigned(11 downto 0);
    centigrados : out unsigned(23 downto 0)
    );
end tocelsius;

architecture rtl of tocelsius is
  constant cien : integer := 100;
  constant cuatromil : integer := 4095;
begin
  centigrados <= (binary * cien) / cuatromil;
end rtl;
