module DDA (
input clk_en,rst,
input clk0_020,
input signed [17:0] initial_condition_x,initial_condition_v,B,k,
output signed [8:0] x_shift
);

wire clk_gated;
wire signed [17:0] x ,x_shift_temp;
wire [17:0] v,ddy,kx,Bv;

													//this will be Auto Gated Clock Conversion. info no  19019
assign clk_gated = clk_en & clk0_020; // https://www.intel.com/content/www/us/en/docs/programmable/683283/18-1/auto-gated-clock-conversion.html

integrator velocity (clk_gated,rst,ddy,initial_condition_v,v);
integrator dispalacment (clk_gated,rst,v,initial_condition_x,x); 
signed_mult mult1(kx,k,x);
signed_mult mult2(Bv,B,v);

assign ddy = -1 * kx - Bv ;  
assign x_shift_temp = ({{{x[17]}},x[17:0]} + 18'h10000);
assign x_shift = x_shift_temp[16:8]; // 9 bit VGA compatable 
	 
endmodule //DDA 