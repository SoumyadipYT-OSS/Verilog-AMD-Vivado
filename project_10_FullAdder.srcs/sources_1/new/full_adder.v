`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soumyadip Majumder
// 
// Create Date: 08/25/2025 06:27:03 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder (
    input  wire A,
    input  wire B,
    input  wire Cin,
    output wire Sum,
    output wire Cout
);
    // Sum = A ^ B ^ Cin
    assign Sum  = A ^ B ^ Cin;

    // Cout = (A & B) | (B & Cin) | (A & Cin)
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

