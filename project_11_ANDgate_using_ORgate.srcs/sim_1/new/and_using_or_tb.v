`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soumyadip Majumder
// 
// Create Date: 08/26/2025 05:09:55 PM
// Design Name: 
// Module Name: and_using_or_tb
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


module and_using_or_tb();
reg A, B;
wire Y;

and_using_or uut(
    .A(A),
    .B(B),
    .Y(Y)
);
initial begin
    $display("Testing AND gate using OR and NOT logic");
    $display("A B | Y");
    $monitor("%b %b | %b", A, B, Y);
    
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    
    $finish;
end
endmodule
