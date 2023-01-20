library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab2 is
	port (
		clock    :	in		std_logic :='0';
		reset    :	in		std_logic :='0';
		out_seg	:	out	std_logic_vector(23 downto 0)
	);
end entity;

architecture RTL of lab2 is
	--signals
	signal out_signal : std_logic_vector (11 downto 0);
	
	--components
	component bin_to_7seg is
		port(
			bin	:	in		std_logic_vector(3 downto 0);
			seg	:	out	std_logic_vector(7 downto 0)
		);
	end component bin_to_7seg;
	
	component lab2_qsys is
		port (
			clk_clk                          : in  std_logic                    := 'X'; -- clk
			pio_0_external_connection_export : out std_logic_vector(11 downto 0);        -- export
			reset_reset_n                    : in  std_logic                    := 'X'  -- reset_n
		);
    end component lab2_qsys;
	
	begin
	
	PIO : component lab2_qsys
     port map (
         clk_clk                          => clock,   -- clk.clk
         pio_0_external_connection_export => out_signal, -- pio_0_external_connection.export
         reset_reset_n                    => reset    -- reset.reset_n
      );
	
	seven_seg1 : component bin_to_7seg
			port map (
				bin => out_signal	(3 downto 0) := (others => 'X'),
				seg => out_seg		(7 downto 0)
	);
	seven_seg2 : component bin_to_7seg
		port map (
			bin => out_signal	(7 downto 4),
			seg => out_seg		(15 downto 8)
	);
	
	seven_seg3 : component bin_to_7seg
		port map (
			bin => out_signal	(11 downto 8),
			seg => out_seg		(23 downto 16)
	);
	
end architecture;