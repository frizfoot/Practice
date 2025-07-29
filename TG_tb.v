module TG_tb;
    reg a;
    reg en;
    wire y;

    TG uut (
        .a(a),
        .en(en),
        .y(y)
    );

    initial begin
    $display("a en | y");

        a = 0; en = 0; #10; $display("%b %b | %b", a, en, y);
        a = 0; en = 1; #10; $display("%b %b | %b", a, en, y);
        a = 1; en = 0; #10; $display("%b %b | %b", a, en, y);
        a = 1; en = 1; #10; $display("%b %b | %b", a, en, y);

        $finish;
    end
endmodule
