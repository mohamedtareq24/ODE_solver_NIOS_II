module DDA_top (
    input  clk50,
    NIOS_reset, 
    output  [2:0] RGBpins,
    output H_sync_pin,V_sync_pin 
);
wire    clk0_020,clk65,
        clk_en,
        clk_en_synch,
        solver_rst,
        solver_rst_synch;

wire[8:0] x_shift; 

wire[17:0]  x,
            v,
            b,
            k;
PLL                 pll(clk50,clk0_020,clk65);
NIOSII_JTAG_IO      processor (b,clk50,clk_en,k,NIOS_reset,solver_rst,v,x); 
double_synchronizer CDC1 (clk0_020,clk_en,clk_en_synch);
double_synchronizer CDC2 (clk0_020,solver_rst,solver_rst_synch);  
DDA                 solver  (clk_en_synch,solver_rst_synch,clk0_020,x,v,b,k,x_shift);
VGA_interface       VGA (clk65,x_shift,RGBpins,H_sync_pin,V_sync_pin);
endmodule //DDA_top