`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2021 15:49:44
// Design Name: 
// Module Name: x_nbitadders
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


module x_nbitadders #(parameter xn = 4, xb = 4 )(
    input c_in,
    input [xb:0]x,y,
    output [xb-1:0]s,
    output c_out
    );
   wire [xb:0]c;
    generate 
        genvar z;
        genvar j;
            begin
                for(z=0; z<xn; z=z+1)
                begin
                    for(j=0; j<xb; j=j+1)
                    begin
                        rca_nbit #(.n(xb))n_bit_adder(
                            .x(x[j]),
                            .y(y[j]),
                            .c_in(c[j]),
                            .s(s[j]),
                            .c_out(c[j])  
                        );
                    end
                end
            end 
    endgenerate
endmodule
