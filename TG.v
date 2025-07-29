module TG (
    input wire a,
    input wire en,
    output wire y
);

    assign y = en ? a : 1'bz;
endmodule
