`timescale 1us/1ns

module grey_to_bin_tb ();

 reg  [3:0] grey_tb;
 wire [3:0] bin_tb;

 grey_to_bin DUT (
    .grey(grey_tb),
    .bin(bin_tb)
 );

initial
    begin

        grey_tb = 4'b0000;
        #10;

        //Test case 1 i will test all zeros
        $display("Test case 1 of all-zero grey code is being tested");
        #2;
        grey_tb = 4'b0000;
        #8;
        if(bin_tb == 4'b0000)
            begin
                $display("Test case 1 of all-zero grey code is working well");
            end
        else
            begin
                $display("Test case 1 of all-zero grey code Failed");
            end

        //Test case 2 i will test grey 1011
        $display("Test case 2 of grey 1011 is being tested");
        #2;
        grey_tb = 4'b1011;
        #8;
        if(bin_tb == 4'b1101)
            begin
                $display("Test case 2 of grey 1011 is working well");
            end
        else
            begin
                $display("Test case 2 of grey 1011 Failed");
            end

        //Test case 3 i will test grey 1000 (MSB only set)
        $display("Test case 3 of grey 1000 is being tested");
        #2;
        grey_tb = 4'b1000;
        #8;
        if(bin_tb == 4'b1111)
            begin
                $display("Test case 3 of grey 1000 is working well");
            end
        else
            begin
                $display("Test case 3 of grey 1000 Failed");
            end

        //Test case 4 i will test grey 0101
        $display("Test case 4 of grey 0101 is being tested");
        #2;
        grey_tb = 4'b0101;
        #8;
        if(bin_tb == 4'b0110)
            begin
                $display("Test case 4 of grey 0101 is working well");
            end
        else
            begin
                $display("Test case 4 of grey 0101 Failed");
            end

        //Test case 5 i will test all ones edge case
        $display("Test case 5 of all-ones grey code is being tested");
        #2;
        grey_tb = 4'b1111;
        #8;
        if(bin_tb == 4'b1010)
            begin
                $display("Test case 5 of all-ones grey code is working well");
            end
        else
            begin
                $display("Test case 5 of all-ones grey code Failed");
            end

        #100
        $stop;

    end
endmodule