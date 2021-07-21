`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 22:12:51
// Design Name: 
// Module Name: multi_adders
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_adders(

input[15:0]a,b,
output [15:0]s_ab,
output c_out_ab,

input[33:0]x,y,
output [33:0]s_xy,
output c_out_xy
   
    );
wire [15:1]c_ab;
wire [32:1]c_xy;
    rca_nbit #(.n(16)) adder_16(
    
    .x(a),
    .y(b), 
    .c_in(c_ab),
    .s(s_ab),
    .c_out(c_out_ab)
    
    );
    rca_nbit #(.n(34)) adder_34(
    .x(x),
    .y(y),
    .c_in(c_xy),
    .s(s_xy),
    .c_out(c_out_xy)
    
    );
endmodule
