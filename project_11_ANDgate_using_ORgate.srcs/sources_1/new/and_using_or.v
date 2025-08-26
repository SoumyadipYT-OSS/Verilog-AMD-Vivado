`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soumyadip Majumder
// 
// Create Date: 08/26/2025 04:17:46 PM
// Design Name: 
// Module Name: and_using_or
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


module and_using_or(
    input wire A,
    input wire B,
    output wire Y
    );
    wire nA, nB, temp;
    
    assign nA = ~A;
    assign nB = ~B;
    assign temp = nA | nB;
    assign Y = ~temp;
endmodule
