primitive UDP_02467 (D, A, B, C);
    output D;
    input A, B, C;
    table
        //A B C : D
        0 0 0 : 1;
        0 0 1 : 0;
        0 1 0 : 1;
        0 1 1 : 0;
        1 0 0 : 1;
        1 0 1 : 0;
        1 1 0 : 1;
        1 1 1 : 1;
    endtable
endprimitive

module Circuit_with_UDP_02467 (
    output E, F,
    input A, B, C, D
);
    UDP_02467 (E, A, B, C);
    and (F, E, D);
endmodule