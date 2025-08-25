`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2025 02:59:32 PM
// Design Name: 
// Module Name: stimuli
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


module stimuli(   );
// Test signals
reg a, b;
wire not_a, nand_ab, nor_ab;

// Instantiate the Unit Under Test (UUT)
logic_gates uut (
    .a(a),
    .b(b),
    .not_a(not_a),
    .nand_ab(nand_ab),
    .nor_ab(nor_ab)
);

// Monitor outputs
initial begin
    $display("Time\t a\t b\t NOT a\t NAND a&b\t NOR a|b");
    $monitor("%g\t %b\t %b\t %b\t %b\t\t %b", $time, a, b, not_a, nand_ab, nor_ab);
end

// Stimulus block
initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end

endmodule