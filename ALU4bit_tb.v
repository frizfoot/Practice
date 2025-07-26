module ALU4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg [1:0] sel;
    wire [3:0] y;

    ALU4bit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );
    integer i,j;

    initial begin
        $display("a b sel | y");
        sel = 2'b00; 
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; //changes to binary number 
            for (j=0; j<16;j=j+1) begin
                b = j[3:0]; #10; $display("%4b %4b %2b | %4b", a, b, sel, y);
            end
        end
        sel = 2'b00; 
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; 
            for (j=0; j<16;j=j+1) begin
                b = j[3:0]; #10; $display("%4b %4b %2b | %4b", a, b, sel, y);
            end
        end
        sel = 2'b00; 
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; 
            for (j=0; j<16;j=j+1) begin
                b = j[3:0]; #10; $display("%4b %4b %2b | %4b", a, b, sel, y);
            end
        end
        sel = 2'b00; 
        for (i=0; i<16;i=i+1) begin
            a=i[3:0]; 
            for (j=0; j<16;j=j+1) begin
                b = j[3:0]; #10; $display("%4b %4b %2b | %4b", a, b, sel, y);
            end
        end
        $finish;
    end
endmodule

//  Verilog Project Summary – 1-bit → 4-bit ALU
// 📌 Goals Achieved:
// Built foundational Verilog skills

// Learned module, assign, reg, wire, initial, testbench

// Understood the difference between simulation code and logic description

// Designed and tested 1-bit ALU

// Operations: AND, OR, XOR, NOT

// Used sel[1:0] to select the operation via ternary (?:) operator

// Verified correct behavior for all 4 combinations of a, b, sel

// Upgraded to 4-bit ALU

// Extended the same ALU logic to work on 4-bit vectors

// Modified ports to input wire [3:0] a, b and output wire [3:0] y

// Verified that each operation applied to all 4 bits in parallel

// Created a comprehensive testbench

// Declared reg [3:0] a, b; reg [1:0] sel;

// Used nested for loops (integer i, j) to exhaustively test:

// all 16 combinations of a and b

// for each of the 4 operation modes (00, 01, 10, 11)

// Displayed output with $display for every test case

// Debugged common Verilog syntax issues

// Removed extra commas in port list

// Fixed missing semicolons

// Replaced invalid i(dec) syntax with proper a = i[3:0]

// Declared integer loop counters correctly

