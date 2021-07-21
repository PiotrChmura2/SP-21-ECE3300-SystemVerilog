`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 15:41:01
// Design Name: 
// Module Name: DMUX_4x1_GL_HRH_FC
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


module DMUX_4x1_GL_HRH_FC(

input I,
input [1:0]s,
output [3:0]y
    );
    wire g0,g1;
DMUX_2x1_GL_NOR(
    
    .I(I),
    .s(s[0]),
    .y0(g0),
    .y1(g1)
    
    );
DMUX_2x1_GL_NOR(
    
    .I(g0),
    .s(s[0]),
    .y0(y[0]),
    .y1(y[1])
    
    );
    DMUX_2x1_GL_NOR(
    
    .I(g1),
    .s(s[0]),
    .y0(y[2]),
    .y1(y[3])
    
    );
endmodule
