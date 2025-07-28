module Multiplier4bit (
    input [3:0] a,
    input [3:0] b,
    output reg [7:0] product
);
    integer i;
    reg [3:0] slot;
    always @(*) begin
        product = 8'b0;
        for (i=0; i<4; i=i+1) begin
            slot=a&{4{b[i]}};
            product=(slot<<i)+product;
        end
    end
endmodule