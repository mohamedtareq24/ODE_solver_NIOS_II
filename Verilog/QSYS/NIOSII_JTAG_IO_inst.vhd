	component NIOSII_JTAG_IO is
		port (
			b_external_connection_export      : out std_logic_vector(17 downto 0);        -- export
			clk_clk                           : in  std_logic                     := 'X'; -- clk
			clk_en_external_connection_export : out std_logic;                            -- export
			k_external_connection_export      : out std_logic_vector(17 downto 0);        -- export
			reset_reset_n                     : in  std_logic                     := 'X'; -- reset_n
			rst_external_connection_export    : out std_logic;                            -- export
			v_external_connection_export      : out std_logic_vector(17 downto 0);        -- export
			x_external_connection_export      : out std_logic_vector(17 downto 0)         -- export
		);
	end component NIOSII_JTAG_IO;

	u0 : component NIOSII_JTAG_IO
		port map (
			b_external_connection_export      => CONNECTED_TO_b_external_connection_export,      --      b_external_connection.export
			clk_clk                           => CONNECTED_TO_clk_clk,                           --                        clk.clk
			clk_en_external_connection_export => CONNECTED_TO_clk_en_external_connection_export, -- clk_en_external_connection.export
			k_external_connection_export      => CONNECTED_TO_k_external_connection_export,      --      k_external_connection.export
			reset_reset_n                     => CONNECTED_TO_reset_reset_n,                     --                      reset.reset_n
			rst_external_connection_export    => CONNECTED_TO_rst_external_connection_export,    --    rst_external_connection.export
			v_external_connection_export      => CONNECTED_TO_v_external_connection_export,      --      v_external_connection.export
			x_external_connection_export      => CONNECTED_TO_x_external_connection_export       --      x_external_connection.export
		);

