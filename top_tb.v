`timescale 1us/1ns

module top_tb ();

 reg  [3:0] grey_tb;
 wire [6:0] seg_tb;

 top DUT (
    .grey_top(grey_tb),
    .seg_top(seg_tb)
 );

initial
    begin

        grey_tb = 4'b0000;
        #10;

        //Test case 1 i will test all zeros -> digit 0
        $display("Test case 1 of grey 0000 (digit 0) is being tested");
        #2;
        grey_tb = 4'b0000;
        #8;
        if(seg_tb == 7'b0111111)
            begin
                $display("Test case 1 of grey 0000 (digit 0) is working well");
            end
        else
            begin
                $display("Test case 1 of grey 0000 (digit 0) Failed");
            end

        //Test case 2 i will test grey 1011 -> bin 1101 -> digit d
        $display("Test case 2 of grey 1011 (digit d) is being tested");
        #2;
        grey_tb = 4'b1011;
        #8;
        if(seg_tb == 7'b1011110)
            begin
                $display("Test case 2 of grey 1011 (digit d) is working well");
            end
        else
            begin
                $display("Test case 2 of grey 1011 (digit d) Failed");
            end

        //Test case 3 i will test grey 1000 (MSB only) -> bin 1111 -> digit F
        $display("Test case 3 of grey 1000 (digit F) is being tested");
        #2;
        grey_tb = 4'b1000;
        #8;
        if(seg_tb == 7'b1110001)
            begin
                $display("Test case 3 of grey 1000 (digit F) is working well");
            end
        else
            begin
                $display("Test case 3 of grey 1000 (digit F) Failed");
            end

        //Test case 4 i will test grey 0101 -> bin 0110 -> digit 6
        $display("Test case 4 of grey 0101 (digit 6) is being tested");
        #2;
        grey_tb = 4'b0101;
        #8;
        if(seg_tb == 7'b1111101)
            begin
                $display("Test case 4 of grey 0101 (digit 6) is working well");
            end
        else
            begin
                $display("Test case 4 of grey 0101 (digit 6) Failed");
            end

        //Test case 5 i will test all ones -> bin 1010 -> digit A
        $display("Test case 5 of grey 1111 (digit A) is being tested");
        #2;
        grey_tb = 4'b1111;
        #8;
        if(seg_tb == 7'b1110111)
            begin
                $display("Test case 5 of grey 1111 (digit A) is working well");
            end
        else
            begin
                $display("Test case 5 of grey 1111 (digit A) Failed");
            end

        //Test case 6 i will test grey 0011 -> bin 0010 -> digit 2
        $display("Test case 6 of grey 0011 (digit 2) is being tested");
        #2;
        grey_tb = 4'b0011;
        #8;
        if(seg_tb == 7'b1011011)
            begin
                $display("Test case 6 of grey 0011 (digit 2) is working well");
            end
        else
            begin
                $display("Test case 6 of grey 0011 (digit 2) Failed");
            end

        //Test case 7 i will test grey 1001 -> bin 1110 -> digit E
        $display("Test case 7 of grey 1001 (digit E) is being tested");
        #2;
        grey_tb = 4'b1001;
        #8;
        if(seg_tb == 7'b1111001)
            begin
                $display("Test case 7 of grey 1001 (digit E) is working well");
            end
        else
            begin
                $display("Test case 7 of grey 1001 (digit E) Failed");
            end

        #100
        $stop;

    end
endmodule