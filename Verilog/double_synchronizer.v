module double_synchronizer (
    input  clk, 
     D,
    output reg  Q_synch
);
reg  q1;
always @(posedge clk) begin
    q1 <= D ; 
    Q_synch <= q1 ;
end

endmodule //double_synchronizer