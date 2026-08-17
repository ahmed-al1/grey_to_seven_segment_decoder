module grey_to_bin (
    input wire [3:0] grey,
    output reg [3:0] bin

);
integer  i;
always @(*) 
    begin
        bin[3] = grey[3];
        for (i = 2; i >= 0; i = i - 1)
            bin[i] = bin[i+1] ^ grey[i];
    end



endmodule