// NIOSII_JTAG_IO.v

// Generated using ACDS version 20.1 711

`timescale 1 ps / 1 ps
module NIOSII_JTAG_IO (
		output wire [17:0] b_external_connection_export,      //      b_external_connection.export
		input  wire        clk_clk,                           //                        clk.clk
		output wire        clk_en_external_connection_export, // clk_en_external_connection.export
		output wire [17:0] k_external_connection_export,      //      k_external_connection.export
		input  wire        reset_reset_n,                     //                      reset.reset_n
		output wire        rst_external_connection_export,    //    rst_external_connection.export
		output wire [17:0] v_external_connection_export,      //      v_external_connection.export
		output wire [17:0] x_external_connection_export       //      x_external_connection.export
	);

	wire  [31:0] nios2_gen2_0_data_master_readdata;                          // mm_interconnect_0:nios2_gen2_0_data_master_readdata -> nios2_gen2_0:d_readdata
	wire         nios2_gen2_0_data_master_waitrequest;                       // mm_interconnect_0:nios2_gen2_0_data_master_waitrequest -> nios2_gen2_0:d_waitrequest
	wire         nios2_gen2_0_data_master_debugaccess;                       // nios2_gen2_0:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_gen2_0_data_master_debugaccess
	wire  [15:0] nios2_gen2_0_data_master_address;                           // nios2_gen2_0:d_address -> mm_interconnect_0:nios2_gen2_0_data_master_address
	wire   [3:0] nios2_gen2_0_data_master_byteenable;                        // nios2_gen2_0:d_byteenable -> mm_interconnect_0:nios2_gen2_0_data_master_byteenable
	wire         nios2_gen2_0_data_master_read;                              // nios2_gen2_0:d_read -> mm_interconnect_0:nios2_gen2_0_data_master_read
	wire         nios2_gen2_0_data_master_write;                             // nios2_gen2_0:d_write -> mm_interconnect_0:nios2_gen2_0_data_master_write
	wire  [31:0] nios2_gen2_0_data_master_writedata;                         // nios2_gen2_0:d_writedata -> mm_interconnect_0:nios2_gen2_0_data_master_writedata
	wire  [31:0] nios2_gen2_0_instruction_master_readdata;                   // mm_interconnect_0:nios2_gen2_0_instruction_master_readdata -> nios2_gen2_0:i_readdata
	wire         nios2_gen2_0_instruction_master_waitrequest;                // mm_interconnect_0:nios2_gen2_0_instruction_master_waitrequest -> nios2_gen2_0:i_waitrequest
	wire  [15:0] nios2_gen2_0_instruction_master_address;                    // nios2_gen2_0:i_address -> mm_interconnect_0:nios2_gen2_0_instruction_master_address
	wire         nios2_gen2_0_instruction_master_read;                       // nios2_gen2_0:i_read -> mm_interconnect_0:nios2_gen2_0_instruction_master_read
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect;   // mm_interconnect_0:jtag_uart_avalon_jtag_slave_chipselect -> jtag_uart:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata;     // jtag_uart:av_readdata -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest;  // jtag_uart:av_waitrequest -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_address;      // mm_interconnect_0:jtag_uart_avalon_jtag_slave_address -> jtag_uart:av_address
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_read;         // mm_interconnect_0:jtag_uart_avalon_jtag_slave_read -> jtag_uart:av_read_n
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_write;        // mm_interconnect_0:jtag_uart_avalon_jtag_slave_write -> jtag_uart:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata;    // mm_interconnect_0:jtag_uart_avalon_jtag_slave_writedata -> jtag_uart:av_writedata
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata;    // nios2_gen2_0:debug_mem_slave_readdata -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest; // nios2_gen2_0:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess; // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_debugaccess -> nios2_gen2_0:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address;     // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_address -> nios2_gen2_0:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read;        // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_read -> nios2_gen2_0:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable;  // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_byteenable -> nios2_gen2_0:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write;       // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_write -> nios2_gen2_0:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata;   // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_writedata -> nios2_gen2_0:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_memory_s1_chipselect;              // mm_interconnect_0:onchip_memory_s1_chipselect -> onchip_memory:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_readdata;                // onchip_memory:readdata -> mm_interconnect_0:onchip_memory_s1_readdata
	wire  [11:0] mm_interconnect_0_onchip_memory_s1_address;                 // mm_interconnect_0:onchip_memory_s1_address -> onchip_memory:address
	wire   [3:0] mm_interconnect_0_onchip_memory_s1_byteenable;              // mm_interconnect_0:onchip_memory_s1_byteenable -> onchip_memory:byteenable
	wire         mm_interconnect_0_onchip_memory_s1_write;                   // mm_interconnect_0:onchip_memory_s1_write -> onchip_memory:write
	wire  [31:0] mm_interconnect_0_onchip_memory_s1_writedata;               // mm_interconnect_0:onchip_memory_s1_writedata -> onchip_memory:writedata
	wire         mm_interconnect_0_onchip_memory_s1_clken;                   // mm_interconnect_0:onchip_memory_s1_clken -> onchip_memory:clken
	wire         mm_interconnect_0_v_s1_chipselect;                          // mm_interconnect_0:v_s1_chipselect -> v:chipselect
	wire  [31:0] mm_interconnect_0_v_s1_readdata;                            // v:readdata -> mm_interconnect_0:v_s1_readdata
	wire   [1:0] mm_interconnect_0_v_s1_address;                             // mm_interconnect_0:v_s1_address -> v:address
	wire         mm_interconnect_0_v_s1_write;                               // mm_interconnect_0:v_s1_write -> v:write_n
	wire  [31:0] mm_interconnect_0_v_s1_writedata;                           // mm_interconnect_0:v_s1_writedata -> v:writedata
	wire         mm_interconnect_0_x_s1_chipselect;                          // mm_interconnect_0:x_s1_chipselect -> x:chipselect
	wire  [31:0] mm_interconnect_0_x_s1_readdata;                            // x:readdata -> mm_interconnect_0:x_s1_readdata
	wire   [1:0] mm_interconnect_0_x_s1_address;                             // mm_interconnect_0:x_s1_address -> x:address
	wire         mm_interconnect_0_x_s1_write;                               // mm_interconnect_0:x_s1_write -> x:write_n
	wire  [31:0] mm_interconnect_0_x_s1_writedata;                           // mm_interconnect_0:x_s1_writedata -> x:writedata
	wire         mm_interconnect_0_b_s1_chipselect;                          // mm_interconnect_0:b_s1_chipselect -> b:chipselect
	wire  [31:0] mm_interconnect_0_b_s1_readdata;                            // b:readdata -> mm_interconnect_0:b_s1_readdata
	wire   [1:0] mm_interconnect_0_b_s1_address;                             // mm_interconnect_0:b_s1_address -> b:address
	wire         mm_interconnect_0_b_s1_write;                               // mm_interconnect_0:b_s1_write -> b:write_n
	wire  [31:0] mm_interconnect_0_b_s1_writedata;                           // mm_interconnect_0:b_s1_writedata -> b:writedata
	wire         mm_interconnect_0_k_s1_chipselect;                          // mm_interconnect_0:k_s1_chipselect -> k:chipselect
	wire  [31:0] mm_interconnect_0_k_s1_readdata;                            // k:readdata -> mm_interconnect_0:k_s1_readdata
	wire   [1:0] mm_interconnect_0_k_s1_address;                             // mm_interconnect_0:k_s1_address -> k:address
	wire         mm_interconnect_0_k_s1_write;                               // mm_interconnect_0:k_s1_write -> k:write_n
	wire  [31:0] mm_interconnect_0_k_s1_writedata;                           // mm_interconnect_0:k_s1_writedata -> k:writedata
	wire         mm_interconnect_0_rst_s1_chipselect;                        // mm_interconnect_0:rst_s1_chipselect -> rst:chipselect
	wire  [31:0] mm_interconnect_0_rst_s1_readdata;                          // rst:readdata -> mm_interconnect_0:rst_s1_readdata
	wire   [1:0] mm_interconnect_0_rst_s1_address;                           // mm_interconnect_0:rst_s1_address -> rst:address
	wire         mm_interconnect_0_rst_s1_write;                             // mm_interconnect_0:rst_s1_write -> rst:write_n
	wire  [31:0] mm_interconnect_0_rst_s1_writedata;                         // mm_interconnect_0:rst_s1_writedata -> rst:writedata
	wire         mm_interconnect_0_clk_en_s1_chipselect;                     // mm_interconnect_0:clk_en_s1_chipselect -> clk_en:chipselect
	wire  [31:0] mm_interconnect_0_clk_en_s1_readdata;                       // clk_en:readdata -> mm_interconnect_0:clk_en_s1_readdata
	wire   [1:0] mm_interconnect_0_clk_en_s1_address;                        // mm_interconnect_0:clk_en_s1_address -> clk_en:address
	wire         mm_interconnect_0_clk_en_s1_write;                          // mm_interconnect_0:clk_en_s1_write -> clk_en:write_n
	wire  [31:0] mm_interconnect_0_clk_en_s1_writedata;                      // mm_interconnect_0:clk_en_s1_writedata -> clk_en:writedata
	wire         irq_mapper_receiver0_irq;                                   // jtag_uart:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_gen2_0_irq_irq;                                       // irq_mapper:sender_irq -> nios2_gen2_0:irq
	wire         rst_controller_reset_out_reset;                             // rst_controller:reset_out -> [b:reset_n, clk_en:reset_n, irq_mapper:reset, jtag_uart:rst_n, k:reset_n, mm_interconnect_0:nios2_gen2_0_reset_reset_bridge_in_reset_reset, nios2_gen2_0:reset_n, onchip_memory:reset, rst:reset_n, rst_translator:in_reset, v:reset_n, x:reset_n]
	wire         rst_controller_reset_out_reset_req;                         // rst_controller:reset_req -> [nios2_gen2_0:reset_req, onchip_memory:reset_req, rst_translator:reset_req_in]

	NIOSII_JTAG_IO_b b (
		.clk        (clk_clk),                           //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_b_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_b_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_b_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_b_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_b_s1_readdata),   //                    .readdata
		.out_port   (b_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_clk_en clk_en (
		.clk        (clk_clk),                                //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),        //               reset.reset_n
		.address    (mm_interconnect_0_clk_en_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_clk_en_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_clk_en_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_clk_en_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_clk_en_s1_readdata),   //                    .readdata
		.out_port   (clk_en_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_jtag_uart jtag_uart (
		.clk            (clk_clk),                                                   //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                           //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                   //               irq.irq
	);

	NIOSII_JTAG_IO_b k (
		.clk        (clk_clk),                           //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_k_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_k_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_k_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_k_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_k_s1_readdata),   //                    .readdata
		.out_port   (k_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_nios2_gen2_0 nios2_gen2_0 (
		.clk                                 (clk_clk),                                                    //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                            //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                         //                          .reset_req
		.d_address                           (nios2_gen2_0_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_gen2_0_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_gen2_0_data_master_read),                              //                          .read
		.d_readdata                          (nios2_gen2_0_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_gen2_0_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_gen2_0_data_master_write),                             //                          .write
		.d_writedata                         (nios2_gen2_0_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_gen2_0_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_gen2_0_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_gen2_0_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_gen2_0_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_gen2_0_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_gen2_0_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                           //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                            // custom_instruction_master.readra
	);

	NIOSII_JTAG_IO_onchip_memory onchip_memory (
		.clk        (clk_clk),                                       //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),            //       .reset_req
		.freeze     (1'b0)                                           // (terminated)
	);

	NIOSII_JTAG_IO_clk_en rst (
		.clk        (clk_clk),                             //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_rst_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_rst_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_rst_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_rst_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_rst_s1_readdata),   //                    .readdata
		.out_port   (rst_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_b v (
		.clk        (clk_clk),                           //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_v_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_v_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_v_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_v_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_v_s1_readdata),   //                    .readdata
		.out_port   (v_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_b x (
		.clk        (clk_clk),                           //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),   //               reset.reset_n
		.address    (mm_interconnect_0_x_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_x_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_x_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_x_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_x_s1_readdata),   //                    .readdata
		.out_port   (x_external_connection_export)       // external_connection.export
	);

	NIOSII_JTAG_IO_mm_interconnect_0 mm_interconnect_0 (
		.clk_clk_clk                                    (clk_clk),                                                    //                                  clk_clk.clk
		.nios2_gen2_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                             // nios2_gen2_0_reset_reset_bridge_in_reset.reset
		.nios2_gen2_0_data_master_address               (nios2_gen2_0_data_master_address),                           //                 nios2_gen2_0_data_master.address
		.nios2_gen2_0_data_master_waitrequest           (nios2_gen2_0_data_master_waitrequest),                       //                                         .waitrequest
		.nios2_gen2_0_data_master_byteenable            (nios2_gen2_0_data_master_byteenable),                        //                                         .byteenable
		.nios2_gen2_0_data_master_read                  (nios2_gen2_0_data_master_read),                              //                                         .read
		.nios2_gen2_0_data_master_readdata              (nios2_gen2_0_data_master_readdata),                          //                                         .readdata
		.nios2_gen2_0_data_master_write                 (nios2_gen2_0_data_master_write),                             //                                         .write
		.nios2_gen2_0_data_master_writedata             (nios2_gen2_0_data_master_writedata),                         //                                         .writedata
		.nios2_gen2_0_data_master_debugaccess           (nios2_gen2_0_data_master_debugaccess),                       //                                         .debugaccess
		.nios2_gen2_0_instruction_master_address        (nios2_gen2_0_instruction_master_address),                    //          nios2_gen2_0_instruction_master.address
		.nios2_gen2_0_instruction_master_waitrequest    (nios2_gen2_0_instruction_master_waitrequest),                //                                         .waitrequest
		.nios2_gen2_0_instruction_master_read           (nios2_gen2_0_instruction_master_read),                       //                                         .read
		.nios2_gen2_0_instruction_master_readdata       (nios2_gen2_0_instruction_master_readdata),                   //                                         .readdata
		.b_s1_address                                   (mm_interconnect_0_b_s1_address),                             //                                     b_s1.address
		.b_s1_write                                     (mm_interconnect_0_b_s1_write),                               //                                         .write
		.b_s1_readdata                                  (mm_interconnect_0_b_s1_readdata),                            //                                         .readdata
		.b_s1_writedata                                 (mm_interconnect_0_b_s1_writedata),                           //                                         .writedata
		.b_s1_chipselect                                (mm_interconnect_0_b_s1_chipselect),                          //                                         .chipselect
		.clk_en_s1_address                              (mm_interconnect_0_clk_en_s1_address),                        //                                clk_en_s1.address
		.clk_en_s1_write                                (mm_interconnect_0_clk_en_s1_write),                          //                                         .write
		.clk_en_s1_readdata                             (mm_interconnect_0_clk_en_s1_readdata),                       //                                         .readdata
		.clk_en_s1_writedata                            (mm_interconnect_0_clk_en_s1_writedata),                      //                                         .writedata
		.clk_en_s1_chipselect                           (mm_interconnect_0_clk_en_s1_chipselect),                     //                                         .chipselect
		.jtag_uart_avalon_jtag_slave_address            (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),      //              jtag_uart_avalon_jtag_slave.address
		.jtag_uart_avalon_jtag_slave_write              (mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),        //                                         .write
		.jtag_uart_avalon_jtag_slave_read               (mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),         //                                         .read
		.jtag_uart_avalon_jtag_slave_readdata           (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),     //                                         .readdata
		.jtag_uart_avalon_jtag_slave_writedata          (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),    //                                         .writedata
		.jtag_uart_avalon_jtag_slave_waitrequest        (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest),  //                                         .waitrequest
		.jtag_uart_avalon_jtag_slave_chipselect         (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),   //                                         .chipselect
		.k_s1_address                                   (mm_interconnect_0_k_s1_address),                             //                                     k_s1.address
		.k_s1_write                                     (mm_interconnect_0_k_s1_write),                               //                                         .write
		.k_s1_readdata                                  (mm_interconnect_0_k_s1_readdata),                            //                                         .readdata
		.k_s1_writedata                                 (mm_interconnect_0_k_s1_writedata),                           //                                         .writedata
		.k_s1_chipselect                                (mm_interconnect_0_k_s1_chipselect),                          //                                         .chipselect
		.nios2_gen2_0_debug_mem_slave_address           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //             nios2_gen2_0_debug_mem_slave.address
		.nios2_gen2_0_debug_mem_slave_write             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                                         .write
		.nios2_gen2_0_debug_mem_slave_read              (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                                         .read
		.nios2_gen2_0_debug_mem_slave_readdata          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                                         .readdata
		.nios2_gen2_0_debug_mem_slave_writedata         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                                         .writedata
		.nios2_gen2_0_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                                         .byteenable
		.nios2_gen2_0_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                                         .waitrequest
		.nios2_gen2_0_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                                         .debugaccess
		.onchip_memory_s1_address                       (mm_interconnect_0_onchip_memory_s1_address),                 //                         onchip_memory_s1.address
		.onchip_memory_s1_write                         (mm_interconnect_0_onchip_memory_s1_write),                   //                                         .write
		.onchip_memory_s1_readdata                      (mm_interconnect_0_onchip_memory_s1_readdata),                //                                         .readdata
		.onchip_memory_s1_writedata                     (mm_interconnect_0_onchip_memory_s1_writedata),               //                                         .writedata
		.onchip_memory_s1_byteenable                    (mm_interconnect_0_onchip_memory_s1_byteenable),              //                                         .byteenable
		.onchip_memory_s1_chipselect                    (mm_interconnect_0_onchip_memory_s1_chipselect),              //                                         .chipselect
		.onchip_memory_s1_clken                         (mm_interconnect_0_onchip_memory_s1_clken),                   //                                         .clken
		.rst_s1_address                                 (mm_interconnect_0_rst_s1_address),                           //                                   rst_s1.address
		.rst_s1_write                                   (mm_interconnect_0_rst_s1_write),                             //                                         .write
		.rst_s1_readdata                                (mm_interconnect_0_rst_s1_readdata),                          //                                         .readdata
		.rst_s1_writedata                               (mm_interconnect_0_rst_s1_writedata),                         //                                         .writedata
		.rst_s1_chipselect                              (mm_interconnect_0_rst_s1_chipselect),                        //                                         .chipselect
		.v_s1_address                                   (mm_interconnect_0_v_s1_address),                             //                                     v_s1.address
		.v_s1_write                                     (mm_interconnect_0_v_s1_write),                               //                                         .write
		.v_s1_readdata                                  (mm_interconnect_0_v_s1_readdata),                            //                                         .readdata
		.v_s1_writedata                                 (mm_interconnect_0_v_s1_writedata),                           //                                         .writedata
		.v_s1_chipselect                                (mm_interconnect_0_v_s1_chipselect),                          //                                         .chipselect
		.x_s1_address                                   (mm_interconnect_0_x_s1_address),                             //                                     x_s1.address
		.x_s1_write                                     (mm_interconnect_0_x_s1_write),                               //                                         .write
		.x_s1_readdata                                  (mm_interconnect_0_x_s1_readdata),                            //                                         .readdata
		.x_s1_writedata                                 (mm_interconnect_0_x_s1_writedata),                           //                                         .writedata
		.x_s1_chipselect                                (mm_interconnect_0_x_s1_chipselect)                           //                                         .chipselect
	);

	NIOSII_JTAG_IO_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2_gen2_0_irq_irq)            //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule