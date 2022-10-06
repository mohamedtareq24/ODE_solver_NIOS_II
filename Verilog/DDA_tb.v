`timescale 1ns/1ns

module DDA_tb ();

localparam  processor_cycle = 20;

reg signed [17:0]   initial_condition_v,
                    initial_condition_x,
                    B,
                    k;

wire [8:0]   x_shift;

reg     clk0_020,
        clk_en,
        rst;

always
begin
    #50000 clk0_020 =~clk0_020 ;      
end 

initial begin // simulate ODE_Solver_SW.c
clk0_020 = 0 ;
#processor_cycle clk_en = 1'b0;
#processor_cycle rst = 1'b1;
#processor_cycle initial_condition_v = 18'h0;
#processor_cycle initial_condition_x = 18'h08000;
#processor_cycle k = 18'h10000;
#processor_cycle B = 18'h00000;
#processor_cycle clk_en = 1'b1;

end


DDA DUT(clk_en,rst,clk0_020,initial_condition_x,initial_condition_v,B,k,x_shift);

endmodule //integrator_tb