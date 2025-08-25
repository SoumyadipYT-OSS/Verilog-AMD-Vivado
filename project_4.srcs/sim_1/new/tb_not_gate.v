`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2025 04:59:22 PM
// Design Name: 
// Module Name: tb_not_gate
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


module tb_not_gate();
reg A;
wire Y;

not_gate uut(.A(A), .Y(Y));

initial begin
    $monitor("A=%b -> Y=%b", A, Y);
    A = 0; #10;
    A = 1; #10;
    $finish;
end
endmodule
