`timescale 1ns / 1ps  // Optional: time unit/time precision

module inverter_tb;

    // Testbench signal declarations
    reg a;         // Input to the DUT (Device Under Test)
    wire y;        // Output from the DUT

    // Instantiate the inverter module
    inverter uut (
        .a(a),
        .y(y)
    );

    // Initial block: runs once at the beginning
    initial begin
        // Set up VCD waveform output for GTKWave
        $dumpfile("inverter.vcd");        // Name of the dump file
        $dumpvars(0, inverter_tb);        // Dump everything under inverter_tb

        // Display header
        $display("Time | a y");
        $monitor("%4t | %b %b", $time, a, y);

        // Stimulus: change input 'a' and observe output
        a = 0;  #10;   // After 10ns, set a = 0
        a = 1;  #10;   // After 10ns, set a = 1
        a = 0;  #10;

        // End simulation
        $finish;
    end

endmodule
