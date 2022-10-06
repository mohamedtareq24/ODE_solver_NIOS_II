module integrator
#(parameter DELTA = 7) // sample time 
 (
    input  clk , master_rst,
    input signed [17:0] dy,
    input signed [17:0] initial_condition,
    output reg signed[17:0] y  
); 
reg rst,edge_flag ;

always @(posedge clk ) begin
    if (~rst)
        y <= initial_condition;
    else
        y <=  y + (dy >>> DELTA)  ; 
end

// reset handling

always @(posedge clk) begin
    rst = edge_flag;
    if (master_rst)
        edge_flag <= 1'b1;
    else
        edge_flag <= 1'b0;   
end
initial
begin
    y = 0;
    rst = 0;
    edge_flag = 0;
end
endmodule //integrator