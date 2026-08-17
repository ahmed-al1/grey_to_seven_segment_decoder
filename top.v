module top (
    input wire [3:0] grey_top,
    output wire[6:0] seg_top
);
    wire [3:0] bin_top;
    
    grey_to_bin uut1 (.grey(grey_top) ,.bin(bin_top));
    bin_to_seg_dec uut2 (.bin(bin_top) ,.decoded(seg_top));
endmodule