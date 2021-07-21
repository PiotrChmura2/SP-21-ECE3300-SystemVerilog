`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 10:28:33
// Design Name: 
// Module Name: MUX_2x1_GL
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
///////////////////////////////// /////////////////////////////////////////////////

// Gate-Level Modeling 


module MUX_2x1_GL(

input x1,x2,s,
output f 
    );
    
    not N1(sn,s);
    and A0(g0,x1,sn);
    and A1(g1,x2,s);
    or O0(f,g0,g1);
endmodule
