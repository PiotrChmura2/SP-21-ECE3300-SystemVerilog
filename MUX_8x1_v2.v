`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: none 
// Engineer: Maybe In future (PIOTR CHMURA)
// 
// Create Date: 20.07.2021 14:27:28
// Design Name: 8x1MUX
// Module Name: MUX_8x1_v2
// Project Name: 8x1_MUX_HIER_2x1
// Target Devices: ?
// Tool Versions: ?s
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_8x1_v2(

input [7:0]x,
input [3:0]s,
output f
    );
  wire[7:0]g;
  
  MUX_2x1_GL M0( 
  .x1(x[0]),
  .x2(x[1]),
  .s(s[0]),
  .f(g[0])
  );
  
  MUX_2x1_GL M1( 
  .x1(x[2]),
  .x2(x[3]),
  .s(s[0]),
  .f(g[1])
  );
  
    MUX_2x1_GL M2(
  .x1(x[4]),
  .x2(x[5]),
  .s(s[0]),
  .f(g[2])
  );
  
     MUX_2x1_GL M3( 
  .x1(x[6]),
  .x2(x[7]),
  .s(s[0]),
  .f(g[3])
  );
  
    MUX_2x1_GL M4(  
  .x1(g[0]),
  .x2(g[1]),
  .s(s[1]),
  .f(g[4])
  );
  
   MUX_2x1_GL M5(
  .x1(g[2]),
  .x2(g[3]),
  .s(s[1]),
  .f(g[5])
  );
  
 MUX_2x1_GL M6(
  .x1(g[4]),
  .x2(g[5]),
  .s(s[2]),
  .f(f)
  );


endmodule
