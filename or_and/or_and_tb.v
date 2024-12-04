`timescale 1ns/1ps
`include "or_and.v"

module or_and_tb;
    reg A, B, C;
    wire E;

    or_and M_UUT (A, B, C, E);

    initial begin
        $dumpfile("or_and.vcd");
        $dumpvars(0, or_and_tb);
        A = 0; B = 0; C = 0;
        #100 A = 0; B = 0; C = 1;
        #100 A = 0; B = 1; C = 0;
        #100 A = 0; B = 1; C = 1;
        #100 A = 1; B = 0; C = 0;
        #100 A = 1; B = 0; C = 1;
        #100 A = 1; B = 1; C = 0;
        #100 A = 1; B = 1; C = 1;
        #100 $finish;
    end
endmodule