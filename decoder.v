module decoder_2to4(
    input [1:0] select_in, // Select input
    output reg [3:0] data_out // Decoded output
    );
    
    always @* begin
        case(select_in)
            2'b00: data_out = 4'b0001; // Output at index 0
            2'b01: data_out = 4'b0010; // Output at index 1
            2'b10: data_out = 4'b0100; // Output at index 2
            2'b11: data_out = 4'b1000; // Output at index 3
            default: data_out = 4'bxxxx; // Invalid input, outputs all 'x'
        endcase
    end
    
endmodule
