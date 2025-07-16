module ALU1bit_tb;
    reg a,b;
    reg [1:0] sel;
    wire y;

    ALU1bit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );
    initial begin
        $display("a b sel | y");
        sel = 2'b00; 
        a=0; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=0; #10; $display("%b %b %b | %b", a, b, sel, y); 
        a=0; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        sel = 2'b01;
        a=0; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=0; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        sel = 2'b10;
        a=0; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=0; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        sel = 2'b11;
        a=0; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=0; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=0; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        a=1; b=1; #10; $display("%b %b %b | %b", a, b, sel, y);
        $finish;
    end
endmodule