`timescale 1ns/1ps
module tb_vending_machine;
    reg Clk, nrst, p1, p5, item3p, item2p;
    wire change, disp;

    vending_machine UUT(Clk, nrst, p1, p5, item3p, item2p, change, disp);
    initial begin
        Clk = 1'b0;
    end

    always
        #5  Clk = ~Clk;

    initial begin
        nrst = 1'b1;
        #6
        nrst = 1'b0;
    end

    initial begin
        $dumpfile("vending_machine.vpd");
        $dumpvars;
    end

    initial begin
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        p1 = 1'b0; p5 = 1'b1; item3p = 1'b1; item2p = 1'b0;
        #10
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        p1 = 1'b0; p5 = 1'b1; item3p = 1'b0; item2p = 1'b1;
        #10
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #10
        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b1;
        #10

        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #10
        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #10
        p1 = 1'b1; p5 = 1'b0; item3p = 1'b1; item2p = 1'b0;
        #10

        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b1; item3p = 1'b1; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b1; item3p = 1'b1; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        p1 = 1'b1; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b1; item3p = 1'b0; item2p = 1'b1;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7
        p1 = 1'b0; p5 = 1'b0; item3p = 1'b0; item2p = 1'b0;
        #7

        $finish;
    end
endmodule