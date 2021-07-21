`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 13:41:59
// Design Name: 
// Module Name: MUX_8x1_Hierarch
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

// zbudowany z 2x1 MUX
module MUX_8x1_Hierarch(

input [7:0]x,
input [3:0]s,
output f
    );
  wire[7:0]g;
  
  MUX_2x1_GL M0( 
  .x1(x0),
  .x2(x1),
  .s(s0),
  .f(g0)
  );
  
  MUX_2x1_GL M1( 
  .x1(x2),
  .x2(x3),
  .s(s0),
  .f(g1)
  );
  
    MUX_2x1_GL M2(
  .x1(x4),
  .x2(x5),
  .s(s0),
  .f(g2)
  );
  
     MUX_2x1_GL M3( 
  .x1(x6),
  .x2(x7),
  .s(s0),
  .f(g3)
  );
  
    MUX_2x1_GL M4(  
  .x1(g0),
  .x2(g1),
  .s(s1),
  .f(g4)
  );
  
   MUX_2x1_GL M5(
  .x1(g2),
  .x2(g3),
  .s(s1),
  .f(g5)
  );
  
 MUX_2x1_GL M6(
  .x1(g4),
  .x2(g5),
  .s(s2),
  .f(f)
  );
