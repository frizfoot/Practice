module RippleAdder4bit(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output reg [3:0] sum,
    output reg cout
);
    integer i;
    reg carry;
    
    always @(*) begin
        carry=cin;
        for (i=0; i<4; i=i+1) begin
            sum[i]=a[i]^b[i]^cin;
            cout = (a[i] & b[i]) | (a[i] & cin) | (b[i] & cin);
            cout=carry;
        end
    end
endmodule