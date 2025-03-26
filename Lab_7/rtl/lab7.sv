module lab7_tb();
    logic write, reset, clk;
    logic [6:0] segment; 
    logic [7:0] an;
    logic [3:0] num;
    logic [2:0] sel;

    // Instantiate lab7 module
    lab7 UUT (
        .clk(clk),
        .write(write),
        .reset(reset),
        .segment(segment),
        .an(an),
        .num(num),
        .sel(sel)
        // Removed .clkdiv(clkdiv) since it's internal
    );

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        write = 1;
        sel = 3'b000;
        @(posedge clk);
        reset = 0;

        for (int display = 0; display < 8; display++) begin
            sel = display[2:0]; // Select display
            for (int digit = 0; digit < 16; digit++) begin
                num = digit[3:0]; // Show 0-F
                @(posedge clk);
            end
        end

        write = 0; // Stop writing
    end
endmodule
