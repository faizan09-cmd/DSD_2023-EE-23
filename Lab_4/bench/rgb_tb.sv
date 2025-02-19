module rgb_tb;
    logic [1:0] a1;
    logic [1:0] b1;
    logic r1;
    logic g1;
    logic b_out1;  // Renamed to avoid confusion
    
    // Instantiate the Unit Under Test (UUT)
    rgb UUT (
        .a(a1),
        .b(b1),
        .r(r1),
        .g(g1),
        .b_out(b_out1)  // Ensure the correct mapping
    );
    
    initial begin
        // Apply test cases
        a1 = 2'b00; b1 = 2'b00; #10; // Yellow
        a1 = 2'b00; b1 = 2'b01; #10; // Cyan
        a1 = 2'b00; b1 = 2'b10; #10; // Cyan
        a1 = 2'b00; b1 = 2'b11; #10; // Cyan
        a1 = 2'b01; b1 = 2'b00; #10; // Purple
        a1 = 2'b01; b1 = 2'b01; #10; // Yellow
        a1 = 2'b01; b1 = 2'b10; #10; // Cyan
        a1 = 2'b01; b1 = 2'b11; #10; // Cyan
        a1 = 2'b10; b1 = 2'b00; #10; // Purple
        a1 = 2'b10; b1 = 2'b01; #10; // Purple
        a1 = 2'b10; b1 = 2'b10; #10; // Yellow
        a1 = 2'b10; b1 = 2'b11; #10; // Cyan
        a1 = 2'b11; b1 = 2'b00; #10; // Purple
        a1 = 2'b11; b1 = 2'b01; #10; // Purple
        a1 = 2'b11; b1 = 2'b10; #10; // Purple
        a1 = 2'b11; b1 = 2'b11; #10; // Yellow

        $stop;
    end

    initial begin
        $monitor("Time=%0t | a=%b, b=%b | r=%b, g=%b, b_out=%b", $time, a1, b1, r1, g1, b_out1);
    end 
endmodule

