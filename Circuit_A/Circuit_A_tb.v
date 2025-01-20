`timescale 1ns/1ps
`include "Circuit_A.v"

module Circuit_A_tb;
    reg A, B, C, D;
    wire F;

    Circuit_A M_UUT (A, B, C, D, F);

    initial begin
        $dumpfile("Circuit_A.vcd");
        $dumpvars(0, Circuit_A_tb);
        A = 0; B = 0; C = 0; D = 0;
        #100 A = 0; B = 0; C = 0; D = 1;
        #100 A = 0; B = 0; C = 1; D = 0;
        #100 A = 0; B = 0; C = 1; D = 1;
        #100 A = 0; B = 1; C = 0; D = 0;
        #100 A = 0; B = 1; C = 0; D = 1;
        #100 A = 0; B = 1; C = 1; D = 0;
        #100 A = 0; B = 1; C = 1; D = 1;
        #100 A = 1; B = 0; C = 0; D = 1;
        #100 A = 1; B = 0; C = 1; D = 0;
        #100 A = 1; B = 0; C = 1; D = 1;
        #100 A = 1; B = 1; C = 0; D = 0;
        #100 A = 1; B = 1; C = 0; D = 1;
        #100 A = 1; B = 1; C = 1; D = 0;
        #100 A = 1; B = 1; C = 1; D = 1;
        #100 $finish;
    end
endmodule