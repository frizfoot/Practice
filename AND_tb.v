module AND_tb;
    reg a;
    reg b;
    wire y;

    AND uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("a b | y");
        // Test cases
        a = 0; b = 0; #10; $display("%b %b | %b", a, b, y);
        a = 0; b = 1; #10; $display("%b %b | %b", a, b, y);
        a = 1; b = 0; #10; $display("%b %b | %b", a, b, y);
        a = 1; b = 1; #10; $display("%b %b | %b", a, b, y);

        $finish;
    end
endmodule

