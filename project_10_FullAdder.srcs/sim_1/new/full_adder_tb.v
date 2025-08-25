`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Soumyadip Majumder
// 
// Create Date: 08/25/2025 06:27:55 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg A, B, Cin;
    wire Sum, Cout;

    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Task for expected output verification
    task check_output;
        input reg exp_sum;
        input reg exp_cout;
        begin
            #1; // Allow propagation
            if (Sum !== exp_sum || Cout !== exp_cout) begin
                $display("Mismatch at time %t: A=%b B=%b Cin=%b | Sum=%b Cout=%b | Expected Sum=%b Cout=%b",
                         $time, A, B, Cin, Sum, Cout, exp_sum, exp_cout);
            end else begin
                $display("Pass at time %t: A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                         $time, A, B, Cin, Sum, Cout);
            end
        end
    endtask

    initial begin
        $display("Starting Full Adder Testbench...");
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        // Exhaustive input combinations
        A = 0; B = 0; Cin = 0; #5; check_output(0, 0);
        A = 0; B = 0; Cin = 1; #5; check_output(1, 0);
        A = 0; B = 1; Cin = 0; #5; check_output(1, 0);
        A = 0; B = 1; Cin = 1; #5; check_output(0, 1);
        A = 1; B = 0; Cin = 0; #5; check_output(1, 0);
        A = 1; B = 0; Cin = 1; #5; check_output(0, 1);
        A = 1; B = 1; Cin = 0; #5; check_output(0, 1);
        A = 1; B = 1; Cin = 1; #5; check_output(1, 1);

        $display("Full Adder Testbench Completed.");
        $finish;
    end
endmodule
