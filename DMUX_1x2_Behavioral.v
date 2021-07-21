`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 11:48:27
// Design Name: 
// Module Name: DMUX_1x2_Behavioral
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


module DMUX_1x2_Behavioral(
 input x1,s, 
 output reg y0,y1
    );
always @(x1,s) 
begin

    case (s)
    1: y0 = (x1 & ~s) ;
    0: y1 = (x1 & s);
    endcase
   end
endmodule
