`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 15:19:06
// Design Name: 
// Module Name: DMUX_2x1_GL_NOR
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


module DMUX_2x1_GL_NOR(
input I,s, 
output y0,y1);
    
not n1(sn,s);
not n2(In,I);
nor nr1(y0,s,In);
nor nr2(y1,sn,In);

endmodule
