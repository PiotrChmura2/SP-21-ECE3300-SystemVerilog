`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2021 15:21:02
// Design Name: 
// Module Name: n_nbitadder
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

// xn quantity of adders // xb - bits per adder
module n _nbitadder #(parameter xn = 4, xb = 4 )(
    input [xb:0]x,y 
    );
   wire [xb-2:0]c;
    generate 
        genvar z;
        genvar j;s
            begin
                for(z=0; z<xn; z=z+1)
                begin
                    for(j=0; j<xb; j=j+1)
                    begin
                        rca_nbit #(.n(xb))n_bit_adder(
                        
                        
                        
                        
                        );
                    end
                end
            end 
    endgenerate
endmodule
