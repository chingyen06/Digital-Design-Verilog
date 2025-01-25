`timescale 1ns/1ps
`include "Circuit_C.v"

module Circuit_C_tb;
    reg a, b;
    wire y1, y2, y3;

    Circuit_C M_UUT (y1, y2, y3, a, b);

    initial begin
        $dumpfile("Circuit_C.vcd");
        $dumpvars(0, Circuit_C_tb);
        a = 0; b = 0;
        #100 a = 0; b = 1;
        #100 a = 1; b = 0;
        #100 a = 1; b = 1;
        #100 $finish;
    end
endmodule