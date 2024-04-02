module encoder_3to1(
    input [2:0] data_in, // Input data
    output [1:0] encoded_out // Encoded output
    );
    
    assign encoded_out[0] = |data_in; // Bitwise OR operation on all input bits
    assign encoded_out[1] = &data_in; // Bitwise AND operation on all input bits
    
endmodule
