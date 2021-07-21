`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 16:26:56
// Design Name: 
// Module Name: rca_4bit
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


module rca_4bit(
    input  [3:0]x,
    input  [3:0]y,
    input c_in,
    output c_out,
    output [3:0]s
);

wire [3:0]c;

Full_adder FA0(
    .x(x[0]),
    .y(y[0]),
    .c_in(c_in),
    .s(s[0]),
    .c_out(c[1])
);
Full_adder FA1(
    .x(x[1]),
    .y(y[1]),
    .c_in(c[1]),
    .s(s[1]),
    .c_out(c[2])
);
Full_adder FA2(
    .x(x[2]),
    .y(y[2]),
    .c_in(c[2]),
    .s(s[2]),
    .c_out(c[3])
);
Full_adder FA3(
    .x(x[3]),
    .y(y[3]),
    .c_in(c[3]),
    .s(s[3]),
    .c_out(c_out)
    );


endmodule
