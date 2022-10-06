module VGA_interface (
    input   clk,
    input   [8:0] x_shift, 
    output  [2:0] RGBpins,
    output H_sync_pin,V_sync_pin   
 );
 
    wire ready,line_finish,dispaly ;

    wire[10:0] pixel_number ;

    H_sync U1 (clk,H_sync_pin,dispaly,line_finish,pixel_number);

    V_sync U2 (line_finish,V_sync_pin);
    
	assign RGBpins[0] = (pixel_number[10:0] == {2'b0,x_shift[8:0]});
	assign RGBpins[1] = RGBpins[0];
	assign RGBpins[2] = RGBpins[0];
	 
endmodule 
