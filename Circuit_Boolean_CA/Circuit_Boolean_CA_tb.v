`timescale 1ns/1ps
`include "Circuit_Boolean_CA.v"

module Circuit_Boolean_CA_tb;
    reg A, B, C, D;
    wire E, F;

    Circuit_Boolean_CA M_UUT (A, B, C, D, E, F);

    initial begin
        $dumpfile("Circuit_Boolean_CA.vcd");
        $dumpvars(0, Circuit_Boolean_CA_tb);
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