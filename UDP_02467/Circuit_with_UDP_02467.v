primitive UDP_02467 (D, A, B, C);
    output D;
    input A, B, C;
    //Truth table for D = f (A, B, C) = ∑(0, 2, 4, 6, 7);
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
    UDP_02467 (E, A, B, C);  //把結果給e(因為UDP_02467說第一個是output)
    and (F, E, D);
endmodule