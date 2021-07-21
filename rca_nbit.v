`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 21:24:01
// Design Name: 
// Module Name: rca_nbit
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


module rca_nbit
#(parameter n = 4)
(
    input [n:0]x,y,
    input c_in,
    output c_out,
    output[n:0]s
);
 wire [n:0]c;
 assign c[0] = c_in;
 assign c_out = c[n];
  generate          // used usally for replicating hardware structures
   genvar k;            // when we are using generate we can use genvar instead of integer
    for(k=0; k<n; k = k+1)           //instantianting n new adders
            begin
             Full_adder FA(
                .x(x[k]),
                .y(y[k]),
                .c_in(c[k]),
                .s(s[k]),
                .c_out(c[k+1])
            
            );
            end
  endgenerate

endmodule
