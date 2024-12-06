`timescale 1ns/1ps
`include "and_or_prop_delay.v"

module and_or_prop_delay_tb;
    reg A, B, C;
    wire D, E;
    
    and_or_prop_delay M_UUT (A, B, C, D, E);

    initial begin
        $dumpfile("and_or_prop_delay.vcd");
        $dumpvars(0, and_or_prop_delay_tb);
        A = 1'b0; B = 1'b0; C = 1'b0;
        #100 A = 1'b1; B = 1'b1; C = 1'b1;
        #100 $finish;
    end
endmodule