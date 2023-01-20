 library ieee;
 use ieee.std_logic_1164.all;

 entity bin_to_7seg is
     port(
         clk : in std_logic;
         bin : in std_logic_vector(3 downto 0);
         seg : out std_logic_vector(7 downto 0)
     );
 end entity;

 architecture bin_to_7seg_arch of bin_to_7seg is
     signal temp : std_logic_vector(7 downto 0);
 begin
     seg <= temp;
     process(bin)
     begin
         case bin is
             when "0000" => temp <= not("00111111");
             when "0001" => temp <= not("00000110");
             when "0010" => temp <= not("01011011");
             when "0011" => temp <= not("01001111");
             when "0100" => temp <= not("01100110");
             when "0101" => temp <= not("11101101");
             when "0110" => temp <= not("01111101");
             when "0111" => temp <= not("00000111");
             when "1000" => temp <= not("01111111");
             when "1001" => temp <= not("01101111");
             when others => temp <= not("00000000");
         end case;
     end process;
 end architecture;
