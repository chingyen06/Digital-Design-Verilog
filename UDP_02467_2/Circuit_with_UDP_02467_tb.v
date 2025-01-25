`timescale 1ns/1ps
`include "Circuit_with_UDP_02467.v"

module Circuit_with_UDP_02467_tb;
    reg A, B, C, D;
    wire E, F;
    
    Circuit_with_UDP_02467 M_UUT (E, F, A, B, C, D);

    initial begin
        $dumpfile("Circuit_with_UDP_02467.vcd");
        $dumpvars(0, Circuit_with_UDP_02467_tb);
        A = 1; B = 1; C = 0; D = 0;
        #100 A = 1; B = 1; C = 1; D = 0;
        #50 A = 1; B = 1; C = 1; D = 1;
        #50 A = 1; B = 0; C = 0; D = 1;
        #100 A = 1; B = 0; C = 1; D = 0;
        #100 A = 0; B = 1; C = 0; D = 0;
        #100 A = 0; B = 1; C = 1; D = 1;
        #100 A = 0; B = 0; C = 0; D = 1;
        #100 A = 0; B = 0; C = 1; D = 0;
        #100 $finish;
    end
endmodule