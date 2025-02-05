module lab3task(output logic x, y,
                input  logic a, b,
                input  logic c
                );  
    logic or_out, nand_out, xor_out;                

    assign or_out   = a | b;             // =>OR gate
    assign nand_out = ~(a & b);          // =>NAND gate
    assign xor_out  = nand_out ^ or_out; // =>XOR gate 
    assign x        = (~c) ^ or_out;     // =>XOR operation with inverted c
    assign y        = xor_out & or_out;  // =>AND operation   
    
endmodule  
