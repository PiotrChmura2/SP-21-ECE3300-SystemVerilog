`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 12:25:33
// Design Name: 
// Module Name: MUX_4x1_Hierarch
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


module MUX_4x1_Hierarch(

input x0,x1,x2,x3,
input s0,s1,s2,
output f
    ); // tworz¹c modu³ u¿ywamy go w projekcie przez odwo³anie do nazwy 
   wire g0,g1;
    MUX_2x1_GL M0(
    x0,
    x1,
    s0,
    g0
    );
    MUX_2x1_GL M1( // korzystaj¹c z modu³u MUX 2x1 ³¹czê zmienne.
    .f(g1),
    .x1(x2),
    .x2(x3),
    .s(s0)
    );
    MUX_2x1_GL M2(
    .f(f),
    .x1(g0),
    .x2(g1),
    .s(s1)
    );
    
endmodule
