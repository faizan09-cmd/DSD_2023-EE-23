`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: FAIZAN SHAHID
// 
// Create Date: 02/19/2025 01:56:11 PM
// Design Name: 
// Module Name: lab_rgb
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


module lab_rgb (
    input logic [1:0] a, 
    input logic [1:0] b, 
    output logic r, g, b_out
);
    
    always_comb begin
        r = (a > b) || (a == b);
        g = (a == b) || (a < b);
        b_out = (a > b) || (a < b);
    end
    
endmodule
