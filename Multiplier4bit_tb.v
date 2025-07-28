module Multiplier4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] product;

    Multiplier4bit uut(
        .a(a),
        .b(b),
        .product(product)
    );
    integer i,j;
    initial begin
        $display("a b | product");
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; //changes to binary number
            for (j=0; j<16;j=j+1) begin
                b = j[3:0];
                #10; $display("%4b %4b | %8b", a, b, product);
            end
        end
    $finish;
    end
endmodule