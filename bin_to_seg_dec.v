module bin_to_seg_dec (
    input  wire [3:0] bin,
    output reg  [6:0] decoded
);
    always @(*) begin
    case(bin)
        4'h0: decoded = 7'b0111111; // 0
        4'h1: decoded = 7'b0000110; // 1
        4'h2: decoded = 7'b1011011; // 2
        4'h3: decoded = 7'b1001111; // 3
        4'h4: decoded = 7'b1100110; // 4
        4'h5: decoded = 7'b1101101; // 5
        4'h6: decoded = 7'b1111101; // 6
        4'h7: decoded = 7'b0000111; // 7
        4'h8: decoded = 7'b1111111; // 8
        4'h9: decoded = 7'b1101111; // 9
        4'hA: decoded = 7'b1110111; // A
        4'hB: decoded = 7'b1111100; // b
        4'hC: decoded = 7'b0111001; // C
        4'hD: decoded = 7'b1011110; // d
        4'hE: decoded = 7'b1111001; // E
        4'hF: decoded = 7'b1110001; // F
        default: decoded = 7'b0000000;
    endcase
end

endmodule

