
module NIOSII_JTAG_IO (
	b_external_connection_export,
	clk_clk,
	clk_en_external_connection_export,
	k_external_connection_export,
	reset_reset_n,
	rst_external_connection_export,
	v_external_connection_export,
	x_external_connection_export);	

	output	[17:0]	b_external_connection_export;
	input		clk_clk;
	output		clk_en_external_connection_export;
	output	[17:0]	k_external_connection_export;
	input		reset_reset_n;
	output		rst_external_connection_export;
	output	[17:0]	v_external_connection_export;
	output	[17:0]	x_external_connection_export;
endmodule
