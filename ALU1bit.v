module ALU1bit (
    input wire a,
    input wire b,
    input wire [1:0] sel,
    output wire y
);

    assign y = (sel == 2'b00) ? (a & b) :
               (sel == 2'b01) ? (a | b) :
               (sel == 2'b10) ? (a ^ b) :
               (~a);

endmodule
