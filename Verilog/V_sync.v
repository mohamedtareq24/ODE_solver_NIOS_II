module V_sync (
  input  clk,         // clk = H_sync
  output reg pulse
);
reg [9:0]line = 0;
initial pulse = 0;
always @(posedge clk) begin
    if (line == 806)
        line <= 10'b0;
    else 
        line <= line + 10'b1;  

    if (line == 768+3)
        pulse <= 1'b1;
    else if (line == 806-29)
        pulse <= 1'b0;  
end

endmodule //V_sync