module Circuit_B (F1, F2, F3, A0, A1, B0, B1);
    output F1, F2, F3;
    input A0, A1, B0, B1;
    nor (F1, F2, F3);
    or (F2, w1, w2, w3);
    and (F3, w4, w5);
    and (w1, w6, B1);
    or (w2, w6, w7, B0);
    and (w3, w7, B0, B1);
    not (w6, A1);
    not (w7, A0);
    xor (w4, A1, B1);
    xnor (w5, A0, B0);
endmodule