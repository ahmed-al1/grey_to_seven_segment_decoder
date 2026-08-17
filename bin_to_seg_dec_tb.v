`timescale 1us/1ns

module bin_to_seg_dec_tb ();

 reg  [3:0] bin_tb;
 wire [6:0] decoded_tb;

 bin_to_seg_dec DUT (
    .bin(bin_tb),
    .decoded(decoded_tb)
 );

initial
    begin

        bin_tb = 4'h0;
        #10;

        //Test case 1 i will test digit 0
        $display("Test case 1 of digit 0 is being tested");
        #2;
        bin_tb = 4'h0;
        #8;
        if(decoded_tb == 7'b0111111)
            begin
                $display("Test case 1 of digit 0 is working well");
            end
        else
            begin
                $display("Test case 1 of digit 0 Failed");
            end

        //Test case 2 i will test digit 1
        $display("Test case 2 of digit 1 is being tested");
        #2;
        bin_tb = 4'h1;
        #8;
        if(decoded_tb == 7'b0000110)
            begin
                $display("Test case 2 of digit 1 is working well");
            end
        else
            begin
                $display("Test case 2 of digit 1 Failed");
            end

        //Test case 3 i will test digit 5
        $display("Test case 3 of digit 5 is being tested");
        #2;
        bin_tb = 4'h5;
        #8;
        if(decoded_tb == 7'b1101101)
            begin
                $display("Test case 3 of digit 5 is working well");
            end
        else
            begin
                $display("Test case 3 of digit 5 Failed");
            end

        //Test case 4 i will test digit 8 (all segments on)
        $display("Test case 4 of digit 8 is being tested");
        #2;
        bin_tb = 4'h8;
        #8;
        if(decoded_tb == 7'b1111111)
            begin
                $display("Test case 4 of digit 8 is working well");
            end
        else
            begin
                $display("Test case 4 of digit 8 Failed");
            end

        //Test case 5 i will test digit 9
        $display("Test case 5 of digit 9 is being tested");
        #2;
        bin_tb = 4'h9;
        #8;
        if(decoded_tb == 7'b1101111)
            begin
                $display("Test case 5 of digit 9 is working well");
            end
        else
            begin
                $display("Test case 5 of digit 9 Failed");
            end

        //Test case 6 i will test letter A
        $display("Test case 6 of letter A is being tested");
        #2;
        bin_tb = 4'hA;
        #8;
        if(decoded_tb == 7'b1110111)
            begin
                $display("Test case 6 of letter A is working well");
            end
        else
            begin
                $display("Test case 6 of letter A Failed");
            end

        //Test case 7 i will test letter C
        $display("Test case 7 of letter C is being tested");
        #2;
        bin_tb = 4'hC;
        #8;
        if(decoded_tb == 7'b0111001)
            begin
                $display("Test case 7 of letter C is working well");
            end
        else
            begin
                $display("Test case 7 of letter C Failed");
            end

        //Test case 8 i will test letter F edge case (max value)
        $display("Test case 8 of letter F is being tested");
        #2;
        bin_tb = 4'hF;
        #8;
        if(decoded_tb == 7'b1110001)
            begin
                $display("Test case 8 of letter F is working well");
            end
        else
            begin
                $display("Test case 8 of letter F Failed");
            end

        #100
        $stop;

    end
endmodule