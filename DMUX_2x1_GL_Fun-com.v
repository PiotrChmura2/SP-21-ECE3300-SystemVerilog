`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 15:07:18
// Design Name: 
// Module Name: DMUX_2x1_GL_Fun-com
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
/////////////////////////////////_/////////////////////////////////////////////////


module DMUX_2x1_GL_Funcom(


input I,s, 
output y0,y1

    );
    
not n1(sn,s);
not n2(In,n);
nor nr1(y0,s,In);
nor nrg2(y1,sn,In);
    
endmodule
