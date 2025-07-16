module MUX_tb;
    reg a;
    reg b;
    reg sel;
    wire y;

    MUX uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("sel a b | y");
        // Test cases
        sel = 0; a = 0; b = 0; #10; $display("%b %b %b | %b", a, b, y);
        sel = 0; a = 0; b = 1; #10; $display("%b %b %b | %b", a, b, y);// Expect y = 0
        sel = 0; a = 1; b = 0; #10; $display("%b %b %b | %b", a, b, y);// Expect y = 1
        sel = 0; a = 1; b = 1; #10; $display("%b %b %b | %b", a, b, y);
        sel = 1; a = 0; b = 0; #10; $display("%b %b %b | %b", a, b, y);
        sel = 1; a = 0; b = 1; #10; $display("%b %b %b | %b", a, b, y);
        sel = 1; a = 1; b = 0; #10; $display("%b %b %b | %b", a, b, y);
        sel = 1; a = 1; b = 1; #10; $display("%b %b %b | %b", a, b, y);

        $finish;
    end
    endmodule
    


