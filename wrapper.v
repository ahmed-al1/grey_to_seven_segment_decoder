module wrapper(
    input  wire [3:0] grey_inv,
    output reg  [6:0] decoded_inv
);

    reg  [3:0] grey_w;
    wire [6:0] decoded_w;

    always @(*) 
        begin
            grey_w      = ~grey_inv;
            decoded_inv = ~decoded_w;
        end 

    top DUT (.grey_top(grey_w), .seg_top(decoded_w));

endmodule