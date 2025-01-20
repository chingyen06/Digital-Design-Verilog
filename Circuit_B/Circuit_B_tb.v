`timescale 1ns/1ps
`include "Circuit_B.v"

module Circuit_B_tb;
    reg A0, A1, B0, B1;
    wire F1, F2, F3;

    Circuit_B M_UUT (F1, F2, F3, A0, A1, B0, B1);

    initial begin
        $dumpfile("Circuit_B.vcd");
        $dumpvars(0, Circuit_B_tb);
        A0 = 0; A1 = 0; B0 = 0; B1 = 0;
        #100 A0 = 0; A1 = 0; B0 = 0; B1 = 1;
        #100 A0 = 0; A1 = 0; B0 = 1; B1 = 0;
        #100 A0 = 0; A1 = 0; B0 = 1; B1 = 1;
        #100 A0 = 0; A1 = 1; B0 = 0; B1 = 0;
        #100 A0 = 0; A1 = 1; B0 = 0; B1 = 1;
        #100 A0 = 0; A1 = 1; B0 = 1; B1 = 0;
        #100 A0 = 0; A1 = 1; B0 = 1; B1 = 1;
        #100 A0 = 1; A1 = 0; B0 = 0; B1 = 1;
        #100 A0 = 1; A1 = 0; B0 = 1; B1 = 0;
        #100 A0 = 1; A1 = 0; B0 = 1; B1 = 1;
        #100 A0 = 1; A1 = 1; B0 = 0; B1 = 0;
        #100 A0 = 1; A1 = 1; B0 = 0; B1 = 1;
        #100 A0 = 1; A1 = 1; B0 = 1; B1 = 0;
        #100 A0 = 1; A1 = 1; B0 = 1; B1 = 1;
        #100 $finish;
    end
endmodule