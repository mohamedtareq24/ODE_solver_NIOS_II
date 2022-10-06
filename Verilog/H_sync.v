 module H_sync (
    input  clk,         // clk = 40 MHz
    output reg pulse,display, 
    output finish,
    output reg[10:0]  pixel   
);
 // just put the timing http://tinyvga.com/vga-timing

initial begin
    pixel = 11'b0;
    pulse = 0;
    display = 0;
end

// 1024+24  
//assign pulse   =  (pixel > (1024+24) && pixel < (1340-160)); // that's the pulse the monitor is looking for 

always @(posedge clk) begin
    if (pixel == 1344)
        pixel <= 11'b0;
    else 
        pixel <= pixel + 11'b1;  

    if (pixel == 1024+24)
        pulse <= 1'b1;
    else if (pixel == 1340-160)
        pulse <= 1'b0;

	if (pixel == 1024)
        display <= 1'b0;
    else if (pixel == 0)
        display <= 1'b1;	  
end

assign finish  =  (pixel == 1344);


endmodule //H_sync



