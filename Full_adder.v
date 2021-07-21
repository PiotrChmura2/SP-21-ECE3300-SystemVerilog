`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 16:12:58
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
input x,c_in,y,
output s,c_out
    );
    wire c1,s1,c2;
 Half_adder HA0(
    .x(x),
    .c(c1),
    .y(y),
    .s(s1)
);
 Half_adder HA1(
    .x(c_in),
    .c(c2),
    .y(s1),
    .s(s)
);

assign c_out = c1|c2;
endmodule
