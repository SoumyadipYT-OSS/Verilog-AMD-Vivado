`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2025 02:48:38 PM
// Design Name: 
// Module Name: logic_gates
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


module logic_gates (
    input wire a,
    input wire b,
    output wire not_a,
    output wire nand_ab,
    output wire nor_ab
);

// Gate logic
assign not_a   = ~a;
assign nand_ab = ~(a & b);
assign nor_ab  = ~(a | b);

endmodule
