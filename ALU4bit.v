module ALU4bit(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire [1:0] sel,
    output wire [3:0] y
);

    assign y = (sel == 2'b00) ? (a & b) :
               (sel == 2'b01) ? (a | b) :
               (sel == 2'b10) ? (a ^ b) :
               (~a);

endmodule