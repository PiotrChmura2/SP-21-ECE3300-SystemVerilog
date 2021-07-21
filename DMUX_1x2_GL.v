`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 11:04:42
// Design Name: 
// Module Name: DMUX_1x2_GL
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


module DMUX_1x2_GL(

input d,s, 
output y0,y1

    );
not n(s,sn);
and A0(y0,sn,d);
and A1(y1,s,d);
    
endmodule
