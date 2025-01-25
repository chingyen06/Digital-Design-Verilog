module Circuit_C (y1, y2, y3, a, b);
    output y1, y2, y3;
    input a, b;
    assign y1 = a || b;
    and (y2, a, b);
    assign y3 = a && b;
endmodule