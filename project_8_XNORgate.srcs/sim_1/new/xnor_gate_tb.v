`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soumyadip Majumder
// 
// Create Date: 08/25/2025 05:22:45 PM
// Design Name: 
// Module Name: xnor_gate_tb
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


module xnor_gate_tb();
reg A, B;
wire Y;

xnor_gate uut(.A(A), .B(B), .Y(Y));

initial begin
    $monitor("A=%b B=%b -> Y=%b", A, B, Y);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
end
endmodule
