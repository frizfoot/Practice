module RippleAdder4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    RippleAdder4bit uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    integer i,j;
    initial begin
        $display("a b cin | sum cout");
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; //changes to binary number
            for (j=0; j<16;j=j+1) begin
                b = j[3:0];
                cin=0; #10; $display("%4b %4b %b | %4b %b", a, b, cin, sum, cout);
                cin=1; #10 $display("%4b %4b %b | %4b %b", a, b, cin, sum, cout);
            end
        end
    $finish;
    end
endmodule
