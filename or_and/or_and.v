module or_and (
    input A, B, C,
    output E
);
    wire D;
    assign D = A | B;
    assign E = C & D;
endmodule
