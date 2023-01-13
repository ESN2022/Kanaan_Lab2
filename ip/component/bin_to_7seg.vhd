library ieee;
use ieee.std_logic_1164.all;

entity bin_to_7seg is
    port(
        clk : in std_logic;
        bin : in std_logic_vector(3 downto 0);
        seg : out std_logic_vector(6 downto 0)
    );
end entity;

architecture bin_to_7seg_arch of bin_to_7seg is
    signal temp : std_logic_vector(6 downto 0);
begin
    seg <= temp;
    process(bin)
    begin
        case bin is
            when "0000" => temp <= "1000000";
            when "0001" => temp <= "1111001";
            when "0010" => temp <= "0100100";
            when "0011" => temp <= "0110000";
            when "0100" => temp <= "0011001";
            when "0101" => temp <= "0010010";
            when "0110" => temp <= "0000010";
            when "0111" => temp <= "1111000";
            when "1000" => temp <= "0000000";
            when "1001" => temp <= "0011000";
            when others => temp <= "1000000";
        end case;
    end process;
end architecture;
